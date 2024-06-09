using B2H.MaterialsList.Core;
using Microsoft.AspNetCore.Identity;
namespace B2H.MaterialsList.API.Data
{
    public class User : IdentityUser<int>
    {
        public User() 
        {
            SecurityStamp = Guid.NewGuid().ToString();
        }
        public User(string userName) : this()
        {
            UserName = userName;
        }
    }
}
