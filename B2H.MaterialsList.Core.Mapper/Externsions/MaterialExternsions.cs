using B2H.MaterialsList.API.DataTransfer.Dto;
using B2H.MaterialsList.Core.Models;
using Microsoft.VisualBasic;

namespace B2H.MaterialsList.Core.Mapper.Externsions
{
    public static class MaterialExternsions
    {
        public static MaterialDto ToMaterialDto(this Material material) => new()
        {
            MaterialId = material.MaterialId,
            Name = material.Name,
            CategoryId = material.CategoryId,
            Gost = material.Gost,
            Grade = material.Grade,
            CreateAt = material.CreateAt,
            UpdateAt = material.UpdateAt,
            Images = material.MaterialImages?.AsParallel().Select(x => x.ImageId).AsEnumerable(),
            FileId = material.FileId,
            ModeratorId = material.UserId,
            Specifications = material.Specifications
        };
        public static Material ToMaterial(this MaterialDto material) => new()
        {
            MaterialId = material.MaterialId,
            Name = material.Name,
            CategoryId = material.CategoryId,
            Gost = material.Gost,
            Grade = material.Grade,
            CreateAt = material.CreateAt,
            UpdateAt = material.UpdateAt,
            FileId = material.FileId,
			UserId = material.ModeratorId,
            Specifications = material.Specifications,
            MaterialImages = null
        };
        public static ICollection<MaterialDto> ToMaterialsDto(this IEnumerable<Material> materials) =>
                materials.AsParallel().Select(x => x.ToMaterialDto()).ToList();
        public static ICollection<Material> ToMaterials(this IEnumerable<MaterialDto> materials) =>
               materials.AsParallel().Select(x => x.ToMaterial()).ToList();
    }
}
