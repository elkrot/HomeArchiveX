using System;
using System.Collections.Generic;

namespace HomeArchiveX.Model
{
    public partial class TagToEntity
    {
        public int TargetEntityKey { get; set; }
        public int TagKey { get; set; }
        public System.DateTime ModifiedDate { get; set; }
    }
}
