using B2H.MaterialsList.Core.Models;
using B2H.MaterialsList.Core.Service;
using B2H.MaterialsList.Infrastructure.Repository.Interfaces;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;

namespace B2H.MaterialsList.Infrastructure.Repository
{
    public class MaterialRepository : IMaterialRepository
    {
        private readonly MaterialsListContext _context;

        public MaterialRepository(MaterialsListContext context)
        {
            _context = context;
        }

        public async Task<Material> CreateMaterialAsync(Material material)
        {
            try
            {
                material.CreateAt = DateTime.Now;
                _context.Materials.Add(material);
                await SaveChangesAsync(material.MaterialId);
                return material;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        public async Task<Material> UpdateMaterialAsync(Guid id, Material Material)
        {
            try
            {
                Material.UpdateAt = DateTime.Now;
                _context.Materials.Update(Material);
                await SaveChangesAsync(Material.MaterialId);
                return Material;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool DeleteMaterial(Guid id)
        {
            try
            {
                Material? material =  _context.Materials.AsNoTracking().Where(x => x.MaterialId == id).FirstOrDefault();
                if (material == null)
                    return false;
                _context.Materials.Remove(material);
                _context.SaveChangesAsync();
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
        public async Task<bool> DeleteAllAsync()
        {
            try
            {
                _context.Materials.RemoveRange(_context.Materials);
                await _context.SaveChangesAsync();
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
        public async Task<Material> GetMaterialByIdAsync(Guid id)
        {
            Material? material = await _context.Materials.AsNoTracking().Where(x => x.MaterialId == id)
                .Include(x => x.MaterialImages).Include(x => x.Category).FirstOrDefaultAsync();

            return material;
        }

        public async Task<IEnumerable<Material>> GetAllMatirialsAsync()
        {
            IEnumerable<Material> materials = await _context.Materials.ToListAsync();
            return materials;
        }

        public async Task<IEnumerable<Material>> Search(string search)
        {
            IQueryable<Material> query = _context.Materials;
            if (!string.IsNullOrEmpty(search))
            {
                foreach (string searchWord in search.Split('\t', ' '))
                    query = query.Where(m => m.Name.Contains(searchWord));
            }
            return query.AsEnumerable();
        }

        private async Task SaveChangesAsync(Guid id)
        {
            HistoryUpdate newTrans = new HistoryUpdate { DataUpdate = DateTime.Now, MaterialId = id };
            _context.HistoryUpdates.Add(newTrans);
            await _context.SaveChangesAsync();
        }

        public async Task<IList<Material>?> GetAllByFunc(Expression<Func<Material, bool>> func)
        {
            return await _context.Materials.AsNoTracking().Where(func).ToListAsync();
        }

        public async Task<Material?> GetByFunc(Expression<Func<Material, bool>> func)
        {
            return await _context.Materials.FirstOrDefaultAsync(func);
        }
    }
}
