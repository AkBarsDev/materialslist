using B2H.MaterialsList.API.DataTransfer.Dto;
using B2H.MaterialsList.Core.Service;
using B2H.MaterialsList.Repository.Interfaces;
using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;

namespace B2H.MaterialsList.Repository
{
	public class BreadcrumbAwareRepository(MaterialsListContext context) : IBreadcrumbAwareRepository
    {
        private readonly MaterialsListContext _context = context;
        public async Task<IEnumerable<ShortCategoryDto>> GetBreadcrumbCategory(Guid categoryId)
        {
            var category = _context.CategoriesMaterials.Find(categoryId);
            ICollection<ShortCategoryDto> list = new Collection<ShortCategoryDto>();
            if (category != null)
            {
                while (category != null)
                {
                    list.Add(new ShortCategoryDto { Id = category.CategoryId, CategoryCount = category.InverseParent.Count, MaterialCount = category.Materials.Count, Name = category.Name });
                    category = _context.CategoriesMaterials.Find(category.ParentId);
                }
            }
            return list;
        }
        public async Task<IEnumerable<ShortCategoryDto>> GetBreadcrumbMaterial(Guid materialId)
        {
            var material = _context.Materials.ToList().Find(x => x.MaterialId == materialId);
            var category = _context.CategoriesMaterials.Find(material.CategoryId);
            ICollection<ShortCategoryDto> list = new Collection<ShortCategoryDto>();
            if (category != null)
            {
                while (category != null)
                {
                    list.Add(new ShortCategoryDto { Id = category.CategoryId, CategoryCount = category.InverseParent.Count, MaterialCount = category.Materials.Count, Name = category.Name });
                    category = _context.CategoriesMaterials.ToListAsync().Result.Find(x => x.CategoryId == category.ParentId);
                }
            }
            return list;
        }
    }
}
