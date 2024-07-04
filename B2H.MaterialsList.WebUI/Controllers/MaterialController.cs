using Microsoft.AspNetCore.Mvc;
using MaterialsList.Frontend.Services.IServices;
using Newtonsoft.Json;
using MaterialsList.Frontend.Models;
using MaterialsList.Frontend;
using materialslist_ui.Attributes;
using Microsoft.AspNetCore.Authorization;
using B2H.MaterialsList.API.DataTransfer.Dto;
namespace materialslist_ui.Controllers
{
	public class MaterialController : Controller
	{
		private readonly IMaterialService _materialService;
		public MaterialController(IMaterialService materialService)
		{
			_materialService = materialService;
		}
		public List<IDictionary<string, string>> matLinks = new List<IDictionary<string, string>>();
		public async Task<IActionResult> AllMaterials()
		{
			List<MaterialDto> list = new();
			try
			{
				var response = await _materialService.GetAllMaterialsAsync<ResponseDto>();
				if (response != null && response.IsSuccess)
					list = JsonConvert.DeserializeObject<List<MaterialDto>>(Convert.ToString(response.Result));
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.ToString());
			}
			return View(list);
		}


		public async Task<IActionResult> MaterialCard(Guid materialId, string? searchTitle, string? searchRequest )
		{
			if (materialId != Guid.Empty)
			{
				this.ViewBag.SearchTitle = "";
				this.ViewBag.SearchRequest = "";
				if (searchTitle != null) this.ViewBag.SearchTitle = searchTitle;
				if (searchRequest != null) this.ViewBag.SearchRequest = searchRequest;
				List<ShortCategoryDto> materialBC = new();
				ViewModel<MaterialDto,ShortCategoryDto> viewModel = new ViewModel<MaterialDto,ShortCategoryDto>();
				this.ViewBag.MatLinks = matLinks;
				IDictionary<string, string> requestsCookie = new Dictionary<string, string>();
				string request = HttpContext.Request.Path + HttpContext.Request.QueryString;
				MaterialDto materialData = new();
				try
				{
					var response = await _materialService.GetProductByIdAsync<ResponseDto>(materialId);
					if (response != null && response.IsSuccess)
					{
						materialData = JsonConvert.DeserializeObject<MaterialDto>(Convert.ToString(response.Result));
						this.ViewBag.MatLinks = MaterialCookie.RecentViewBag(HttpContext, matLinks, materialData, request, requestsCookie);
						viewModel.ViewObject = materialData;
					}
				}
				catch (Exception ex)
				{
					Console.WriteLine(ex.ToString());
					ErrorModel errorExeption = new("404");
					return View("Error", errorExeption);
				}
				try
				{
					var responseBC = await _materialService.BreadcrumbMaterialAsync<ResponseDto>(materialId);//убрать в атрибут
					if (responseBC != null && responseBC.IsSuccess)
						materialBC = JsonConvert.DeserializeObject<List<ShortCategoryDto>>(Convert.ToString(responseBC.Result));
					materialBC.Reverse();
					viewModel.ViewBreadCrumbs = materialBC;
				}
				catch (Exception ex2)
				{
					Console.WriteLine(ex2.ToString());
				}
				return View(viewModel);
			}
			ErrorModel error = new("404");
			return View("Error", error);
		}
		[Authorize]
		public async Task<IActionResult> CardEdit(Guid materialId, string? cardTitle, Guid? cardRequest)
		{
			if (materialId != Guid.Empty)
			{
				if (cardTitle != null) this.ViewBag.CardTitle = cardTitle;
				if (cardRequest != null) this.ViewBag.CardRequest = cardRequest;
				IDictionary<string, string> requestsCookie = new Dictionary<string, string>();
				string request = HttpContext.Request.Path + HttpContext.Request.QueryString;
				MaterialDto materialData = new();
				try
				{
					var response = await _materialService.GetProductByIdAsync<ResponseDto>(materialId);
					if (response != null && response.IsSuccess)
						materialData = JsonConvert.DeserializeObject<MaterialDto>(Convert.ToString(response.Result));
				}
				catch (Exception ex)
				{
					Console.WriteLine(ex.ToString());
				}
				CategoryDto category = new();
				var responseCat = await _materialService.GetCategoryByIdAsync<ResponseDto>((Guid)materialData.CategoryId);
				if (responseCat != null && responseCat.IsSuccess)
					category = JsonConvert.DeserializeObject<CategoryDto>(Convert.ToString(responseCat.Result));
				try
				{
					List<CategoryDto> categories = new();
					var responseListCat = await _materialService.GetAllCategoriesAsync<ResponseDto>();
					if (responseListCat != null && responseListCat.IsSuccess)
						categories = JsonConvert.DeserializeObject<List<CategoryDto>>(Convert.ToString(responseListCat.Result));
					CardEditModel card = new CardEditModel(materialData.MaterialId, materialData.Name, materialData.Gost, materialData.Specifications,
						 materialData.CategoryId,
						 category.Name,
						  materialData.FileId,
						  materialData.Images,
						  categories);
					return View(card);
				}
				catch (Exception ex)
				{
					Console.WriteLine(ex.ToString());
				}
				
			}

			ErrorModel error = new("404");
			return View("Error", error);
		}

		[HttpPost]
		public async Task<IActionResult> CardEditSubmit(MaterialForm mtf, Guid materialId, int fileId, IEnumerable<int> images, Guid categoryId)
		{
			MaterialDto material = new MaterialDto();
			material.MaterialId = materialId;
			material.Name = mtf.Name;
			material.Gost = mtf.Gost;
			if (fileId == 0) material.FileId = null;
			else material.FileId = fileId;
			if (mtf.CategoryIdOption != null) material.CategoryId = Guid.Parse(mtf.CategoryIdOption);
			else material.CategoryId = categoryId;
			material.Images = images;
			if ((mtf.Specifications.Count != 0) && (mtf.Specifications[0] != null)) material.Specifications = mtf.Specifications[0];
			else material.Specifications = null;
			try
			{
				using (HttpClient client = new HttpClient())
				{
					if (mtf.File != null)
					{
						FileRepository fileRepository = new FileRepository();
						int addedFileId = await fileRepository.AddFile(mtf.File, client, false);
						Filebase fileInfo;
						if (addedFileId != 0)
							material.FileId = addedFileId;
					}
					if (mtf.Images != null)
					{
						FileRepository fileRepositoryImg = new FileRepository();
						int addedImageId = await fileRepositoryImg.AddFile(mtf.Images, client, true);
						if (addedImageId != 0)
							material.Images = material.Images.Concat(new[] { addedImageId });
					}
				}
				ResponseDto response = await _materialService.UpdateMaterialAsync<ResponseDto>(materialId, material);
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.InnerException.Message.ToString());
				ErrorModel error = new("404");
				return View("Error", error);
			}

			return RedirectToAction("MaterialCard", new { materialId = materialId });
		}
		[Authorize]
		public async Task<IActionResult> Create()
		{
			List<CategoryDto> categories = new();
			var responseListCat = await _materialService.GetAllCategoriesAsync<ResponseDto>();
			if (responseListCat != null && responseListCat.IsSuccess)
				categories = JsonConvert.DeserializeObject<List<CategoryDto>>(Convert.ToString(responseListCat.Result));
			int CatCount = categories.Count();
			
			return View(categories);
		}

		[HttpPost]
		public async Task<IActionResult> CreateSubmit(MaterialForm mtf)
		{
			MaterialDto material = new MaterialDto();
			material.Name = mtf.Name;
			material.Gost = mtf.Gost;
			material.CategoryId = Guid.Parse(mtf.CategoryIdOption);
			material.Images = new List<int>();
			if ((mtf.Specifications.Count != 0) && (mtf.Specifications[0] != null)) material.Specifications = mtf.Specifications[0];
			else material.Specifications = null;
			try
			{
				using (HttpClient client = new HttpClient())
				{

					if (mtf.File != null)
					{
						FileRepository fileRepository = new FileRepository();
						int addedFileId = await fileRepository.AddFile(mtf.File, client, false);
						Filebase fileInfo;
						if (addedFileId != 0) material.FileId = addedFileId;
					}
					if (mtf.Images != null)
					{
						FileRepository fileRepositoryImg = new FileRepository();
						int addedImageId = await fileRepositoryImg.AddFile(mtf.Images, client, true);
						if (addedImageId != 0) material.Images = material.Images.Concat(new[] { addedImageId });
					}
				}
				ResponseDto response = await _materialService.CreateMaterialAsync<ResponseDto>(material);
			}
			catch (Exception ex)
			{
				ErrorModel error = new("404");
				return View("Error", error);
			}
			return RedirectToAction("UserPage", "User");
		}

		public async Task<IActionResult> Agreement()
		{
			return View();
		}

	}
}



