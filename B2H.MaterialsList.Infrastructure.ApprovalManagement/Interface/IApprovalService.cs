using B2H.MaterialsList.API.DataTransfer.Dto;
using B2H.MaterialsList.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace B2H.MaterialsList.Infrastructure.ApprovalManagement.Interface
{
	public interface IApprovalService
	{
		Task<ApprovalDto> SendForApproval(Guid materialId);
		Task<ApprovalDto> GetApprovalProcess(Guid materialId);
		Task<IEnumerable<ApprovalDto>> GetApprovalsProcess();
		Task<ApprovalDto> Approve(Guid approvalId, Guid userId);
		Task<ApprovalDto> Reject(Guid approvalId, Guid userId, string reason);
		Task<ApprovalDto> Publish(Guid approvalId);
		Task<ApprovalDto> PendingApproval(Guid approvalId, Guid userId);
	}
}
