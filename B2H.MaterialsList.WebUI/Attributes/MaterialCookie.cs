using B2H.MaterialsList.API.DataTransfer.Dto;

namespace materialslist_ui.Attributes
{
	public class MaterialCookie
	{
		public static List<IDictionary<string, string>> RecentViewBag(HttpContext httpContext,
			List<IDictionary<string, string>> matLinks,
			MaterialDto materialData,
			string request,
			IDictionary<string, string> requestsCookie
			)
		{
			if(request.Contains("search"))
			{
				int i = request.IndexOf('&');
				request = request.Substring(0,i);
			}
			if (!(httpContext.Request.Cookies.ContainsKey("materials_links")))
			{
				httpContext.Response.Cookies.Append("materials_links", request);
				requestsCookie.Add("link", httpContext.Request.Cookies["materials_links"]);

			}
			if (!(httpContext.Request.Cookies.ContainsKey("materials_titles")))
			{
				httpContext.Response.Cookies.Append("materials_titles", materialData.Name);
				requestsCookie.Add("titles", httpContext.Request.Cookies["materials_titles"]);

				matLinks.Add(requestsCookie);

			}
			else if (httpContext.Request.Cookies.ContainsKey("materials_titles") && httpContext.Request.Cookies.ContainsKey("materials_titles"))
			{
				string links = httpContext.Request.Cookies["materials_links"] + "\r\n" + request;
				string titles = httpContext.Request.Cookies["materials_titles"] + "\r\n" + materialData.Name;
				List<string> linkList = links.Split("\r\n").Reverse().Distinct().Reverse().ToList();
				List<string> titleList = titles.Split("\r\n").Reverse().Distinct().Reverse().ToList();
				if (linkList.Count() > 20 && titleList.Count() > 20)
				{
					linkList.RemoveAt(0);
					titleList.RemoveAt(0);
				}
				links = String.Join("\r\n", linkList);
				titles = String.Join("\r\n", titleList);

				httpContext.Response.Cookies.Delete("materials_links");
				httpContext.Response.Cookies.Delete("materials_titles");
				httpContext.Response.Cookies.Append("materials_links", links);
				httpContext.Response.Cookies.Append("materials_titles", titles);


				for (int i = 0; i < httpContext.Request.Cookies["materials_links"].Split("\r\n").Count(); i++)
				{
					requestsCookie = new Dictionary<string, string>
				{
					{ "link", httpContext.Request.Cookies["materials_links"].Split("\r\n")[i] },
					{ "titles", httpContext.Request.Cookies["materials_titles"].Split("\r\n")[i] }
				};

					matLinks.Add(requestsCookie);

				}
			}
			matLinks.Reverse();
			return matLinks;
		}
	}
}
