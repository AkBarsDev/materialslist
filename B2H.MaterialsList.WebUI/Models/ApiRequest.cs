
using Microsoft.AspNetCore.Mvc;
using static MaterialsList.Frontend.SD;
using System.Security.AccessControl;

namespace MaterialsList.Frontend.Models
{
	public class ApiRequest
	{
		public ApiType ApiType { get; set; } = ApiType.GET;
		public string Url { get; set; }
		public object Data { get; set; }
		public string AccessToken { get; set; }
	}
}



