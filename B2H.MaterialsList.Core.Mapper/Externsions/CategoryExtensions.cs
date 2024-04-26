using B2H.MaterialsList.API.DataTransfer.Dto;
using B2H.MaterialsList.Core.Models;
using Microsoft.VisualBasic;
using System.Linq;

namespace B2H.MaterialsList.Mapper.Externsions
{
    public static class CategoryExtensions
    {
        public static CategoryDto ToCategory(this Category category) => new()
        {
            CategoryId = category.CategoryId,
            Name = category.Name,
            ParentId = category.ParentId,
            Children = category.InverseParent.OrderBy(x => x.Name).Select(y => new ShortCategoryDto(y.CategoryId, y.Name, y.InverseParent.Count, y.Materials.Count)).ToArray(),
            Materials = category.Materials.OrderBy(x => x.Name).Select(y => new ShortMaterialDto(y.MaterialId, y.Name, y.CreateAt, y.UpdateAt, y.FileId)).ToArray(),
        };
        public static Category ToCategory(this CategoryDto category) => new()
        {
            CategoryId = category.CategoryId,
            Name = category.Name,
            ParentId = category.ParentId
        };
        public static ICollection<CategoryDto> ToCategories(this IEnumerable<Category> categories) =>
                categories.AsParallel().Select(x => x.ToCategory()).ToList();
        public static ICollection<Category> ToCategories(this IEnumerable<CategoryDto> categories) =>
               categories.AsParallel().Select(x => x.ToCategory()).ToList();

    }
}
