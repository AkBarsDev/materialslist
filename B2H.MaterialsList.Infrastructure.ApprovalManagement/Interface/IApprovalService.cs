using B2H.MaterialsList.API.DataTransfer.Dto;
using B2H.MaterialsList.API.DataTransfer.Request;
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
		Task<ApprovalDto> SendForApproval(SubmitApprovalRequest request);
		Task<ApprovalDto> GetApprovalProcess(Guid materialId);
		Task<IEnumerable<ApprovalDto>> GetApprovalsProcess();
		Task<IEnumerable<ApprovalDto>> GetApprovalsProcess(ApprovalPayloadRequest approvalStatus);
		Task<ApprovalDto> Approve(ProcessApprovalRequest request);
		Task<ApprovalDto> Reject(ProcessApprovalRequest request);
		Task<ApprovalDto> Publish(Guid approvalId);
		Task<ApprovalDto> PendingApproval(ProcessApprovalRequest request);
	}
}
