namespace MaterialsList.Frontend.Models
{
	public class Category
	{
        public Category()
        {
            
        }
        public Guid CategoryId { get; set; }
		public string Name { get; set; }
		public Guid? ParentId { get; set; }
		public ICollection<Category> Children { get; set;}

	}
}
