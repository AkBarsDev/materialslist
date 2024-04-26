using System.ComponentModel.DataAnnotations;

namespace B2H.MaterialsList.Core.Models
{
    public class Filebase
    {
        [Key]
        public int FileId { get; set; }
        public string Name { get; set; }
        public string Path { get; set; }
        public string Type { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime UpdatedAt { get; set; }
    }
}
