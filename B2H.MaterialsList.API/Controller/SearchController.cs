using Microsoft.AspNetCore.Mvc;
using B2H.MaterialsList.API.DataTransfer.Dto;
using B2H.MaterialsList.Infrastructure.Repository.Interfaces;
using B2H.MaterialsList.Core.Mapper.Externsions;
namespace B2H.MaterialsList.API.Controller
{
    [ApiController]
    public class SearchController(IMaterialRepository materialService, ICategoryRepository categoryRepository) : ControllerBase
    {
        protected ResponseDto _response { get; set; } = new ResponseDto();
        private readonly IMaterialRepository _materialRepository = materialService;
        private readonly ICategoryRepository _categoryRepository = categoryRepository;

		// GET api/<MaterialsController>?value=
		[HttpGet]
		[Route("api/materials/search/")]
		public async Task<object> GetMaterials(string value) 
        {
            try
            {
                IEnumerable < MaterialDto > materials = (await _materialRepository.Search(value)).ToMaterialsDto();
                _response.Result = materials?.Select(y => new ShortMaterialDto(y.MaterialId, y.Name ,y.CreateAt, y.UpdateAt, y.FileId));
            }
            catch (Exception ex)
            {
                _response.IsSuccess = false;
                _response.DisplayMessage = ex.InnerException.Message.ToString();
            }
            return _response;
        }
		[Route("api/category/search/")]
		[HttpGet]
		public async Task<object> Get(string value)
		{
			try
			{
				_response.Result = await _categoryRepository.Search(value);
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.DisplayMessage = ex.InnerException.Message.ToString();
			}
		return _response;
		}
	}
}
