
using B2H.MaterialsList.Core.Models;

namespace B2H.MaterialsList.API.WebStorage.Service
{
	public interface IFileManagerService<T>
	{
		public Task<T> AddFileAsync(IFormFile file);
		public Task DeleteFileAsync(int id);
		public Task<T> UpdateFileAsync(int id, IFormFile file);
		public Task<T> GetFileAsync(int id);
	}
}
