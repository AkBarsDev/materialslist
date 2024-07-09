namespace B2H.MaterialsList.API.DataTransfer.Dto
{
	public class CreateUserDto
	{
		public string UserName { get; set; }
		public string FirstName { get; set; }
		public string LastName { get; set; }
		public string? MiddleName { get; set; }
		public string Email { get; set; }
		public string Password { get; set; }
	}
}
