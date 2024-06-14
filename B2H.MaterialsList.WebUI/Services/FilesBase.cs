using MaterialsList.Frontend.Services.IServices;
using MaterialsList.Frontend.Models;
using MaterialsList.Frontend.Models.Dto;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json.Linq;

namespace MaterialsList.Frontend.Services
{
    public class FilesBase : BaseService, IBaseService
    {
        private readonly IHttpClientFactory _clientFactory;
        public FilesBase(IHttpClientFactory clientFactory) : base(clientFactory)
        {
            _clientFactory = clientFactory;
        }







    }
}
