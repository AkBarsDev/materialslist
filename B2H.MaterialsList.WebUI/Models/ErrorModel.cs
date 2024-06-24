using MaterialsList.Frontend;

namespace MaterialsList.Frontend.Models
{
	public class ErrorModel
	{
		public string? Message { get; set; }
		public string Code { get; set; }
		public ErrorModel(string code)
		{
			this.Code = code;
			switch (Code)
			{
				case "200":
					Message = "";
					break;
				case "404":
					Message = "Страница не найдена";
					break;
				case "500":
					Message = "";
					break;
				default:
					break;
			}
		}

        public ErrorModel()
        {
            
        }


    }
}
