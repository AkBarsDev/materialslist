namespace B2H.MaterialsList.API.DataTransfer.Dto
{
    public partial class AuthUserDto
    {
        public AuthUserDto( Guid guId, string name, string mail, string role, string accessToken)
        {
            GuId = guId;
            Name = name;
            Mail = mail;
            Role = role;
            AccessToken = accessToken;
        }

        public Guid GuId { get; set; }
        public string Name { get; set; }
        public string Mail { get; set; }
        public string Role { get; set; }
        public string AccessToken { get; set; }
    }
}
