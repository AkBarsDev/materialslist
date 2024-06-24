
using B2H.MaterialsList.API.DataTransfer.Dto;
using MaterialsList.Frontend.Models;
using MaterialsList.Frontend.Services.IServices;

namespace MaterialsList.Frontend.Services
{
    public class AuthService : BaseService, IAuthService
    {
        public AuthService(IHttpClientFactory httpClient) : base(httpClient)
        {
        }

        public async Task<ResponseDto> Authenticate(string mail, string password)
        {
            return await this.SendAsync<ResponseDto>(new ApiRequest
            {
                ApiType = SD.ApiType.GET,
                Url = SD.MaterialsAPIBase + $"/api/auth/login?mail={mail}&password={password}"
            });
        }
    }
}
