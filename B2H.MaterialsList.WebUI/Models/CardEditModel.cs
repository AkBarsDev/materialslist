using MaterialsList.Frontend.Models.Dto;
using Microsoft.AspNetCore.Http;
namespace MaterialsList.Frontend.Models
{
	public class CardEditModel
	{
        public CardEditModel(Guid materialId,
			string? name,
			string? gost,
			string? specs,
			Guid? categoryId,
			string categoryName,
			int? fileId, IEnumerable<int>? imagesId,
			List<CategoryDto> categories)
        {
            MaterialId = materialId;
			Name = name;
			Gost = gost;
			Specifications = specs;
			CategoryId = categoryId;
			CategoryName = categoryName;
			FileId = fileId;
			ImagesId = imagesId;
			Categories = categories;
        }
        public Guid MaterialId { get; set; }
		public string? Name { get; set; }
		public string? Gost { get; set; }
		public string? Specifications { get; set; }
		public Guid? CategoryId { get; set; }
		public string CategoryName { get; set;}
		public int? FileId { get; set; }
		public IEnumerable<int>? ImagesId { get; set; }
		public List<CategoryDto>  Categories { get; set; }

	}
}
