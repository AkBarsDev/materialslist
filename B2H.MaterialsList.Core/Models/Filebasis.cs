using System;
using System.Collections.Generic;

namespace B2H.MaterialsList.Core.Models;

public partial class Filebasis
{
    public int FileId { get; set; }

    public string Name { get; set; } = null!;

    public string Path { get; set; } = null!;

    public DateTime CreatedAt { get; set; }

    public DateTime UpdatedAt { get; set; }

    public string Type { get; set; } = null!;

    public virtual ICollection<Material> Materials { get; set; } = new List<Material>();
}
