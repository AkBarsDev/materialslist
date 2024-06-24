using B2H.MaterialsList.API.DataTransfer.Dto;
using System.Collections.ObjectModel;

namespace B2H.MaterialsList.Core.ApprovalManagement.Interface
{
    public interface IMaterialsService
    {
        MaterialDto GetMaterial(Guid guid);
        Task<MaterialDto> GetMaterialAsync(Guid guid);
        ICollection<MaterialDto> GetAllMaterials();
        Task<ICollection<MaterialDto>> GetAllMaterialsAsync();
        ICollection<MaterialDto> FindMaterialsForName(string name);
        Task<ICollection<MaterialDto>> FindMaterialsForNameAsync(string name);
        ICollection<MaterialDto> FindMaterialsForCategory(Guid guid);
        Task<ICollection<MaterialDto>> FindMaterialsForCategoryAsync(Guid guid);
        ICollection<MaterialDto> FindMaterialsForCategoryName(string categoryName);
        Task<ICollection<MaterialDto>> FindMaterialsForCategoryNameAsync(string categoryName);
        MaterialDto UpdateMaterials(MaterialDto materialDto);
        Task<MaterialDto> UpdateMaterialsAsync(MaterialDto materialDto);
        MaterialDto CreateMaterials(MaterialDto materialDto);
        Task<MaterialDto> CreateMaterialsAsync(MaterialDto materialDto);
        bool DeletedMaterials(Guid MaterialIdo);
        Task<bool> DeletedMaterialsAsync(Guid MaterialId);
    }
}
