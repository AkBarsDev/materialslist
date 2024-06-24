using System.ComponentModel.DataAnnotations;

namespace B2H.MaterialsList.Core.Models
{
    public partial class MaterialImage
    {
        [Key]
        public int MaterialImageId { get; set; }
        public int ImageId { get; set; }
        public Guid? MaterialId { get; set; }
        public virtual Material Material { get; set; }
        public virtual Image Image { get; set; }
    }

}
