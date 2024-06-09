using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Hosting;
namespace B2H.MaterialsList.API.WebStorage.Controllers
{
    [ApiController]
    public class ResourceMaterialsController : ControllerBase
    {
        private const string V = "api/download/";
        private readonly IWebHostEnvironment _hostEnvironment;
        public ResourceMaterialsController(IWebHostEnvironment hostEnvironment)
        {
            _hostEnvironment = hostEnvironment;
        }

        [HttpGet]
        [Route(V + "tamplates")]
        public async Task<object> GetTamplates()
        {
            try
            {
                //var filePath = Path.Combine(@"/home/", "Source/Tamplates/Tamplates.rar");
				var filePath = Path.Combine(SD.PathStorageBase, "Source/Tamplates/Tamplates.rar");
				if (!System.IO.File.Exists(filePath))
                    return NotFound("File not found.");
                var bytes = Tools.GetByteFile(filePath);
                // Return the zip file as a byte array
                return File(bytes, "application/zip", "tamplates.zip");
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"An error occurred: {ex.Message}");
            }
        }

        [HttpGet]
        [Route(V + "requirements")]
        public async Task<object> GetRequirements()
        {
            try
            {
				//var folderPath = Path.Combine(@"/home/", "Source//Requrements");
				var folderPath = Path.Combine(SD.PathStorageBase, "Source/Requrements");
                if (!Directory.Exists(folderPath))
                    return NotFound("Folder not found.");
                var files = Directory.GetFiles(folderPath);

                if (files.Length == 0)
                    return NotFound("No files found to download.");

                // Create a temporary memory stream to hold the zip archive
                var Archives = Tools.GetArchive(files);
                // Return the zip file as a byte array
                return File(Archives, "application/zip", "requirements.zip");
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"An error occurred: {ex.Message}");
            }
        }

    }
}
