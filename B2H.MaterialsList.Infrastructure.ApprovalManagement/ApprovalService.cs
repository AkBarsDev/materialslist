using Azure.Core;
using B2H.MaterialsList.API.DataTransfer.Dto;
using B2H.MaterialsList.API.DataTransfer.Request;
using B2H.MaterialsList.Core.Mapper.Externsions;
using B2H.MaterialsList.Core.Models;
using B2H.MaterialsList.Core.Service;
using B2H.MaterialsList.Infrastructure.ApprovalManagement.Interface;
using B2H.MaterialsList.Infrastructure.Repository;
using B2H.MaterialsList.Infrastructure.Repository.Interfaces;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace B2H.MaterialsList.Infrastructure.ApprovalManagement
{
	public class ApprovalService : IApprovalService
	{
		private readonly MaterialsListContext _context;
		private readonly ILogger<ApprovalService> _logger;

		public ApprovalService(MaterialsListContext context, ILogger<ApprovalService> logger)
		{
			this._context = context;
			_logger = logger;
		}

		public async Task<IEnumerable<ApprovalDto>> GetApprovalsProcess(ApprovalPayloadRequest request)
		{
			var query = _context.Approvals
				.Include(a => a.ApprovalStages)
				.Include(a => a.ApprovalHistory)
				.Include(a => a.Material)
				.AsQueryable();

			// Фильтрация
			if (request.filters.dataFrom.HasValue)
				query = query.Where(a => a.CreatedAt >= request.filters.dataFrom.Value);
			if (request.filters.dataTo.HasValue)
				query = query.Where(a => a.CreatedAt <= request.filters.dataTo.Value);
			if (!string.IsNullOrEmpty(request.filters.search))
				query = query.Where(a => a.Material.Name.Contains(request.filters.search));
			if (request.filters.categoryId != Guid.Empty)
				query = query.Where(a => a.Material.CategoryId == request.filters.categoryId);
			if (request.filters.userId != Guid.Empty)
				query = query.Where(a => a.Material.UserId == request.filters.userId);
			if (request.filters.approvalStatusDto != null)
				query = query.Where(a => a.Status == (ApprovalStatus)Enum.Parse(typeof(ApprovalStatus), request.filters.approvalStatusDto.ToString()));

			// Сортировка
			if (!string.IsNullOrEmpty(request.sort.order))
			{
				query = request.sort.order.ToLower() switch
				{
					"asc" => query.OrderBy(a => a.CreatedAt),
					"desc" => query.OrderByDescending(a => a.CreatedAt),
					_ => query
				};
			}

			// Пагинация
			var total = await query.CountAsync();
			var approvals = await query
				.Skip(request.pagination.offset)
				.Take(request.pagination.limit)
				.ToListAsync();
			return approvals.Select(x => x.ToDto());
		}
		public async Task<ApprovalDto> GetApprovalProcess(Guid materialId)
		{
			var approval = await _context.Approvals
				.Include(a => a.ApprovalStages)
				.Include(a => a.ApprovalHistory)
				.FirstOrDefaultAsync(a => a.MaterialId == materialId);
			return approval.ToDto();
		}
		public async Task<IEnumerable<ApprovalDto>> GetApprovalsProcess()
		{
			var approvals = await _context.Approvals
				.Include(a => a.ApprovalStages)
				.Include(a => a.ApprovalHistory)
				.ToListAsync();
			return approvals.Select(x => x.ToDto());
		}

		public async Task<ApprovalDto> Approve(ProcessApprovalRequest request)
		{
			var approval = await _context.Approvals
			.Include(a => a.ApprovalStages)
			.FirstOrDefaultAsync(a => a.ApprovalId == request.approvalId);

			var currentStage = approval.ApprovalStages.FirstOrDefault(s => s.Id == approval.CurrentStageId);

			// Обработка текущего этапа
			currentStage.Status = ApprovalStageStatus.Approved;
			currentStage.UserId = request.userId;

			// Переход к следующему этапу
			if (currentStage.NextStageId.HasValue)
			{
				var nextStage = approval.ApprovalStages.FirstOrDefault(s => s.Id == currentStage.NextStageId.Value);
				approval.CurrentStageId = nextStage.Id;
				nextStage.Status = ApprovalStageStatus.Pending;
			}
			else
			{
				// Если это последний этап, меняем статус на "Опубликован"
				approval.Status = ApprovalStatus.Published;
			}

			await _context.SaveChangesAsync();
			AddApprovalHistory(request.approvalId, request.userId, ApprovalActionType.Approved, null);
			return approval.ToDto();
		}

		public async Task<ApprovalDto> Reject(ProcessApprovalRequest request, string reason)
		{
			var approval = await _context.Approvals
			.Include(a => a.ApprovalStages)
			.FirstOrDefaultAsync(a => a.ApprovalId == request.approvalId);

			var currentStage = approval.ApprovalStages.FirstOrDefault(s => s.Id == approval.CurrentStageId);

			// Отклонение текущего этапа
			currentStage.Status = ApprovalStageStatus.Rejected;
			currentStage.UserId = request.userId;
			// Изменение статуса одобрения
			approval.Status = ApprovalStatus.Rejected;
			await _context.SaveChangesAsync();
			await AddApprovalHistory(approval.ApprovalId, request.userId, ApprovalActionType.Rejected, reason);
			return approval.ToDto();
		}

		public async Task<ApprovalDto> Publish(Guid approvalId)
		{
			var approval = await _context.Approvals
			 .Include(a => a.ApprovalStages)
			 .FirstOrDefaultAsync(a => a.ApprovalId == approvalId);

			// Изменение статуса одобрения на "Опубликован"
			approval.Status = ApprovalStatus.Published;

			await _context.SaveChangesAsync();
			return approval.ToDto();
		}

		public async Task<ApprovalDto> PendingApproval(ProcessApprovalRequest request)
		{
			var approval = await _context.Approvals
				.Include(a => a.ApprovalStages)
				.FirstOrDefaultAsync(a => a.ApprovalId == request.approvalId);

			var currentStage = approval.ApprovalStages.FirstOrDefault(s => s.Id == approval.CurrentStageId);

			// Возврат текущего этапа в статус "Ожидание"
			currentStage.Status = ApprovalStageStatus.Pending;
			currentStage.UserId = request.userId;

			// Добавление записи в историю
			var history = new ApprovalHistory
			{
				ApprovalHistoryId = Guid.NewGuid(),
				ApprovalId = approval.ApprovalId,
				ActionType = ApprovalActionType.Pending,
				UserId = request.userId,
				Reason = "Возврат на доработку",
				Timestamp = DateTime.UtcNow
			};
			_context.ApprovalsHistory.Add(history);

			// Изменение статуса одобрения на "Ожидание"
			approval.Status = ApprovalStatus.Pending;

			await _context.SaveChangesAsync();
			return approval.ToDto();
		}

		private async Task AddApprovalHistory(Guid approvalId, Guid userId, ApprovalActionType actionType, string? reason)
		{
			var history = new ApprovalHistory
			{
				ApprovalHistoryId = Guid.NewGuid(),
				ApprovalId = approvalId,
				ActionType = actionType,
				UserId = userId,
				Reason = reason,
				Timestamp = DateTime.UtcNow
			};
			_context.ApprovalsHistory.Add(history);
			await _context.SaveChangesAsync();
		}

		public async Task<ApprovalDto> SendForApproval(SubmitApprovalRequest request)
		{
			var material = _context.Materials.Find(request.materialId);

			var approval = _context.Approvals.FirstOrDefault(x => x.MaterialId == request.materialId, null);
			// Create the initial approval process
			if (approval == null)
			{
				approval = new Approval
				{
					ApprovalId = Guid.NewGuid(),
					MaterialId = material.MaterialId,
					CurrentStageId = Guid.NewGuid(),
					Status = ApprovalStatus.Pending
				};
				_context.Approvals.Add(approval);
			}

			// Create the first approval stage (Resource Department)
			var resourceStage = new ApprovalStage
			{
				Id = approval.CurrentStageId.Value,
				ApprovalId = approval.ApprovalId,
				StageNumber = 1,
				Description = "Согласование ресурсным отделом",
				Status = ApprovalStageStatus.Pending,
				UserId = null,
				PreviousStageId = null,
				NextStageId = Guid.NewGuid()
			};
			_context.ApprovalStages.Add(resourceStage);

			// Create the second approval stage (TIM Department)
			var timStage = new ApprovalStage
			{
				Id = resourceStage.NextStageId.Value, // Создаем новый GUID для nextStageId
				ApprovalId = approval.ApprovalId,
				StageNumber = 2,
				Description = "Согласование отделом ТИМ",
				Status = ApprovalStageStatus.Pending,
				UserId = null,
				PreviousStageId = resourceStage.Id,
				NextStageId = Guid.NewGuid()
			};
			_context.ApprovalStages.Add(timStage);

			// Create the third approval stage (Publish)
			var publishStage = new ApprovalStage
			{
				Id = timStage.NextStageId.Value, // Используем nextStageId предыдущего этапа
				ApprovalId = approval.ApprovalId,
				StageNumber = 3,
				Description = "Ожидание публикации",
				Status = ApprovalStageStatus.Pending,
				UserId = null,
				PreviousStageId = timStage.Id,
				NextStageId = null
			};
			_context.ApprovalStages.Add(publishStage);

			// Update the material status
			material.Status = MaterialStatus.PendingApproval;
			material.UpdateAt = DateTime.UtcNow;
			await _context.SaveChangesAsync();
			await AddApprovalHistory(approval.ApprovalId, request.userId, ApprovalActionType.Rejected, "Начато согласование.");
			return approval.ToDto();
		}

	}
}
