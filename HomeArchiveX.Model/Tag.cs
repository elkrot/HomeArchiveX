using System;
using System.Collections.Generic;

namespace HomeArchiveX.Model
{
    public partial class Tag
    {
        public Tag()
        {
            this.ArchiveEntities = new HashSet<ArchiveEntity>();
        }

        public int TagKey { get; set; }
        public string TagTitle { get; set; }
        public System.DateTime ModififedDate { get; set; }
        public virtual ICollection<ArchiveEntity> ArchiveEntities { get; set; }
    }
}
