using Microsoft.AspNetCore.Mvc;

namespace MaterialsList.Frontend.Controllers
{
	public class KnowledgeBaseController : Controller
	{
		public async Task<IActionResult> KnowledgeBase()
		{
			return View();
		}

		public async Task<IActionResult> TopicPage()
		{
			return View();
		}
	}
}