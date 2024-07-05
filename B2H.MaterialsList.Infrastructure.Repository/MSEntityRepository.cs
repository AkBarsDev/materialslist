using B2H.MaterialsList.Core.Service;
using B2H.MaterialsList.Infrastructure.Repository.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace B2H.MaterialsList.Infrastructure.Repository
{
    public class MSEntityRepository<T> : IEntityRepository<T> where T : class
    {
        private readonly MaterialsListContext _dbContext;
        private DbSet<T> _set;

        public MSEntityRepository(MaterialsListContext context)
        {
            _dbContext = context;
            _set = _dbContext.Set<T>();
        }

        public async Task AddAsync(T data)
        {
            await _set.AddAsync(data);
            await _dbContext.SaveChangesAsync();
        }

        public async Task UpdateAsync(T data)
        {
            _set.Update(data);
            await _dbContext.SaveChangesAsync();
        }
        public async Task DeleteAsync(int id)
        {
            var data = await _set.FindAsync(id);
            if (data != null)
            {
                _set.Remove(data);
                await _dbContext.SaveChangesAsync();
            }
        }

        public async Task<IEnumerable<T>> GetAllAsync()
        {
            return await _set.AsNoTracking().ToListAsync();
        }

        public async Task<IList<T>?> GetAllByFunc(Expression<Func<T, bool>> func)
        {
            return await _set.Where(func).AsNoTracking().ToListAsync();
        }

        public async Task<T?> GetByFunc(Expression<Func<T, bool>> func)
        {
            return await _set.AsNoTracking().FirstOrDefaultAsync(func);
        }

        public async Task<T> GetByIdAsync(int id)
        {
            return await _set.FindAsync(id);
        }

    }
}
