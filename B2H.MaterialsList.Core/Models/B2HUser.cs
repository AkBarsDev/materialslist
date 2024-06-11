using Microsoft.AspNetCore.Identity;

namespace B2H.MaterialsList.Core.Models
{
	public class B2HUser : IdentityUser
	{
		public virtual ICollection<ApplicationUserClaim> Claims { get; set; }
		public virtual ICollection<ApplicationUserLogin> Logins { get; set; }
		public virtual ICollection<ApplicationUserToken> Tokens { get; set; }
		public virtual ICollection<ApplicationUserRole> UserRoles { get; set; }
	}

	public class B2HRole : IdentityRole
	{
		public virtual ICollection<ApplicationUserRole> UserRoles { get; set; }
		public virtual ICollection<ApplicationRoleClaim> RoleClaims { get; set; }
	}

	public class ApplicationUserRole : IdentityUserRole<string>
	{
		public virtual B2HUser User { get; set; }
		public virtual B2HRole Role { get; set; }
	}

	public class ApplicationUserClaim : IdentityUserClaim<string>
	{
		public virtual B2HUser User { get; set; }
	}

	public class ApplicationUserLogin : IdentityUserLogin<string>
	{
		public virtual B2HUser User { get; set; }
	}

	public class ApplicationRoleClaim : IdentityRoleClaim<string>
	{
		public virtual B2HRole Role { get; set; }
	}

	public class ApplicationUserToken : IdentityUserToken<string>
	{
		public virtual B2HUser User { get; set; }
	}
}
