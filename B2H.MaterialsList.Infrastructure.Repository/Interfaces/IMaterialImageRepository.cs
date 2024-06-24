using B2H.MaterialsList.Core.Models;
using System.Linq.Expressions;

namespace B2H.MaterialsList.Infrastructure.Repository.Interfaces
{
    public interface IMaterialImageRepository
    {
        public Task<IEnumerable<MaterialImage>> GetAllAsync();
        public Task<MaterialImage> GetByIdAsync(int id);
        public Task<MaterialImage> UpdateAsync(int id, MaterialImage material);
        public Task<MaterialImage> AddAsync(MaterialImage materialImage);
        public Task<bool> DeleteAsync(int id);
        public Task<IList<MaterialImage>?> GetAllByFunc(Expression<Func<MaterialImage, bool>> func);
        public Task<MaterialImage?> GetByFunc(Expression<Func<MaterialImage, bool>> func);
    }
}
