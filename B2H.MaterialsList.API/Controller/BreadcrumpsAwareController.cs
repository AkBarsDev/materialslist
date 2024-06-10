using Azure;
using B2H.MaterialsList.API.DataTransfer.Dto;
using B2H.MaterialsList.Infrastructure.Repository.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Hosting;
namespace B2H.MaterialsList.API.Controller
{
    [Route("api/Breadcrumb")]
	[ApiController]
	public class BreadcrumpsAwareController(IBreadcrumbAwareRepository repository) : ControllerBase
	{
		private readonly IBreadcrumbAwareRepository _repository = repository;
		protected ResponseDto _response { get; set; } = new ResponseDto();
		[HttpGet("category/{Guid}")]
		public async Task<object> GetBreadcrumbCategory(Guid Guid)
		{
			try
			{
				IEnumerable<ShortCategoryDto> categories = await _repository.GetBreadcrumbCategory(Guid);
				_response.Result = categories;
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.DisplayMessage = ex.Message.ToString();
			}
			return _response;
		}
		[HttpGet("material/{Guid}")]
		public async Task<object> GetBreadcrumbMaterial(Guid Guid)
		{
			try
			{
				IEnumerable<ShortCategoryDto> categories = await _repository.GetBreadcrumbMaterial(Guid);
				_response.Result = categories;
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.DisplayMessage = ex.Message.ToString();
			}
			return _response;
		}
	}
}
