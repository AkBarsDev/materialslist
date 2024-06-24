using System.ComponentModel.DataAnnotations;

namespace B2H.MaterialsList.API.DataTransfer.Dto
{
    public class ResponseDto
    {
        public bool IsSuccess { get; set; } = true;
        public object Result { get; set; }
        public string DisplayMessage { get; set; } = string.Empty;
        public List<string>? ErrorMessage { get; set; }
    }
}
