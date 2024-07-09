namespace B2H.MaterialsList.API.DataTransfer.Dto
{
    public partial class AuthUserDto
    {
		public AuthUserDto(string guId, string userName, string firstName, string lastName, string? middleName, string email, string role, string accessToken)
		{
			GuId = guId;
			UserName = userName;
			FirstName = firstName;
			LastName = lastName;
			MiddleName = middleName;
			Email = email;
			Role = role;
			AccessToken = accessToken;
		}

		public string GuId { get; set; }
        public string UserName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string? MiddleName { get; set; }
        public string Email { get; set; }
        public string Role { get; set; }
        public string AccessToken { get; set; }
    }
	public partial class UserDto
	{
		public UserDto(string guId, string userName, string firstName, string lastName, string? middleName, string email, string role, bool isActive)
		{
			GuId = guId;
			UserName = userName;
			FirstName = firstName;
			LastName = lastName;
			MiddleName = middleName;
			Email = email;
			Role = role;
			IsActive = isActive;
		}

		public string GuId { get; set; }
		public string UserName { get; set; }
		public string FirstName { get; set; }
		public string LastName { get; set; }
		public string? MiddleName { get; set; }
		public string Email { get; set; }
		public string Role { get; set; }
		public bool IsActive { get; set; }
	}
}
