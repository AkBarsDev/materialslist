using System;
using System.Collections.Generic;

namespace B2H.MaterialsList.Core.Models;

public partial class HistoryUpdate
{
    public Guid HistoryId { get; set; }

    public DateTime DataUpdate { get; set; }

    public Guid MaterialId { get; set; }

    public virtual Material Material { get; set; } = null!;
}
