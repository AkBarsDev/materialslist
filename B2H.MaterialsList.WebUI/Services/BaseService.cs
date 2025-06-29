﻿using MaterialsList.Frontend.Models;
using MaterialsList.Frontend.Models.Dto;
using MaterialsList.Frontend.Services.IServices;
using Newtonsoft.Json;
using Serilog;
using System.Net.Http.Headers;
using System.Text;

namespace MaterialsList.Frontend.Services
{
	public class BaseService : IBaseService
	{
		public ResponseDto responseModel { get; set; }
		public IHttpClientFactory httpClient { get; set; }
		public BaseService(IHttpClientFactory httpClient)
		{
			this.responseModel = new ResponseDto();
			this.httpClient = httpClient;
		}


		public async Task<T> SendAsync<T>(ApiRequest apiRequest)
		{
			 try
			{
				var client = httpClient.CreateClient("MaterialsAPI");
				HttpRequestMessage message = new HttpRequestMessage();
				message.Headers.Add("Accept", "application/json");
				message.RequestUri = new Uri(apiRequest.Url);
				client.DefaultRequestHeaders.Clear();
				if (apiRequest.Data != null)
				{
					message.Content = new StringContent(JsonConvert.SerializeObject(apiRequest.Data),
						Encoding.UTF8, "application/json");
				}
				//if (!string.IsNullOrEmpty(apiRequest.AccessToken))
				//{
					//client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", apiRequest.AccessToken);
				//}
				
				HttpResponseMessage apiResponse = null;
				switch (apiRequest.ApiType)
				{
					case SD.ApiType.POST:
						message.Method = HttpMethod.Post;
						break;
					case SD.ApiType.PUT:
						message.Method = HttpMethod.Put;
						break;
					case SD.ApiType.DELETE:
						message.Method = HttpMethod.Delete;
						break;
					default:
						message.Method = HttpMethod.Get;
						break;
				}
				Log.Write(Serilog.Events.LogEventLevel.Debug, apiRequest.Url);
				apiResponse = await client.SendAsync(message);
				var apiContent = await apiResponse.Content.ReadAsStringAsync();
				Log.Write(Serilog.Events.LogEventLevel.Debug,apiContent);
				var apiResponseDto = JsonConvert.DeserializeObject<T>(apiContent);
				return apiResponseDto;
			}
			catch (Exception ex)
			{
				var dto = new ResponseDto
				{
					DisplayMessage = "Error",
					ErrorMessage = new List<string> { Convert.ToString(ex.Message) },
					IsSuccess = false
				};
				var res = JsonConvert.SerializeObject(dto);
				var apiResponseDto = JsonConvert.DeserializeObject<T>(res);
				return apiResponseDto;
			}
		}

		public void Dispose()
		{
			//throw new NotImplementedException();
		}
	}
}
