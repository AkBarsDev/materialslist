using MaterialsList.Frontend.Services.IServices;
using MaterialsList.Frontend.Models;
using MaterialsList.Frontend.Models.Dto;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json.Linq;

namespace MaterialsList.Frontend.Services
{
	public class MaterialService : BaseService, IMaterialService
	{
		private readonly IHttpClientFactory _clientFactory;
		public MaterialService(IHttpClientFactory clientFactory) : base(clientFactory)
		{
			_clientFactory = clientFactory;
		}


		public async Task<T> CreateMaterialAsync<T>(MaterialDto materialDto)
		{
			return await this.SendAsync<T>(new ApiRequest
			{
				ApiType = SD.ApiType.POST,
				Data = materialDto,
				Url = SD.MaterialsAPIBase + "/api/Materials",
				
			});
		}

		public async Task<T> DeleteProductAsync<T>(Guid id)
		{
			return await this.SendAsync<T>(new ApiRequest
			{
				ApiType = SD.ApiType.DELETE,
				Url = SD.MaterialsAPIBase + "/api/Materials/product/" + id,
			});
		}

		public async Task<T> GetAllMaterialsAsync<T>()
		{
			return await this.SendAsync<T>(new ApiRequest
			{
				ApiType = SD.ApiType.GET,
				Url = SD.MaterialsAPIBase + "/api/materials"
			});
		}

		public async Task<T> GetAllCategoriesAsync<T>()
		{
			return await this.SendAsync<T>(new ApiRequest
			{
				ApiType = SD.ApiType.GET,
				Url = SD.MaterialsAPIBase + "/api/Categories"
			});
		}

		public async Task<T> GetProductByIdAsync<T>(Guid id)
		{
			return await this.SendAsync<T>(new ApiRequest
			{
				ApiType = SD.ApiType.GET,
				Url = SD.MaterialsAPIBase + "/api/Materials/" + id
			});
		}

		public async Task<T> UpdateMaterialAsync<T>(Guid id, MaterialDto materialDto)
		{
			return await this.SendAsync<T>(new ApiRequest
			{
				ApiType = SD.ApiType.PUT,
				Url = SD.MaterialsAPIBase + "/api/Materials/" + id,
				Data = materialDto
			});
		}


		public async Task<T> SearchMaterialAsync<T>(string request)
        {
			return await this.SendAsync<T>(new ApiRequest

			{
				ApiType = SD.ApiType.GET,
				Url = SD.MaterialsAPIBase + "/api/materials/search?value=" + request
			}) ;
        }

		public async Task<T> GetCategoryByIdAsync<T>(Guid id)
		{
			return await this.SendAsync<T>(new ApiRequest
			{
				ApiType = SD.ApiType.GET,
				Url = SD.MaterialsAPIBase + "/api/Categories/" + id
			}) ;
		}

		public async Task<T> SearchCategoryAsync<T>(string request)
		{
			return await this.SendAsync<T>(new ApiRequest
			{
				ApiType = SD.ApiType.GET,
				Url = SD.MaterialsAPIBase + "/api/category/search?value=" + request
			});
		}

		public async Task<T> BreadcrumbCategoryAsync<T>(Guid request)
		{
			return await this.SendAsync<T>(new ApiRequest
			{
				ApiType = SD.ApiType.GET,
				Url = SD.MaterialsAPIBase + "/api/Breadcrumb/category/" + request
			});
		}

		public async Task<T> BreadcrumbMaterialAsync<T>(Guid request)
		{
			return await this.SendAsync<T>(new ApiRequest
			{
				ApiType = SD.ApiType.GET,
				Url = SD.MaterialsAPIBase + "/api/Breadcrumb/material/" + request
			});
		}

	}
}
