using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace MaterialsList.Frontend.Controllers
{
	public class UserController : Controller
	{
		[Authorize]
		public IActionResult UserPage()
		{

			return View();
		}
		[Authorize]
		public IActionResult UserPageEdit()
		{

			return View();
		}
	}
}
