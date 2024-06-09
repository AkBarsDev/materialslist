using Azure;
using B2H.MaterialsList.Core.Migrations;
using B2H.MaterialsList.Core.Models;
using B2H.MaterialsList.Infrastructure.Repository.Interfaces;
using Microsoft.EntityFrameworkCore;
namespace B2H.MaterialsList.API.WebStorage.Service
{
	public class ImageManagerService(IEntityIntRepository<Image> repository) : IFileManagerService<Image>
	{
		private readonly IEntityIntRepository<Image> _repository = repository;
		private string _basePath = "Source/Materials/Images/";
		public async Task<Image> AddFileAsync(IFormFile file)
		{
			Image image = new Image { Name = file.FileName, Type = file.ContentType, Path = _basePath, CreatedAt = DateTime.Now, UpdatedAt = DateTime.Now };
			try
			{
				await repository.AddAsync(image);
			}
			catch
			{
				throw new Exception("Ошибка при добавлении материала!");
			}
			try
			{
				var path = Path.Combine(SD.PathStorageBase, _basePath, image.ImageId	 + "_" + file.FileName);
				using (var stream = new FileStream(path, FileMode.Create))
				{
					await file.CopyToAsync(stream);
				}
			}
			catch (Exception ex)
			{
				throw new Exception("Ошибка при сохранении материала!");
				_repository.DeleteAsync(image.ImageId);
			}
			return image;
		}

		public async Task DeleteFileAsync(int id)
		{
			var image = await repository.GetByIdAsync(id);
			var path = Path.Combine(SD.PathStorageBase, image.Path + image.ImageId + "_" + image.Name);
			if (image == null)
				throw new Exception("Файл отсутствует в базе.");
			if (File.Exists(path))
				File.Delete(path); 
			try
			{
				await _repository.DeleteAsync(image.ImageId);
			}
			catch
			{
				throw new Exception("В проецессе удаления из бд, произошла ошибка");
			}

		}

		public async Task<Image> GetFileAsync(int id)
		{
			var image = await repository.GetByIdAsync(id);
			if (image == null)
				throw new Exception("Файл отсутствует в базе.");
			return image;
		}

		public async Task<Image> UpdateFileAsync(int id, IFormFile file)
		{
			var image = await repository.GetByIdAsync(id);
			var path = Path.Combine(SD.PathStorageBase, image.Path + image.ImageId + "_" + image.Name);
			if (image == null)
				throw new Exception("Файл отсутствует в базе.");
			if (File.Exists(path))
				File.Delete(path); 
			try
			{
				image.Name = file.FileName;
				image.Type = file.ContentDisposition;
				image.UpdatedAt = DateTime.Now;
				image.Path = _basePath;
				path = Path.Combine(SD.PathStorageBase, _basePath, image.ImageId + "_" + file.FileName);
				using (var stream = new FileStream(path, FileMode.Create))
				{
					await file.CopyToAsync(stream);
				}
				await _repository.UpdateAsync(image);
			}
			catch
			{
				throw new Exception("В проецессе удаления из бд, произошла ошибка");
			}
			return image;
		}
	}
}
