using B2H.MaterialsList.API.DataTransfer.Dto;
using Microsoft.AspNetCore.Mvc;
using B2H.MaterialsList.Core.Migrations;
using Microsoft.EntityFrameworkCore.Design;
using B2H.MaterialsList.Infrastructure.Repository.Interfaces;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace MaterialsList.Backend.Controller
{
    [Route("api/Categories")]
    [ApiController]
    public class CategoriesController : ControllerBase
    {
        protected ResponseDto _response { get; set; }
        private readonly ICategoryRepository _categoryRepository;
        public CategoriesController(ICategoryRepository repositorty)
        {
            _categoryRepository = repositorty;
            this._response = new ResponseDto();
        }
        // GET: api/<ValuesController>
        [HttpGet]
        public async Task<object> Get()
        {
            try
            {
                IEnumerable<CategoryDto> categories = await _categoryRepository.GetCategoriesAsync();
                _response.Result = categories;
            }
            catch (Exception ex)
            {
                _response.IsSuccess = false;
                _response.DisplayMessage = ex.ToString();
            }
            return _response;
        }

        // GET api/<ValuesController>/5
        [HttpGet("{Guid}")]
        public async Task<object> Get(Guid Guid)
        {
            try
            {
                CategoryDto category = await _categoryRepository.GetCategoriesByIdAsync(Guid);
                _response.Result = category;
            }
            catch (Exception ex)
            {
                _response.IsSuccess = false;
                _response.DisplayMessage = ex.ToString();
            }
            return _response;
        }

        // POST api/<ValuesController>
        [HttpPost]
        public async Task<object> Post([FromBody] CategoryDto value)
        {
            try
            {
                CategoryDto category = await _categoryRepository.CreateUpdateCategoryAsync(value);
                _response.Result = category;
            }
            catch (Exception ex)
            {
                _response.IsSuccess = false;
                _response.DisplayMessage = ex.ToString();
            }
            return _response;
        }
            // PUT api/<ValuesController>/5
            [HttpPut("{Guid}")]
        public async Task<object> Put(Guid Guid, [FromBody] CategoryDto value)
        {
            try
            {
                CategoryDto category = await _categoryRepository.CreateUpdateCategoryAsync(Guid, value);
                _response.Result = category;
            }
            catch (Exception ex)
            {
                _response.IsSuccess = false;
                _response.DisplayMessage = ex.ToString();
            }
            return _response;
        }

        // DELETE api/<ValuesController>/5
        [HttpDelete("{Guid}")]
        public async Task<object> Delete(Guid Guid)
        {
            try
            {
                _response.Result = await _categoryRepository.DeleteCategoryAsync(Guid);
            }
            catch (Exception ex)
            {
                _response.IsSuccess = false;
                _response.DisplayMessage = ex.ToString();
            }
            return _response;
        }
        [HttpDelete("all")]
        public async Task<object> Delete()
        {
            try
            {
                _response.Result = await _categoryRepository.DeleteAllAsync();
            }
            catch (Exception ex)
            {
                _response.IsSuccess = false;
                _response.DisplayMessage = ex.ToString();
            }
            return _response;
        }
    }
}
