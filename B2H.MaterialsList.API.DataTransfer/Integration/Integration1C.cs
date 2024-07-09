using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace B2H.MaterialsList.API.DataTransfer.Integration
{
	public class Integration1C
	{
		ICollection<MaterialIntegration1C> Materials { get; set; }
		ICollection<CategoryIntegration1C> Categories { get; set; }
	}
	public class MaterialIntegration1C
	{
		public Guid MaterialId { get; set; }
		public Guid? IntegrationId { get; set; }
		public string Name { get; set; }
		public string? Gost { get; set; }
		public string? Grade { get; set; }
		public DateTime CreateAt { get; set; }
		public DateTime UpdateAt { get; set; }
		public Guid? CategoryId { get; set; }
		public Guid? IntegrationCategoryId { get; set; }
	}
	public class CategoryIntegration1C 
	{
		public Guid CategoryId { get; set; }
		public Guid? IntegrationCategoryId { get; set; }
		public string Name { get; set; } = null!;
		public Guid? PrentId { get; set; }
	}
}
