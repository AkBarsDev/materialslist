using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace B2H.MaterialsList.Core.Models
{
	public partial class Approval
	{
		[Key]
		public Guid ApprovalId { get; set; }
		public Guid MaterialId { get; set; }
		public Guid? CurrentStageId { get; set; }
		public DateTime CreatedAt { get; set; }
		public ApprovalStatus Status { get; set; }
		public virtual ICollection<ApprovalStage> ApprovalStages { get; set; }
		public virtual ICollection<ApprovalHistory> ApprovalHistory { get; set; }
		public virtual Material Material { get; set; }
	}

	public partial class ApprovalStage
	{
		[Key]
		public Guid Id { get; set; }
		public Guid ApprovalId { get; set; }
		public int StageNumber { get; set; }
		public string? Description { get; set; }
		public ApprovalStageStatus Status { get; set; }
		public string? UserId { get; set; }
		public Guid? PreviousStageId { get; set; }
		public Guid? NextStageId { get; set; }
		public virtual Approval Approval { get; set; }
		public virtual B2HUser? User { get; set; }
	}

	public partial class ApprovalHistory
	{
		[Key]
		public Guid ApprovalHistoryId { get; set; }
		public Guid ApprovalId { get; set; }
		public ApprovalActionType ActionType { get; set; }
		public string UserId { get; set; }
		public string Reason { get; set; }
		public DateTime Timestamp { get; set; }
		public virtual Approval Approval { get; set; }
		public virtual B2HUser User { get; set; }
	}

	public enum ApprovalStatus
	{
		Pending,
		Approved,
		Rejected,
		Published
	}

	public enum ApprovalStageStatus
	{
		Pending,
		Approved,
		Rejected
	}

	public enum ApprovalActionType
	{
		Pending,
		Approved,
		Rejected
	}
}
