using B2H.MaterialsList.Core.Models;
using B2H.MaterialsList.Core.Service;
using B2H.MaterialsList.Repository.Interfaces;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using System.Linq.Expressions;

namespace B2H.MaterialsList.Repository
{
    public class MaterialImageRepository(MaterialsListContext context) : IMaterialImageRepository
    {
        private readonly MaterialsListContext _context = context;
        public async Task<MaterialImage?> AddAsync(MaterialImage materialImage)
        {
            await _context.AddAsync(materialImage);
            await _context.SaveChangesAsync();
            return materialImage;
        }

        public async Task<bool> DeleteAsync(int id)
        {
            MaterialImage image = await _context.MaterialImages.FirstOrDefaultAsync(x => x.MaterialImageId == id);
            if (image == null)
                return false;
            _context.Remove(id);
            await _context.SaveChangesAsync();
            return true;
        }

        public async Task<IEnumerable<MaterialImage>?> GetAllAsync()
        {
            return _context.MaterialImages.AsNoTracking().Include(x => x.Material).Include(x => x.Material);
        }

        public async Task<IList<MaterialImage>?> GetAllByFunc(Expression<Func<MaterialImage, bool>> func)
        {
            return await _context.MaterialImages.AsNoTracking().Where(func).ToListAsync();
        }

        public async Task<MaterialImage?> GetByFunc(Expression<Func<MaterialImage, bool>> func)
        {
            return await _context.MaterialImages.FirstOrDefaultAsync(func);
        }

        public async Task<MaterialImage?> GetByIdAsync(int id)
        {
            return await _context.MaterialImages.FirstOrDefaultAsync(x => x.MaterialImageId == id);
        }

        public async Task<MaterialImage?> UpdateAsync(int id, MaterialImage material)
        {
            _context.MaterialImages.Update(material);
            await _context.SaveChangesAsync();
            return material;
        }
    }
}
