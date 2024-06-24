using System.Diagnostics;
using System.Runtime.Serialization;

namespace B2H.MaterialsList.Core.Service.ExceptionService
{
    [DebuggerDisplay($"{{{nameof(GetDebuggerDisplay)}(),nq}}")]
    public class MaterialNotFoundException : ApplicationException
    {
        public MaterialNotFoundException()
        {
        }

        public MaterialNotFoundException(string? message) : base(message)
        {

        }

        public MaterialNotFoundException(string? message, Exception? innerException) : base(message, innerException)
        {
        }

        protected MaterialNotFoundException(SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }

        private string GetDebuggerDisplay()
        {
            return ToString();
        }
    }
}
