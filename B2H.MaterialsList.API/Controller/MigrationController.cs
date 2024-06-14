using B2H.MaterialsList.Core.Service;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace B2H.MaterialsList.API.Controller
{
	[Route("api/migration")]
	[ApiController]
	public class MigrationController(MaterialsListContext materialsListContext, B2HMaterialsIdentityContext identityContext) : ControllerBase
	{
		readonly private MaterialsListContext _materialsListContext = materialsListContext;
		readonly private B2HMaterialsIdentityContext _identityContext = identityContext;
		[HttpGet]
		public ActionResult Get()
		{
			try
			{
				//var _categories = _materialsListContext.CategoriesMaterials.AsNoTracking().ToList();
				//_identityContext.CategoriesMaterials.AddRange(_categories);
				//_identityContext.SaveChanges();

				var _files = _materialsListContext.Filebases.AsNoTracking().ToList();
				_identityContext.Filebase.AddRange(_files);
				_identityContext.SaveChanges();

				var _materials = _materialsListContext.Materials.AsNoTracking().ToList();
				_identityContext.Materials.AddRange(_materials);
				_identityContext.SaveChanges();

				var _history = _materialsListContext.HistoryUpdates.AsNoTracking().ToList();
				_identityContext.HistoryUpdates.AddRange(_history);
				_identityContext.SaveChanges();

				var _image = _materialsListContext.Images.AsNoTracking().ToList();
				_identityContext.Images.AddRange(_image);
				_identityContext.SaveChanges();

				var _materialImages = _materialsListContext.MaterialImages.AsNoTracking().ToList();
				_identityContext.MaterialImages.AddRange(_materialImages);
				_identityContext.SaveChanges();

				return Ok();

			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}
	}
}
