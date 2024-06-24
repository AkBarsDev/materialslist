using Microsoft.AspNetCore.Mvc;
using MaterialsList.Frontend.Models.Dto;
using MaterialsList.Frontend.Models;
using MaterialsList.Frontend.Services.IServices;
using Newtonsoft.Json;
using MaterialsList.Frontend;
using System.Text;
using Microsoft.AspNetCore.Http;
using System.Net.Http;
using Microsoft.DotNet.Scaffolding.Shared.Messaging;
using System.Threading.Tasks;
using System.Collections.Generic;
using Microsoft.AspNetCore.Authorization;


namespace materialslist_ui.Controllers
{
	public class HomeController : Controller
	{
		private readonly ILogger<HomeController> _logger;
		private readonly IMaterialService _materialService;
		private readonly Guid mainParentId = Guid.Parse("7c20c387-a301-4e2b-6f85-08dc45e23f9f");
		public HomeController(ILogger<HomeController> logger,
			IMaterialService materialService)
		{
			_logger = logger;
			_materialService = materialService;
		}

		public async Task<IActionResult> Index()
		{
			CategoryDto categories = new();
			try {
				var response = await _materialService.GetCategoryByIdAsync<ResponseDto>(mainParentId);
				if (response != null && response.IsSuccess)
					categories = JsonConvert.DeserializeObject<CategoryDto>(Convert.ToString(response.Result));
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.ToString());
			}
			return View(categories.Children);
		}

		public async Task<IActionResult> Main()
		{
			return View();
		}


		public async Task<IActionResult> Categories(Guid parentId, string? searchTitle, string? searchRequest)
		{

			this.ViewBag.SearchTitle = "";
			this.ViewBag.SearchRequest = "";
			if (searchTitle != null && searchRequest != null) 
			{ 
				this.ViewBag.SearchTitle = searchTitle;
				this.ViewBag.SearchRequest = searchRequest; 
			}
			CategoryDto categories = new();
			List<ShortCategoryDto> categoryBC = new();
			ViewModel<List<ShortCategoryDto>, ShortCategoryDto>  viewModel = new ViewModel<List<ShortCategoryDto>,ShortCategoryDto>();
			try {
				var response = await _materialService.GetCategoryByIdAsync<ResponseDto>(parentId);
				if (response != null && response.IsSuccess)
					categories = JsonConvert.DeserializeObject<CategoryDto>(Convert.ToString(response.Result));
				viewModel.ViewObject = categories.Children.ToList();
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.ToString());//выводить ошибку нормально
			}
			try
			{
				var responseBC = await _materialService.BreadcrumbCategoryAsync<ResponseDto>(categories.CategoryId);
				if (responseBC != null && responseBC.IsSuccess)
					categoryBC = JsonConvert.DeserializeObject<List<ShortCategoryDto>>(Convert.ToString(responseBC.Result));
				categoryBC.Reverse();
				viewModel.ViewBreadCrumbs = categoryBC;
			}
			catch (Exception ex2)
			{
				Console.WriteLine(ex2.ToString());
			}
			return View(viewModel); 
		}

		public async Task<ActionResult> SearchMaterial(string request)
		{
			List<ShortMaterialDto> list = new();
			try {
				var response = await _materialService.SearchMaterialAsync<ResponseDto>(request);
				if (response != null && response.IsSuccess)
					list = JsonConvert.DeserializeObject<List<ShortMaterialDto>>(Convert.ToString(response.Result));
				string queryString = "/Home/SearchMaterial?request=" + request;
				this.ViewBag.SearchRequest = queryString;
				this.ViewBag.SearchTitle = request;
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.ToString());
			}
			if (list != null && list.Count == 0) list = null;
			return View(list);
		}

		public async Task<ActionResult> SearchCategory(string request)
		{
			List<ShortCategoryDto> listCat = new();
			try
			{
				var response = await _materialService.SearchCategoryAsync<ResponseDto>(request);
				if (response != null && response.IsSuccess)
					listCat = JsonConvert.DeserializeObject<List<ShortCategoryDto>>(Convert.ToString(response.Result));
				string queryString = "/Home/SearchCategory?request=" + request;
				this.ViewBag.SearchRequest = queryString;
				this.ViewBag.SearchTitle = request;
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.ToString());
			}
			if (listCat != null && listCat.Count == 0) listCat = null;
			return View(listCat);
		}

		public async Task<ActionResult> Materials(Guid categoryId, string? searchTitle, string? searchRequest)
		{
			this.ViewBag.SearchTitle = "";
			this.ViewBag.SearchRequest = "";
			if (searchTitle != null && searchRequest != null)
			{
				this.ViewBag.SearchTitle = searchTitle;
				this.ViewBag.SearchRequest = searchRequest;
			}
			List<ShortCategoryDto> categoryBC = new();
			ViewModel<List<ShortMaterialDto>,ShortCategoryDto> viewModel = new ViewModel<List<ShortMaterialDto>,ShortCategoryDto>();
			CategoryDto categories = new();
			try
			{
				var response = await _materialService.GetCategoryByIdAsync<ResponseDto>(categoryId);
				if (response != null && response.IsSuccess)
				{
					categories = JsonConvert.DeserializeObject<CategoryDto>(Convert.ToString(response.Result));
					viewModel.ViewObject = categories.Materials.ToList();
				}
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.ToString());
			}
			try
			{
				var responseBC = await _materialService.BreadcrumbCategoryAsync<ResponseDto>(categories.CategoryId);
				if (responseBC != null && responseBC.IsSuccess)
					categoryBC = JsonConvert.DeserializeObject<List<ShortCategoryDto>>(Convert.ToString(responseBC.Result));
				categoryBC.Reverse();
				viewModel.ViewBreadCrumbs = categoryBC;
			}
			catch (Exception ex2)
			{
				Console.WriteLine(ex2.ToString());
			}
			return View(viewModel);
		}

		public async Task<IActionResult> Download(string Url) 
		{
			try
			{
				string apiUrl = SD.FilesAPIBase + Url;
				using (HttpClient client = new HttpClient())
				{
					HttpResponseMessage response = await client.GetAsync(apiUrl);
					response.EnsureSuccessStatusCode();
					string fileName = response.Content.Headers.ContentDisposition.FileNameStar;
					string tempFilePath = Path.GetTempFileName();
					using (FileStream fileStream = new FileStream(tempFilePath, FileMode.Create, FileAccess.Write, FileShare.None))
					{
						await response.Content.CopyToAsync(fileStream);
						await fileStream.FlushAsync();
					}
					return PhysicalFile(tempFilePath, "application/octet-stream", fileName);
				}
			}
			catch (HttpRequestException ex)
			{
				ErrorModel error = new("404");
				return View("Error", error);
				//return Json(new { success = true }, System.Web.Mvc.JsonRequestBehavior.AllowGet); 
			}
		}

	}
}
