using B2H.MaterialsList.API.DataTransfer.Dto;

namespace B2H.MaterialsList.Infrastructure.Repository.Interfaces
{
    public interface IBreadcrumbAwareRepository
    {
        Task<IEnumerable<ShortCategoryDto>> GetBreadcrumbCategory(Guid categoryId);
        Task<IEnumerable<ShortCategoryDto>> GetBreadcrumbMaterial(Guid materialId);
    }
}
