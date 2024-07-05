using B2H.MaterialsList.API.DataTransfer.Dto;
using B2H.MaterialsList.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace B2H.MaterialsList.Core.Mapper.Externsions
{
	public static class ApprovalExtensions
	{
		public static Approval ToEntity(this ApprovalDto dto)
		{
			return new Approval
			{
				ApprovalId = dto.ApprovalId,
				MaterialId = dto.MaterialId,
				CurrentStageId = dto.CurrentStageId,
				Status = (ApprovalStatus)Enum.Parse(typeof(ApprovalStatus), dto.Status.ToString()),
				ApprovalStages = dto.ApprovalStages.Select(s => s.ToEntity()).ToList(),
				ApprovalHistory = dto.ApprovalHistory.Select(h => h.ToEntity()).ToList()
			};
		}

		public static ApprovalStage ToEntity(this ApprovalStageDto dto)
		{
			return new ApprovalStage
			{
				Id = dto.Id,
				ApprovalId = dto.ApprovalId,
				StageNumber = dto.StageNumber,
				Description = dto.Description,
				Status = (ApprovalStageStatus)Enum.Parse(typeof(ApprovalStageStatus), dto.Status.ToString()),
				UserId = dto.UserId,
			};
		}

		public static ApprovalHistory ToEntity(this ApprovalHistoryDto dto)
		{
			return new ApprovalHistory
			{
				ApprovalHistoryId = dto.ApprovalHistoryId,
				ApprovalId = dto.ApprovalId,
				ActionType = (ApprovalActionType)Enum.Parse(typeof(ApprovalActionType), dto.ActionType.ToString()),
				UserId = dto.UserId,
				Reason = dto.Reason,
				Timestamp = dto.Timestamp
			};
		}

		public static ApprovalDto ToDto(this Approval entity)
		{
			return new ApprovalDto
			{
				ApprovalId = entity.ApprovalId,
				MaterialId = entity.MaterialId,
				CurrentStageId = entity.CurrentStageId,
				Status = (ApprovalStatusDto)Enum.Parse(typeof(ApprovalStatusDto), entity.Status.ToString()),
				ApprovalStages = entity.ApprovalStages.Select(s => s.ToDto()).ToList(),
				ApprovalHistory = entity.ApprovalHistory.Select(h => h.ToDto()).ToList()
			};
		}

		public static ApprovalStageDto ToDto(this ApprovalStage entity)
		{
			return new ApprovalStageDto
			{
				Id = entity.Id,
				ApprovalId = entity.ApprovalId,
				StageNumber = entity.StageNumber,
				Description = entity.Description,
				Status = (ApprovalStageStatusDto)Enum.Parse(typeof(ApprovalStageStatusDto), entity.Status.ToString()),
				UserId = entity.UserId,
			};
		}

		public static ApprovalHistoryDto ToDto(this ApprovalHistory entity)
		{
			return new ApprovalHistoryDto
			{
				ApprovalHistoryId = entity.ApprovalHistoryId,
				ApprovalId = entity.ApprovalId,
				ActionType = (ApprovalActionTypeDto)Enum.Parse(typeof(ApprovalActionTypeDto), entity.ActionType.ToString()),
				UserId = entity.UserId,
				Reason = entity.Reason,
				Timestamp = entity.Timestamp
			};
		}
	}
}
