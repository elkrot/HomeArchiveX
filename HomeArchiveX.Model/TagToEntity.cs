using System;
using System.Collections.Generic;

namespace HomeArchiveX.Model
{
    public partial class TagToEntity
    {
        public int TargetEntityKey { get; set; }
        public int TagKey { get; set; }
        public System.DateTime ModifiedDate { get; set; }
        public virtual ArchiveEntity ArchiveEntity { get; set; }
        public virtual Tag Tag { get; set; }
    }
}
