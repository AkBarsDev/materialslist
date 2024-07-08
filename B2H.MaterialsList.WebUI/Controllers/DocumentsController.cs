using Microsoft.AspNetCore.Mvc;

namespace B2H.MaterialsList.WebUI.Controllers
{
	public class DocumentsController : Controller
	{
		public IActionResult Documents()
		{
			return View();
		}
	}
}
