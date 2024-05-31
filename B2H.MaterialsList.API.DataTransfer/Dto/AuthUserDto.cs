namespace B2H.MaterialsList.API.DataTransfer.Dto
{
    public partial class AuthUserDto
    {
        public AuthUserDto(Guid GuId, string Name, string Mail, string Role, string AccessToken)
        {
            GuId = GuId;
            Name = Name;
            Mail = Mail;
            Role = Role;
            AccessToken = AccessToken;
        }

        public Guid GuId { get; set; }
        public string Name { get; set; }
        public string Mail { get; set; }
        public string Role { get; set; }
        public string AccessToken { get; set; }
    }
}
