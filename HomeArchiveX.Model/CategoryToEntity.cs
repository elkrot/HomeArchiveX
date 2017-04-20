using System;
using System.Collections.Generic;

namespace HomeArchiveX.Model
{
    public partial class CategoryToEntity
    {
        public int TargetEntityKey { get; set; }
        public int CategoryKey { get; set; }
        public System.DateTime ModifiedDate { get; set; }
    }
}
