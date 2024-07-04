
using B2H.MaterialsList.API.DataTransfer.Dto;

namespace MaterialsList.Frontend.Services.IServices
{
	public interface IMaterialService
	{

		Task<T> GetAllMaterialsAsync<T>();
		Task<T> GetAllCategoriesAsync<T>();
		Task<T> GetCategoryByIdAsync<T>(Guid id);
		Task<T> GetProductByIdAsync<T>(Guid id);
		Task<T> CreateMaterialAsync<T>(MaterialDto materialDto);
		Task<T> UpdateMaterialAsync<T>(Guid id,MaterialDto materialDto);
		Task<T> DeleteProductAsync<T>(Guid id);
		Task<T> SearchMaterialAsync<T>(string request);
		Task<T> SearchCategoryAsync<T>(string request);
		Task<T> BreadcrumbCategoryAsync<T>(Guid request);
		Task<T> BreadcrumbMaterialAsync<T>(Guid request);



	}
}
