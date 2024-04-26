using Microsoft.EntityFrameworkCore;
using B2H.MaterialsList.Repository.Interfaces;
using B2H.MaterialsList.Mapper.Externsions;
using B2H.MaterialsList.Core.Service;
using B2H.MaterialsList.Core.Models;
using B2H.MaterialsList.API.DataTransfer.Dto;

namespace B2H.MaterialsList.Repository
{
    public class CategoryRepository(MaterialsListContext context) : ICategoryRepository
    {
        private readonly MaterialsListContext _context = context;

        public async Task<CategoryDto> CreateUpdateCategoryAsync(CategoryDto value)
        {
            //Category category = _mapper.Map<CategoryDto, Category>(value);
            Category category = CategoryExtensions.ToCategory(value);
            if (category.CategoryId != default)
            {
                _context.CategoriesMaterials.Update(category);
            }
            else
            {
                _context.CategoriesMaterials.Add(category);
            }
            await _context.SaveChangesAsync();
            return CategoryExtensions.ToCategory(category);
        }
        public async Task<CategoryDto> CreateUpdateCategoryAsync(Guid id, CategoryDto value)
        {
            Category category = CategoryExtensions.ToCategory(value);
            if (id != default)
            {
                _context.CategoriesMaterials.Update(category);
            }
            else
            {
                _context.CategoriesMaterials.Add(category);
            }
            await _context.SaveChangesAsync();
            return CategoryExtensions.ToCategory(category);
        }

        public async Task<bool> DeleteAllAsync()
        {
            try
            {
                //_context.CategoriesMaterial.RemoveRange(_context.CategoriesMaterial);
                var categories = await _context.CategoriesMaterials.Include(x => x.Materials).Include(x => x.InverseParent).ToListAsync();
                foreach (var category in categories)
                {
                    if (category.Materials != null && category.Materials.Count > 0)
                        _context.Materials.RemoveRange(category.Materials);
                    _context.SaveChanges();
                    _context.CategoriesMaterials.Remove(category);
                    _context.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("|-|_|-||Ошибка||-|_|-|");
                Console.WriteLine(ex.ToString());
                Console.WriteLine(ex.Message.ToString());
                return false;
            }
            return true;
        }

        public async Task<bool> DeleteCategoryAsync(Guid id)
        {
            try
            {
                var categories = await _context.CategoriesMaterials.Include(x => x.Materials).Include(x => x.InverseParent).ToListAsync();
                Category? category = categories.Where(x => x.CategoryId == id).First();
                if (category == null)
                    return false;
                if (category.InverseParent != null)
                    DeletedReqursive(category.InverseParent);
                if (category.Materials != null)
                    _context.Materials.RemoveRange(category.Materials);
                _context.SaveChanges();
                _context.CategoriesMaterials.Remove(category);
                _context.SaveChanges();
            }
            catch (Exception ex)
            {
                Console.WriteLine("|-|_|-||Ошибка||-|_|-|");
                Console.WriteLine(ex.Message.ToString());
                return false;
            }
            return true;
        }
        private bool DeletedReqursive(IEnumerable<Category> categories)
        {
            bool result = true;
            foreach (var category in categories)
            {
                if (category.InverseParent != null && category.InverseParent.Count > 0)
                    DeletedReqursive(category.InverseParent);
                if (category.Materials != null && category.Materials.Count > 0)
                    _context.Materials.RemoveRange(category.Materials);
                _context.SaveChanges();
                _context.CategoriesMaterials.Remove(category);
                _context.SaveChanges();
            }
            return result;
        }

        public async Task<IEnumerable<CategoryDto>> GetCategoriesAsync()
        {
            try
            {
                IEnumerable<Category> categories = _context.CategoriesMaterials.AsNoTracking()
                                        .AsEnumerable().Where(x => x.ParentId != null);
                return CategoryExtensions.ToCategories(categories);
            }
            catch
            {
                throw new KeyNotFoundException();
            }
        }

        public async Task<CategoryDto> GetCategoriesByIdAsync(Guid id)
        {
            var category = _context.CategoriesMaterials.AsNoTracking()
                                                                        .Where(x => x.CategoryId == id)
                                                                        .Include(x => x.Materials)
                                                                        .Include(x => x.InverseParent)
                                                                            .ThenInclude(categories => categories.InverseParent).OrderBy(x => x.Name)
                                                                        .Include(x => x.InverseParent)
                                                                            .ThenInclude(categories => categories.Materials).First();
            return CategoryExtensions.ToCategory(category);
        }

        public async Task<IEnumerable<ShortCategoryDto>> Search(string qweryRequest)
        {
            IQueryable<Category> query = _context.CategoriesMaterials.Include(x => x.Materials).Include(x => x.InverseParent);
            if (!string.IsNullOrEmpty(qweryRequest))
            {
                foreach (string searchWord in qweryRequest.Split('\t', ' '))
                    query = query.Where(m => m.Name.Contains(searchWord));
            }
            return query.AsEnumerable().Select(x => new ShortCategoryDto { Id = x.CategoryId, CategoryCount = x.InverseParent.Count, MaterialCount = x.Materials.Count, Name = x.Name }).OrderBy(x => x.Name);
        }
    }

}

