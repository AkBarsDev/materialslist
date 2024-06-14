using System.ComponentModel.DataAnnotations;

namespace MaterialsList.Frontend.Models
{
	public class Image
	{
	
			[Key]
			public int ImageId { get; set; }
			public string Name { get; set; }
			public string Path { get; set; }
			public string Type { get; set; }
			public DateTime CreatedAt { get; set; }
			public DateTime UpdatedAt { get; set; }
		
	}
}
