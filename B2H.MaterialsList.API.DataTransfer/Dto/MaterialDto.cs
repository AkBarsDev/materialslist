namespace B2H.MaterialsList.API.DataTransfer.Dto
{
	public class MaterialDto
    {
        public Guid MaterialId { get; set; }
        public string Name { get; set; }
        public string? Gost { get; set; }
        public DateTime CreateAt { get; set; }
        public DateTime UpdateAt { get; set; }
        public int? FileId { get; set; }
        public Guid? CategoryId { get; set; }
        public Guid? ModeratorId { get; set; }
        public IEnumerable<int>? Images { get; set; }
        public string? Specifications { get; set; }

    }
}
