using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace B2H.MaterialsList.API.DataTransfer.Dto
{
	public partial class ApprovalHistoryDto
	{
		public Guid ApprovalHistoryId { get; set; }
		public Guid ApprovalId { get; set; }
		public ApprovalActionTypeDto ActionType { get; set; }
		public string UserId { get; set; }
		public string Reason { get; set; }
		public DateTime Timestamp { get; set; }
	}
	public partial class ApprovalStageDto
	{
		public Guid Id { get; set; }
		public Guid ApprovalId { get; set; }
		public int StageNumber { get; set; }
		public string? Description { get; set; }
		public ApprovalStageStatusDto Status { get; set; }
		public string? UserId { get; set; }
	}
	public partial class ApprovalDto
	{
		public Guid ApprovalId { get; set; }
		public Guid MaterialId { get; set; }
		public Guid? CurrentStageId { get; set; }
		public ApprovalStatusDto Status { get; set; }
		public ICollection<ApprovalStageDto> ApprovalStages { get; set; }
		public ICollection<ApprovalHistoryDto> ApprovalHistory { get; set; }
	}
	public enum ApprovalStatusDto
	{
		Pending,
		Approved,
		Rejected,
		Published
	}

	public enum ApprovalStageStatusDto
	{
		Pending,
		Approved,
		Rejected
	}

	public enum ApprovalActionTypeDto
	{
		Pending,
		Approved,
		Rejected
	}

}
