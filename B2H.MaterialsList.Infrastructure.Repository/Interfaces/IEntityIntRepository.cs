using B2H.MaterialsList.Core.Models;
using System;
using System.Collections.Generic;
using System.Formats.Asn1;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace B2H.MaterialsList.Infrastructure.Repository.Interfaces
{
	public interface IEntityIntRepository<T> 
	{
		public Task<IEnumerable<T>> GetAllAsync();
		public Task<T> GetByIdAsync(int id);
		public Task UpdateAsync(T data);
		public Task AddAsync(T data);
		public Task DeleteAsync(int id);
		public Task<IList<T>?> GetAllByFunc(Expression<Func<T, bool>> func);
		public Task<T?> GetByFunc(Expression<Func<T, bool>> func);
	}
}
