using B2H.MaterialsList.API.DataTransfer.Dto;
using MaterialsList.Frontend.Models.Views;
using MaterialsList.Frontend.Services.IServices;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Mvc;
using Microsoft.VisualStudio.Web.CodeGenerators.Mvc.Templates.BlazorIdentity.Pages;
using System.Security.Claims;
using System.Text.Json;
using Serilog;
using Newtonsoft.Json;
using System.Data;

namespace materialslist_ui.Controllers
{
	public class AccountController(IAuthService authService) : Controller
	{
        readonly private IAuthService AuthService = authService;
		[HttpGet]
		public IActionResult Login()
		{
			return View();
		}
		[HttpPost]
		[ValidateAntiForgeryToken]
		public async Task<IActionResult> Login(LoginModel model)
		{
            if (ModelState.IsValid)
            {
				try
				{
					ResponseDto response = await AuthService.Authenticate(model.Email, model.Password);
					if (response.IsSuccess != false)
					{
						var auth = JsonConvert.DeserializeObject<AuthUserDto>(Convert.ToString(response.Result));
						await Authenticate(auth); // аутентификация
						return RedirectToAction("Index", "Home");
					}
					ModelState.AddModelError("", "Некорректные логин и(или) пароль");
				}
				catch(Exception ex) when (ModelState.IsValid)
				{
					ModelState.AddModelError("", ex.Message);
				}
			}
            return View(model);
        }

        private async Task Authenticate(AuthUserDto user)
        {
            try
            {
				// создаем один claim
				var claims = new List<Claim>
				{
					new Claim(ClaimTypes.Name, user.UserName),
					new Claim(ClaimTypes.NameIdentifier, user.GuId),
					new Claim(ClaimTypes.Role, user.Role),
					new Claim("AccessToken", user.AccessToken.Replace("\"",""))
				};
				// создаем объект ClaimsIdentity
				ClaimsIdentity id = new ClaimsIdentity(claims, "cookie", ClaimsIdentity.DefaultNameClaimType, ClaimsIdentity.DefaultRoleClaimType);
				// установка аутентификационных куки
				await HttpContext.SignInAsync("cookie", new ClaimsPrincipal(id));
			}
			catch(Exception ex)
			{
				Log.Error(ex.Message);
				throw new Exception("Ошибка Аутификации");
			}
            
        }

        public async Task<IActionResult> Logout()
        {
            await HttpContext.SignOutAsync("cookie");
            return RedirectToAction("Login", "Account");
        }
    }
}
