using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BlogLab.Models.Blog
{
    public class PagedResults<T>
    {
        public IEnumerable<T> Items { get; set; } //List<T> is when you need Add Remove but IEnum is for read only
        
        public int TotalCount { get; set; }
    }
}
