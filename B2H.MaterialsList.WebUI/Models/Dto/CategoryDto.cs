using MaterialsList.Frontend.Models.Dto;

namespace MaterialsList.Frontend.Models.Dto
{
    public class CategoryDto
    {
		public Guid CategoryId { get; set; }
		public string Name { get; set; }
		public Guid? ParentId { get; set; }
		public ICollection<ShortCategoryDto>? Children { get; set; }
		public ICollection<ShortMaterialDto>? Materials { get; set; }
	}

	
}
