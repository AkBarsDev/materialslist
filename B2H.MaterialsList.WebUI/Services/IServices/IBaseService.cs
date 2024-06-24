using MaterialsList.Frontend.Models.Dto;
using MaterialsList.Frontend.Models;

namespace MaterialsList.Frontend.Services.IServices
{

		public interface IBaseService : IDisposable
		{
			ResponseDto responseModel { get; set; }
			Task<T> SendAsync<T>(ApiRequest apiRequest);
		}


}
