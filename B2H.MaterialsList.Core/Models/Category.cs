using System;
using System.Collections.Generic;

namespace B2H.MaterialsList.Core.Models;

public partial class Category
{
    public Guid CategoryId { get; set; }
	public Guid IntegrationCategoryId { get; set; }
	public string Name { get; set; } = null!;
    public Guid? ParentId { get; set; }
    public virtual ICollection<Category> InverseParent { get; set; } = new List<Category>();
    public virtual ICollection<Material> Materials { get; set; } = new List<Material>();
    public virtual Category? Parent { get; set; }
}
