using B2H.MaterialsList.API.DataTransfer.Dto;
using B2H.MaterialsList.Core.ApprovalManagement.Interface;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace B2H.MaterialsList.API.Controller
{
	[Route("api/materials")]
    [ApiController]
    public class MaterialsController(IMaterialsService materialsService) : ControllerBase
    {
        protected ResponseDto _response { get; set; } = new ResponseDto();
		private readonly IMaterialsService _materialsService = materialsService;


		[HttpGet("published")]
		public async Task<object> GetPublishedMaterials()
		{
			try
			{
				var materials = await _materialsService.GetPublishedMaterials();
				_response.Result = materials;
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.DisplayMessage = ex.Message.ToString();
			}
			return _response;
		}

		[HttpGet("draft/{id}")]
		public async Task<object> GetDraftMaterials(Guid id)
		{
			try
			{
			    var materials = await _materialsService.GetDraftMaterialsByUser(id == Guid.Empty ? null : id);
				_response.Result = materials;
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.DisplayMessage = ex.Message.ToString();
			}
			return _response;
		}

		[HttpGet("pending-approval")]
		public async Task<object> GetPendingApprovalMaterials()
		{
            try
			{
			    var materials = await _materialsService.GetPendingApprovalMaterials();
				_response.Result = materials;
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.DisplayMessage = ex.Message.ToString();
			}
			return _response;
		}
		[HttpGet("published/category/{id}")]
		public async Task<object> GetPublishedMaterials(Guid id)
		{
            try
			{
				var materials = await _materialsService.FindPublishedMaterialsForCategoryAsync(id);
				_response.Result = materials;
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.DisplayMessage = ex.Message.ToString();
			}
			return _response;
		}
		[HttpGet("published/category/{name}")]
		public async Task<object> GetPublishedMaterialsForCategory(string name)
		{
			try
			{
				var materials = await _materialsService.FindPublishedMaterialsForCategoryNameAsync(name);
				_response.Result = materials;
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.DisplayMessage = ex.Message.ToString();
			}
			return _response;
		}
		[HttpGet("published/{name}")]
		public async Task<object> GetPublishedMaterialsForName(string name)
		{
			try
			{
				var materials = await _materialsService.FindPublishedMaterialsForNameAsync(name);
				_response.Result = materials;
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.DisplayMessage = ex.Message.ToString();
			}
			return _response;
		}
        [HttpGet("published/{id}")]
		public async Task<object> GetPublishedMaterial(Guid id)
		{
			try
			{
				var materials = await _materialsService.GetPublishedMaterial(id);
				_response.Result = materials;
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.DisplayMessage = ex.Message.ToString();
			}
			return _response;
		}
		// GET: api/<ValuesController>
		[HttpGet]
        public async Task<object> Get()
        {
            try
            {
                IEnumerable<MaterialDto> materials = await _materialsService.GetAllMaterialsAsync();
                _response.Result = materials;
            }
            catch (Exception ex)
            {
                _response.IsSuccess = false;
                _response.DisplayMessage = ex.Message.ToString();
            }
            return _response;
        }

        // GET api/<MaterialsController>/5
        [HttpGet("{id}")]
        public async Task<object> Get(Guid id)
        {
            try
            {
                MaterialDto material = await _materialsService.GetMaterialAsync(id);
                _response.Result = material;
            }
            catch (Exception ex)
            {
                _response.IsSuccess = false;
                _response.DisplayMessage = ex.Message.ToString();
            }
            return _response;
        }

        // POST api/<MaterialsController>
        [HttpPost]
        public async Task<object> Post([FromBody] MaterialDto value)
        {
            try
            {
                MaterialDto material = await _materialsService.CreateMaterialsAsync(Guid.Empty, value);
                _response.Result = material;
            }
            catch (Exception ex)
            {
                _response.IsSuccess = false;
                _response.DisplayMessage = ex.Message.ToString();
            }
            return _response;
        }

        // PUT api/<MaterialsController>/5
        [HttpPut("{id}")]
        public async Task<object> Put(Guid id, [FromBody] MaterialDto value)
        {
            try
            {
                MaterialDto material = await _materialsService.UpdateMaterialsAsync(Guid.Empty,value);
                _response.Result = material;
            }
            catch (Exception ex)
            {
                _response.IsSuccess = false;
                _response.DisplayMessage = ex.Message.ToString();
            }
            return _response;
        }

        // DELETE api/<ValuesController>/5
        [HttpDelete("{id}")]
        public async Task<object> Delete(Guid Guid)
        {
            try
            {
                _response.Result = _materialsService.DeletedMaterials(Guid);
            }
            catch (Exception ex)
            {
                _response.IsSuccess = false;
                _response.DisplayMessage = ex.Message.ToString();
            }
            return _response;
        }
        //[HttpDelete]
        //public async Task<object> Delete()
        //{
        //    try
        //    {
        //        _response.Result = await _materialRepository.DeleteAllAsync();
        //    }
        //    catch (Exception ex)
        //    {
        //        _response.IsSuccess = false;
        //        _response.DisplayMessage = ex.Message.ToString();
        //    }
        //    return _response;
        //}
    }
}





