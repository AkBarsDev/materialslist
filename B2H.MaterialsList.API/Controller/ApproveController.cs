using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using B2H.MaterialsList.API.DataTransfer.Dto;
using B2H.MaterialsList.API.DataTransfer.Request;
using B2H.MaterialsList.Core.Service;
using B2H.MaterialsList.Core.ApprovalManagement.Interface;
using B2H.MaterialsList.Core.ApprovalManagement;
using B2H.MaterialsList.Infrastructure.ApprovalManagement.Interface;
namespace B2H.MaterialsList.API.Controller
{
	[Route("api/approval")]
	[ApiController]
	public class ApprovalController(IApprovalService approvalService) : ControllerBase
	{
		protected ResponseDto _response { get; set; } = new ResponseDto();
		private readonly IApprovalService _approvalService = approvalService;
		[HttpGet]
		public async Task<object> GetAllApproval()
		{
			try
			{
				var approvals = await _approvalService.GetApprovalsProcess();
				_response.Result = approvals;
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.DisplayMessage = ex.Message.ToString();
			}
			return _response;
		}
		[HttpGet]
		public async Task<object> GetApprovals([FromBody] ApprovalPayloadRequest payload)
		{
			try
			{
				var approvals = await _approvalService.GetApprovalsProcess(payload);
				_response.Result = approvals;
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.DisplayMessage = ex.Message.ToString();
			}
			return _response;
		}
		[HttpGet]
		public async Task<object> GetApprovals(Guid payload)
		{
			try
			{
				var approvals = await _approvalService.GetApprovalProcess(payload);
				_response.Result = approvals;
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.DisplayMessage = ex.Message.ToString();
			}
			return _response;
		}
		[HttpPost("start")]
		public async Task<object> SubmintApprove([FromBody] SubmitApprovalRequest submit)
		{
			try
			{
				var approvals = await _approvalService.SendForApproval(submit);
				_response.Result = approvals;
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.DisplayMessage = ex.Message.ToString();
			}
			return _response;
		}
		[HttpPost("approve")]
		public async Task<object> PostApprove([FromBody] ProcessApprovalRequest request)
		{
			try
			{
				var approvals = await _approvalService.Approve(request);
				_response.Result = approvals;
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.DisplayMessage = ex.Message.ToString();
			}
			return _response;
		}
		[HttpPost("reject")]
		public async Task<object> PostRejected([FromBody] ProcessApprovalRequest request)
		{
			try
			{
				var approvals = await _approvalService.Reject(request);
				_response.Result = approvals;
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.DisplayMessage = ex.Message.ToString();
			}
			return _response;
		}
	}
}
