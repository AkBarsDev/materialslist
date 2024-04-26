using System;

namespace B2H.MaterialsList.API.DataTransfer.Dto
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
