using MaterialsList.Frontend.Models.Dto;
using Newtonsoft.Json;
using System.Net.Http.Headers;
using MaterialsList.Frontend.Models;
using MaterialsList.Frontend;

namespace materialslist_ui.Attributes
{
	public class FileRepository
	{
        public FileRepository()
        {
            
        }
		
		public async Task<int> AddFile(IFormFile? file, HttpClient client, bool isImage)
		{
			string apiUrl = SD.FilesAPIBase + "/api/download/materials/upload";
			string apiUrlImage = SD.FilesAPIBase + "/api/image/upload";
			HttpResponseMessage postResponse = null;
		int Id = 0;
			byte[] fileData = null;
			using (BinaryReader binaryReader = new BinaryReader(file.OpenReadStream()))
			{
				fileData = binaryReader.ReadBytes((int)file.Length);
			}
			ByteArrayContent byteArrayContent = new ByteArrayContent(fileData);
			byteArrayContent.Headers.ContentType = new MediaTypeHeaderValue(file.ContentType);
			MultipartFormDataContent multipartContent = new MultipartFormDataContent();
			multipartContent.Add(byteArrayContent, "File", file.FileName);
			if(isImage) postResponse = await client.PostAsync(apiUrlImage, multipartContent);
			if(!isImage) postResponse = await client.PostAsync(apiUrl, multipartContent);
			string postContent = await postResponse.Content.ReadAsStringAsync();
			ResponseDto postResponseDto = JsonConvert.DeserializeObject<ResponseDto>(postContent);
			if (postResponseDto.Result != null)
			{
				if(isImage)
				{
					Image imageInfo;
					imageInfo = JsonConvert.DeserializeObject<Image>(Convert.ToString(postResponseDto.Result));
					Id = imageInfo.ImageId;
				}
				if (!isImage)
				{
					Filebase fileInfo;
					fileInfo = JsonConvert.DeserializeObject<Filebase>(Convert.ToString(postResponseDto.Result));
					Id = fileInfo.FileId;
				}
			}
			return Id;
		}
	}

}
