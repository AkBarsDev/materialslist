using B2H.MaterialsList.API.DataTransfer.Dto;
using B2H.MaterialsList.API.WebStorage.Service;
using B2H.MaterialsList.Core.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.FileProviders;
using Microsoft.Extensions.Hosting;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace B2H.MaterialsList.API.WebStorage.Controllers
{
	[Route("api/download/materials")]
	[ApiController]
	public class StorageMaterialsController(IFileManagerService<Filebase> fileManagerService) : ControllerBase
	{
		readonly private IFileManagerService<Filebase> _service = fileManagerService;
		protected ResponseDto _response { get; set; } = new ResponseDto();


		// GET api/<StorageMaterialsController>/5
		[HttpGet("{id}")]
		public async Task<object> Get(int id)
		{
			try
			{
				Filebase filebase = await _service.GetFileAsync(id);
				string fileName = filebase.FileId + "_" + filebase.Name;
				string filePath = Path.Combine(SD.PathStorageBase, filebase.Path);
				if (!System.IO.File.Exists(filePath + fileName))
					return NotFound("Folder not found.");
				IFileProvider provider = new PhysicalFileProvider(filePath);
				IFileInfo fileInfo = provider.GetFileInfo(fileName);
				var readStream = fileInfo.CreateReadStream();
				return File(readStream, "application/octet-stream", filebase.Name.Replace($"{filebase.FileId}_", ""));
			}
			catch (Exception ex)
			{
				return StatusCode(500, $"An error occurred: {ex.Message}");
			}
		}

		// POST api/<StorageMaterialsController>
		[HttpPut]
		public async Task<ResponseDto> Post(int id, IFormFile file)
		{
			if (file == null || file.Length == 0)
			{
				_response.DisplayMessage = "Not Found.";
				_response.IsSuccess = false;
				return _response;
			}
			try
			{
				var filebase = await _service.UpdateFileAsync(id, file);
				_response.Result = filebase;
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
				var filebase = await _service.AddFileAsync(file);
				_response.Result = filebase;
			}
			catch (Exception ex)
			{
				_response.DisplayMessage = ex.Message;
				_response.IsSuccess = false;

			}
			return _response;
		}

		//// PUT api/<StorageMaterialsController>/5
		//[HttpPut("{id}")]
		//public void Put(int id, [FromBody] string value)
		//{
		//}

		// DELETE api/<StorageMaterialsController>/5
		[HttpDelete("{id}")]
		public async Task<ResponseDto> Delete(int id)
		{
			try
			{
				await _service.DeleteFileAsync(id);
			}
			catch(Exception ex)
			{
				_response.DisplayMessage = ex.Message;
				_response.IsSuccess = false;
			}
			return _response;
		}
	}
}
