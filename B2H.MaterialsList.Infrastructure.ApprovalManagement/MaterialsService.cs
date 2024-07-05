using B2H.MaterialsList.Core.Service.ExceptionService;
using B2H.MaterialsList.Core.ApprovalManagement.Interface;
using B2H.MaterialsList.Mapper.Externsions;
using B2H.MaterialsList.Core.Migrations;
using B2H.MaterialsList.Core.Models;
using B2H.MaterialsList.Infrastructure.Repository.Interfaces;
using B2H.MaterialsList.API.DataTransfer.Dto;
using System;
using B2H.MaterialsList.Core.Service;
using Microsoft.EntityFrameworkCore;
using ApprovalStatus = B2H.MaterialsList.Core.Models.ApprovalStatus;
using ApprovalStageStatus = B2H.MaterialsList.Core.Models.ApprovalStageStatus;
using B2H.MaterialsList.Core.Mapper.Externsions;

namespace B2H.MaterialsList.Core.ApprovalManagement
{
    public class MaterialsService(MaterialsListContext context, IMaterialRepository repository, IMaterialImageRepository imageRepository) : IMaterialsService
	{
		readonly IMaterialRepository _materialRepository = repository;
		readonly IMaterialImageRepository _imageRepository = imageRepository;
		readonly MaterialsListContext _context = context;

		#region Create
		public MaterialDto CreateMaterials(Guid userId, MaterialDto materialDto)
		{
			var material = materialDto.ToMaterial();
			material.Status = MaterialStatus.Draft;
			material = _materialRepository.CreateMaterialAsync(material).Result;
			if (materialDto.Images != null)
            {
				foreach (var image in materialDto.Images)
					_imageRepository.AddAsync(new MaterialImage { ImageId = image, MaterialId = material.MaterialId });
			}
			materialDto.MaterialId = material.MaterialId;
			return materialDto;
		}

		public async Task<MaterialDto> CreateMaterialsAsync(Guid userId, MaterialDto materialDto)
		{
			var material = materialDto.ToMaterial();
			material.Status = MaterialStatus.Draft;
			material = await _materialRepository.CreateMaterialAsync(material);
			
            if (materialDto.Images != null)
            {
                foreach (var image in materialDto.Images)
                    await _imageRepository.AddAsync(new MaterialImage { ImageId = image, MaterialId = material.MaterialId });
            }
            materialDto.MaterialId = material.MaterialId;
            return materialDto;
        }
		#endregion
		#region Update
		public MaterialDto UpdateMaterials(Guid userId, MaterialDto materialDto)
		{
			Material material = _materialRepository.GetMaterialByIdAsync(materialDto.MaterialId).Result;
			if (material == null)
			{
				throw new MaterialNotFoundException("Update material NOT FOUND!");
			}
			if (materialDto.Images.Count() != 0)
			{
				foreach (var image in materialDto.Images)
					if (material.MaterialImages != null && material.MaterialImages.FirstOrDefault(x => x.ImageId == image, null) != null)
						continue;
					else
						_imageRepository.AddAsync(new MaterialImage { ImageId = image, MaterialId = material.MaterialId });
			}
			return _materialRepository.GetMaterialByIdAsync(materialDto.MaterialId).Result.ToMaterialDto();
		}

		public async Task<MaterialDto> UpdateMaterialsAsync(Guid userId, MaterialDto materialDto)
		{
			Material material = await _materialRepository.GetMaterialByIdAsync(materialDto.MaterialId);
			if (material == null)
			{
				throw new MaterialNotFoundException("Update material NOT FOUND!");
			}
			materialDto.CreateAt = material.CreateAt;
			if (materialDto.Images.Count() != 0)
			{
				foreach (var image in materialDto.Images)
					if (material.MaterialImages != null && material.MaterialImages.FirstOrDefault(x => x.ImageId == image, null) != null)
						continue;
					else
						await _imageRepository.AddAsync(new MaterialImage { ImageId = image, MaterialId = material.MaterialId });
			}
			return (await _materialRepository.UpdateMaterialAsync(materialDto.MaterialId, materialDto.ToMaterial())).ToMaterialDto();
		}
		#endregion
		#region Get From Bussnes
		public MaterialDto GetMaterial(Guid guid)
		{
			return _materialRepository.GetMaterialByIdAsync(guid).Result.ToMaterialDto();
		}
		public ICollection<MaterialDto> GetAllMaterials()
		{
			return _materialRepository.GetAllMatirialsAsync().Result.ToMaterialsDto();
		}
		public ICollection<MaterialDto> FindMaterialsForName(string name)
		{
			return _materialRepository.Search(name).Result.ToMaterialsDto();
		}
		public ICollection<MaterialDto> FindMaterialsForCategory(Guid guidCategory)
		{
			var materials = _materialRepository.GetAllByFunc(x => x.CategoryId == guidCategory).Result;
			if (materials == null)
			{
				throw new EntryPointNotFoundException();
			}
			return materials.ToMaterialsDto();
		}
		public async Task<MaterialDto> GetMaterialAsync(Guid guid)
		{
			return (await _materialRepository.GetMaterialByIdAsync(guid)).ToMaterialDto();
		}

		public async Task<ICollection<MaterialDto>> GetAllMaterialsAsync()
		{
			return (await _materialRepository.GetAllMatirialsAsync()).ToMaterialsDto();
		}
		public async Task<ICollection<MaterialDto>> FindPublishedMaterialsForNameAsync(string materialsName)
		{
			var materials = await _materialRepository.Search(materialsName); 
			materials = materials.Where(x => x.Status == MaterialStatus.Published);
			if (materials == null)
			{
				throw new EntryPointNotFoundException();
			}
			return materials.ToMaterialsDto();
		}
		public async Task<ICollection<MaterialDto>> FindPublishedMaterialsForCategoryAsync(Guid guidCategory)
		{
			var materials = await _materialRepository.GetAllByFunc(x => x.CategoryId == guidCategory && x.Status == MaterialStatus.Published);
			if (materials == null)
			{
				throw new EntryPointNotFoundException();
			}
			return materials.ToMaterialsDto();
		}
		public async Task<ICollection<MaterialDto>> FindPublishedMaterialsForCategoryNameAsync(string categoryName)
		{
			var materials = await _materialRepository.GetAllByFunc(x => x.Category.Name.Contains(categoryName)
																		&& x.Status == MaterialStatus.Published);
			if (materials == null)
			{
				throw new EntryPointNotFoundException();
			}
			return materials.ToMaterialsDto();
		}
		public async Task<IEnumerable<MaterialDto>> GetPublishedMaterial(Guid guid)
		{
			var materials = await _materialRepository.GetAllByFunc(x => x.MaterialId == guid || x.Status == MaterialStatus.Published);
			if (materials == null)
			{
				throw new EntryPointNotFoundException();
			}
			return materials.ToMaterialsDto();
		}
		public async Task<IEnumerable<MaterialDto>> GetPublishedMaterials()
		{
			var materials = await _materialRepository.GetAllByFunc(x =>  x.Status == MaterialStatus.Published);
			if (materials == null)
			{
				throw new EntryPointNotFoundException();
			}
			return materials.ToMaterialsDto();
		}
		public async Task<IEnumerable<MaterialDto>> GetDraftMaterialsByUser(Guid? userId = null)
		{
			var materials = await ( userId != null ? _materialRepository.GetAllByFunc(x => x.UserId == userId || x.Status == MaterialStatus.Draft) : 
											_materialRepository.GetAllByFunc(x => x.Status == MaterialStatus.Draft));
			if (materials == null)
			{
				throw new EntryPointNotFoundException();
			}
			return materials.ToMaterialsDto();
		}
		public async Task<IEnumerable<MaterialDto>> GetPendingApprovalMaterials()
		{
			var materials = await _materialRepository.GetAllByFunc(x => x.Status == MaterialStatus.PendingApproval);
			if (materials == null)
			{
				throw new EntryPointNotFoundException();
			}
			return materials.ToMaterialsDto();
		}
		#endregion
		#region Deleted
		public bool DeletedMaterials(Guid MaterialId)
		{
			return _materialRepository.DeleteMaterial(MaterialId);
		}
		#endregion

		
	}
}
