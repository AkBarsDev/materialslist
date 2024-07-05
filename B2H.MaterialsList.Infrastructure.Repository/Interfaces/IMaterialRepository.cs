using B2H.MaterialsList.Core.Models;
using System.Linq.Expressions;

namespace B2H.MaterialsList.Infrastructure.Repository.Interfaces
{
    public interface IMaterialRepository
    {
        public Task<IEnumerable<Material>> GetAllMatirialsAsync();
        public Task<IEnumerable<Material>> Search(string search);
        public Task<Material> GetMaterialByIdAsync(Guid id);
        public Task<Material> UpdateMaterialAsync(Guid id, Material material);
        public Task<Material> CreateMaterialAsync(Material material);
        public bool DeleteMaterial(Guid id);
        public Task<bool> DeleteAllAsync();
        public Task<IList<Material>?> GetAllByFunc(Expression<Func<Material, bool>> func);
        public Task<Material?> GetByFunc(Expression<Func<Material, bool>> func);
    }
}
