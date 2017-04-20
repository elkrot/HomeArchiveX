using System;
using System.Collections.Generic;

namespace HomeArchiveX.Model
{
    public partial class Category
    {
        public int CategoryKey { get; set; }
        public string CategoryTitle { get; set; }
        public Nullable<int> ParentCategoryKey { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
    }
}
