namespace B2H.MaterialsList.API.DataTransfer.Dto
{
    public class ShortCategoryDto
    {
        public Guid Id { get; set; } = Guid.Empty;
        public string Name { get; set; }
        public int CategoryCount { get; set; }
        public int MaterialCount { get; set; }
        public ShortCategoryDto()
        {
        }
        public ShortCategoryDto(string name, int categoryCount, int materialCount)
        {
            Name = name;
            CategoryCount = categoryCount;
            MaterialCount = materialCount;
        }
        public ShortCategoryDto(Guid guid,
                          string name,
                          int categoryCount,
                          int materialCount)
        {
            Id = guid;
            Name = name;
            CategoryCount = categoryCount;
            MaterialCount = materialCount;
        }
    }
}
