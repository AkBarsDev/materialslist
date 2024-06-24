using B2H.MaterialsList.API.DataTransfer.Dto;

namespace MaterialsList.Frontend.Services.IServices
{
    public interface IAuthService
    {
        Task<ResponseDto> Authenticate(string mail, string password);
        
    }
}
