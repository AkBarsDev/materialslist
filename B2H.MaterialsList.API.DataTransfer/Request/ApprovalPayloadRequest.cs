using B2H.MaterialsList.API.DataTransfer.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace B2H.MaterialsList.API.DataTransfer.Request
{
	public class ApprovalPayloadRequest
	{
		public ApprovalFilter filters { get; set; }
		public ApprovalSort sort { get; set; }
		public ApprovalPagination pagination { get; set; }
	}
	public class ApprovalPagination
	{
		public int limit { get; set; }
		public int offset { get; set; }
	}
	public class ApprovalSort
	{
		public string order { get; set; }
	}
	public class ApprovalFilter
	{
		public DateTime? dataFrom { get; set; }
		public DateTime? dataTo { get; set; }
		public string search { get; set; }
		public Guid categoryId { get; set; }
		public string userId { get; set; }
		public ApprovalStatusDto approvalStatusDto { get; set; }
	}
	public class SubmitApprovalRequest
	{
		public string userId { get; set; }
		public Guid materialId { get; set; }
	}
	public class ProcessApprovalRequest
	{
		public string userId { get; set; }
		public Guid approvalId { get; set; }
		public string reason { get; set; }
	}
}
