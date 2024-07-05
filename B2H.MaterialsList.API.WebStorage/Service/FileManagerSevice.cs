using Azure;
using B2H.MaterialsList.Core.Migrations;
using B2H.MaterialsList.Core.Models;
using B2H.MaterialsList.Infrastructure.Repository.Interfaces;
using Microsoft.EntityFrameworkCore;
namespace B2H.MaterialsList.API.WebStorage.Service
{
	public class FileManagerSevice(IEntityRepository<Filebase> repository) : IFileManagerService<Filebase>
	{
		private readonly IEntityRepository<Filebase> _repository = repository;
		private string _basePath = "Source/Materials/Files/";
		public async Task<Filebase> AddFileAsync(IFormFile file)
		{
			Filebase filebase = new Filebase { Name = file.FileName, Type = file.ContentType, Path = _basePath, CreatedAt = DateTime.Now, UpdatedAt = DateTime.Now };
			try
			{
				await repository.AddAsync(filebase);
			}
			catch
			{
				throw new Exception("Ошибка при добавлении материала!");
			}
			try
			{
				var path = Path.Combine(SD.PathStorageBase, _basePath, filebase.FileId + "_" + file.FileName);
				using (var stream = new FileStream(path, FileMode.Create))
				{
					await file.CopyToAsync(stream);
				}
			}
			catch (Exception ex)
			{
				throw new Exception("Ошибка при сохранении материала!");
				_repository.DeleteAsync(filebase.FileId);
			}
			return filebase;
		}

		public async Task DeleteFileAsync(int id)
		{
			var filebase = await repository.GetByIdAsync(id);
			var path = Path.Combine(SD.PathStorageBase, filebase.Path + filebase.FileId + "_" + filebase.Name);
			if (filebase == null)
				throw new Exception("Файл отсутствует в базе.");
			if (File.Exists(path))
				File.Delete(path);
			try
			{
				await _repository.DeleteAsync(filebase.FileId);
			}
			catch
			{
				throw new Exception("В проецессе удаления из бд, произошла ошибка");
			}

		}

		public async Task<Filebase> GetFileAsync(int id)
		{
			var filebase = await repository.GetByIdAsync(id);
			if (filebase == null)
				throw new Exception("Файл отсутствует в базе.");
			return filebase;
		}

		public async Task<Filebase> UpdateFileAsync(int id, IFormFile file)
		{
			var filebase = await repository.GetByIdAsync(id);
			var path = Path.Combine(SD.PathStorageBase, filebase.Path + filebase.FileId + "_" + filebase.Name);
			if (filebase == null)
				throw new Exception("Файл отсутствует в базе.");
			if (File.Exists(path))
				File.Delete(path);
			try
			{
				filebase.Name = file.FileName; 
				filebase.Type = file.ContentDisposition;
				filebase.UpdatedAt = DateTime.Now;
				filebase.Path = _basePath;
				path = Path.Combine(SD.PathStorageBase, _basePath, filebase.FileId + "_" + file.FileName);
				using (var stream = new FileStream(path, FileMode.Create))
				{
					await file.CopyToAsync(stream);
				}
				await _repository.UpdateAsync(filebase);
			}
			catch
			{
				throw new Exception("В проецессе удаления из бд, произошла ошибка");
			}
			return filebase;
		}
	}
}
