using Microsoft.AspNetCore.Http;
namespace MaterialsList.Frontend.Models
{
	public class MaterialForm
	{
		public string? Name { get; set; }
		public string? Gost { get; set; }
		public string? CategoryIdOption { get; set; }
		public IFormFile? Images { get; set; }
		public List<string>? Specifications { get; set; }
		public IFormFile? File {  get; set; }
	}
}
