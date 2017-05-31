using System;
using System.Collections.Generic;

namespace HomeArchiveX.Model
{
    public partial class Category
    {
        public Category()
        {
            this.CategoryToEntities = new List<CategoryToEntity>();
        }

        public int CategoryKey { get; set; }
        public string CategoryTitle { get; set; }
        public Nullable<int> ParentCategoryKey { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public virtual ICollection<CategoryToEntity> CategoryToEntities { get; set; }
    }
}
