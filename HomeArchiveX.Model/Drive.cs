using System;
using System.Collections.Generic;

namespace HomeArchiveX.Model
{
    public partial class Drive
    {
        public Drive()
        {
            this.ArchiveEntities = new List<ArchiveEntity>();
        }

        public int DriveId { get; set; }
        public string Title { get; set; }
        public Nullable<int> HashCode { get; set; }
        public byte[] DriveInfo { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
         public string DriveCode { get; set; }
        public virtual ICollection<ArchiveEntity> ArchiveEntities { get; set; }
    }
}
