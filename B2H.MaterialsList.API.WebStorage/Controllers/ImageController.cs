using Azure;
using B2H.MaterialsList.API.DataTransfer.Dto;
using B2H.MaterialsList.API.WebStorage.Service;
using B2H.MaterialsList.Core.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Hosting;
using System.IO;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace B2H.MaterialsList.API.WebStorage.Controllers
{
	[Route("api/image")]
	[ApiController]
	public class ImageController(IWebHostEnvironment environment, IFileManagerService<Image> imageManager) : ControllerBase
	{
		public IWebHostEnvironment _environment = environment;
		protected ResponseDto _response { get; set; } = new ResponseDto();
		readonly private IFileManagerService<Image> _service = imageManager;

		public class FileUPloadAPI
		{
			public int id { get; set; }
			public IFormFile file { get; set; }
		}

		[HttpGet("{id}")]
		public async Task<IActionResult> GetAsync(int id)
		{
			try
			{
				Image image = await _service.GetFileAsync(id);
				string path = Path.Combine(SD.PathStorageBase, image.Path, image.ImageId + "_" + image.Name);
				return PhysicalFile(path, image.Type);
			}
			catch (Exception ex)
			{
				return PhysicalFile(SD.PathStorageBase + "Source\\Materials\\Images\\NotFound.svg", "image/svg+xml");
			}
		}

		[HttpPut]
		public async Task<ResponseDto> Post(IFormFile file,  int id)
		{
			if (file == null || file.Length == 0)
			{
				_response.DisplayMessage = "Not Found.";
				_response.IsSuccess = false;
				return _response;
			}
			try
			{
				var image = await _service.UpdateFileAsync(id, file);
				_response.Result = image;
			}
			catch (Exception ex)
			{
				_response.DisplayMessage = ex.Message;
				_response.IsSuccess = false;
			}
			return _response;
		}
		[HttpPost("upload")]
		public async Task<ResponseDto> Upload(IFormFile file)
		{
			if (file == null || file.Length == 0)
			{
				_response.DisplayMessage = "Not Found.";
				_response.IsSuccess = false;
				return _response;
			}
			try
			{
				var image = await _service.AddFileAsync(file);
				_response.Result = image;
			}
			catch (Exception ex)
			{
				_response.DisplayMessage = ex.Message;
				_response.IsSuccess = false;
			}
			return _response;
		}

		// DELETE api/<ImageUploadController>/5
		[HttpDelete("{id}")]
		public async Task<ResponseDto> Delete(int id)
		{
			try
			{
				await _service.DeleteFileAsync(id);
			}
			catch (Exception ex)
			{
				_response.DisplayMessage = ex.Message;
				_response.IsSuccess = false;
			}
			return _response;
		}
	}
}
