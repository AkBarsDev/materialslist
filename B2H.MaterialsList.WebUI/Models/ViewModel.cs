namespace MaterialsList.Frontend.Models
{
	public class ViewModel<P,T>
	{
        public ViewModel()
        {
            
        }

        public P ViewObject {  get; set; }
        public List<T> ViewBreadCrumbs {  get; set; }

	}
}
