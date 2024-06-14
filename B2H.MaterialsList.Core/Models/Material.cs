using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace B2H.MaterialsList.Core.Models;

public partial class Material
{
    [Key]
    public Guid MaterialId { get; set; }

    public string Name { get; set; } = null!;

    public string? Gost { get; set; }

    public Guid? CategoryId { get; set; }

    public Guid? ModeratorId { get; set; }

    public string? Specifications { get; set; }

    public DateTime UpdateAt { get; set; }

    public DateTime CreateAt { get; set; }

    public int? FileId { get; set; }
    public IList<int>? MaterialImagesIds { get; set; }

    public virtual Category? Category { get; set; }

    public virtual Filebase? File { get; set; }

    public virtual ICollection<HistoryUpdate> HistoryUpdates { get; set; } = new List<HistoryUpdate>();
    [DeleteBehavior(DeleteBehavior.Restrict)]
    public virtual ICollection<MaterialImage> MaterialImages { get; set; } = new List<MaterialImage>();
}
