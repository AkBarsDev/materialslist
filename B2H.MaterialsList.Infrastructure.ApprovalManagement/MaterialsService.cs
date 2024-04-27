using B2H.MaterialsList.Core.Service.ExceptionService;
using B2H.MaterialsList.Core.ApprovalManagement.Interface;
using B2H.MaterialsList.Mapper.Externsions;
using B2H.MaterialsList.Core.Migrations;
using B2H.MaterialsList.Core.Models;
using B2H.MaterialsList.API.DataTransfer.Dto;
using B2H.MaterialsList.Infrastructure.Repository.Interfaces;

namespace B2H.MaterialsList.Core.ApprovalManagement
{
    public class MaterialsService(IMaterialRepository repository, IMaterialImageRepository imageRepository) : IMaterialsService
	{
		readonly IMaterialRepository _materialRepository = repository;
		readonly IMaterialImageRepository _imageRepository = imageRepository;

		public MaterialDto CreateMaterials(MaterialDto materialDto)
		{
			var material = _materialRepository.CreateMaterialAsync(materialDto.ToMaterial()).Result;
			if (materialDto.Images.Count() != 0)
			{
				foreach (var image in materialDto.Images)
					_imageRepository.AddAsync(new MaterialImage { ImageId = image, MaterialId = material.MaterialId });
			}
			materialDto.MaterialId = material.MaterialId;
			return materialDto;
		}

		public async Task<MaterialDto> CreateMaterialsAsync(MaterialDto materialDto)
		{
			return (await _materialRepository.CreateMaterialAsync(materialDto.ToMaterial())).ToMaterialDto();
		}
		public MaterialDto UpdateMaterials(MaterialDto materialDto)
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

		public async Task<MaterialDto> UpdateMaterialsAsync(MaterialDto materialDto)
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
		public bool DeletedMaterials(Guid MaterialId)
		{
			return _materialRepository.DeleteMaterialAsync(MaterialId).Result;
		}

		public async Task<bool> DeletedMaterialsAsync(Guid MaterialId)
		{
			return await _materialRepository.DeleteMaterialAsync(MaterialId);
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

		public async Task<ICollection<MaterialDto>> FindMaterialsForCategoryAsync(Guid guidCategory)
		{
			var materials = await _materialRepository.GetAllByFunc(x => x.CategoryId == guidCategory);
			if (materials == null)
			{
				throw new EntryPointNotFoundException();
			}
			return materials.ToMaterialsDto();
		}

		public ICollection<MaterialDto> FindMaterialsForCategoryName(string categoryName)
		{
			var materials = _materialRepository.GetAllByFunc(x => x.Category.Name == categoryName).Result;
			if (materials == null)
			{
				throw new EntryPointNotFoundException();
			}
			return materials.ToMaterialsDto();
		}

		public async Task<ICollection<MaterialDto>> FindMaterialsForCategoryNameAsync(string categoryName)
		{
			var materials = await _materialRepository.GetAllByFunc(x => x.Category.Name == categoryName);
			if (materials == null)
			{
				throw new EntryPointNotFoundException();
			}
			return materials.ToMaterialsDto();
		}

		public ICollection<MaterialDto> FindMaterialsForName(string name)
		{
			return _materialRepository.Search(name).Result.ToMaterialsDto();
		}

		public async Task<ICollection<MaterialDto>> FindMaterialsForNameAsync(string name)
		{
			return (await _materialRepository.Search(name)).ToMaterialsDto();
		}

		public MaterialDto GetMaterial(Guid guid)
		{
			return _materialRepository.GetMaterialByIdAsync(guid).Result.ToMaterialDto();
		}

		public async Task<MaterialDto> GetMaterialAsync(Guid guid)
		{
			return (await _materialRepository.GetMaterialByIdAsync(guid)).ToMaterialDto();
		}

		public ICollection<MaterialDto> GetAllMaterials()
		{
			return _materialRepository.GetAllMatirialsAsync().Result.ToMaterialsDto();
		}

		public async Task<ICollection<MaterialDto>> GetAllMaterialsAsync()
		{
			return (await _materialRepository.GetAllMatirialsAsync()).ToMaterialsDto();
		}
	}
}
