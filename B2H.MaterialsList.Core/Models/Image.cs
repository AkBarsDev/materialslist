using System;
using System.Collections.Generic;

namespace B2H.MaterialsList.Core.Models;

public partial class Image
{
    public int ImageId { get; set; }

    public string Name { get; set; } = null!;

    public string Path { get; set; } = null!;

    public DateTime CreatedAt { get; set; }

    public DateTime UpdatedAt { get; set; }
    public string Type { get; set; } = null!;
    public virtual ICollection<MaterialImage> MaterialImages { get; set; } = new List<MaterialImage>();
}
