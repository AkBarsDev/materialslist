using B2H.MaterialsList.API.DataTransfer.Dto;


namespace B2H.MaterialsList.Infrastructure.Repository.Interfaces
{
    public interface ICategoryRepository
    {
        public Task<IEnumerable<ShortCategoryDto>> Search(string qweryRequest);
        public Task<IEnumerable<CategoryDto>> GetCategoriesAsync();
        public Task<CategoryDto> GetCategoriesByIdAsync(Guid id);
        public Task<CategoryDto> CreateUpdateCategoryAsync(CategoryDto category);
        public Task<CategoryDto> CreateUpdateCategoryAsync(Guid id, CategoryDto category);
        public Task<bool> DeleteCategoryAsync(Guid id);
        public Task<bool> DeleteAllAsync();
    }
}
