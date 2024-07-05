using B2H.MaterialsList.API.DataTransfer.Dto;
using System.Collections.ObjectModel;

namespace B2H.MaterialsList.Core.ApprovalManagement.Interface
{
    public interface IMaterialsService
    {
        MaterialDto GetMaterial(Guid guid);
        ICollection<MaterialDto> GetAllMaterials();
        ICollection<MaterialDto> FindMaterialsForName(string name);
        ICollection<MaterialDto> FindMaterialsForCategory(Guid guid);
        MaterialDto UpdateMaterials(Guid userId, MaterialDto materialDto);
        MaterialDto CreateMaterials(Guid userI, MaterialDto materialDto);
        bool DeletedMaterials(Guid MaterialIdo);
        Task<MaterialDto> GetMaterialAsync(Guid guid);
        Task<IEnumerable<MaterialDto>> GetPublishedMaterial(Guid guid);
		Task<IEnumerable<MaterialDto>> GetPublishedMaterials();
		Task<IEnumerable<MaterialDto>> GetDraftMaterialsByUser(Guid? userId = null);
		Task<IEnumerable<MaterialDto>> GetPendingApprovalMaterials();
		Task<ICollection<MaterialDto>> GetAllMaterialsAsync();
        Task<ICollection<MaterialDto>> FindPublishedMaterialsForNameAsync(string name);
		Task<ICollection<MaterialDto>> FindPublishedMaterialsForCategoryAsync(Guid guid);
        Task<ICollection<MaterialDto>> FindPublishedMaterialsForCategoryNameAsync(string categoryName);
		Task<MaterialDto> UpdateMaterialsAsync(Guid userId, MaterialDto materialDto);
        Task<MaterialDto> CreateMaterialsAsync(Guid userId, MaterialDto materialDto);
	}
}

