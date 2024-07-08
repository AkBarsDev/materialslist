using B2H.MaterialsList.Core.Models;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace B2H.MaterialsList.Infrastructure.ApprovalManagement
{
	public class LoginService : SignInManager<B2HUser>, ILoginService
	{
		public LoginService(UserManager<B2HUser> userManager,
			IHttpContextAccessor contextAccessor,
			IUserClaimsPrincipalFactory<B2HUser> claimsFactory,
			IOptions<IdentityOptions> optionsAccessor,
			ILogger<SignInManager<B2HUser>> logger, IAuthenticationSchemeProvider schemes)
			: base(userManager, contextAccessor, claimsFactory, optionsAccessor, logger, schemes)
		{ }
		public async Task<SignInResult> SignInAsync(LoginModel model)
		{
			var result = await PasswordSignInAsync(model.Email, model.Password, model.IsPersistent, true);

			return result;
		}
	}
	public interface ILoginService
	{
		Task<SignInResult> SignInAsync(LoginModel model);
	}
	public class LoginModel
	{
		public string Email { get; set; }
		public string Password { get; set; }
		public bool IsPersistent { get; set; }
	}
	public class AuthRequest
	{
		public string UserName { get; set; }
		public string Password { get; set; }
		public string Email { get; set; }
	}
}
