using System.ComponentModel.DataAnnotations;

namespace B2H.MaterialsList.API.DataTransfer.Request
{
	public class RegisterRequest
	{
		[Required]
		[MaxLength(50)]
		public string Username { get; set; }

		[Required]
		[EmailAddress]
		public string Email { get; set; }

		[Required]
		[MaxLength(50)]
		public string FirstName { get; set; }

		[Required]
		[MaxLength(50)]
		public string LastName { get; set; }

		[MaxLength(50)]
		public string? MiddleName { get; set; }

		[Required]
		[MinLength(8)]
		public string Password { get; set; }
	}
}
