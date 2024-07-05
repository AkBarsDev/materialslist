using Microsoft.AspNetCore.Identity;

namespace B2H.MaterialsList.Core.Models
{
	public class B2HUser : IdentityUser
	{ 
		public virtual ICollection<B2HUserClaim> Claims { get; set; }
		public virtual ICollection<B2HUserLogin> Logins { get; set; }
		public virtual ICollection<B2HUserToken> Tokens { get; set; }
		public virtual ICollection<B2HUserRole> UserRoles { get; set; }
	}

	public class B2HRole : IdentityRole
	{
		public virtual ICollection<B2HUserRole> UserRoles { get; set; }
		public virtual ICollection<B2HRoleClaim> RoleClaims { get; set; }
	}

	public class B2HUserRole : IdentityUserRole<string>
	{
		public virtual B2HUser User { get; set; }
		public virtual B2HRole Role { get; set; }
	}

	public class B2HUserClaim : IdentityUserClaim<string>
	{
		public virtual B2HUser User { get; set; }
	}

	public class B2HUserLogin : IdentityUserLogin<string>
	{
		public virtual B2HUser User { get; set; }
	}

	public class B2HRoleClaim : IdentityRoleClaim<string>
	{
		public virtual B2HRole Role { get; set; }
	}

	public class B2HUserToken : IdentityUserToken<string>
	{
		public virtual B2HUser User { get; set; }
	}
}
