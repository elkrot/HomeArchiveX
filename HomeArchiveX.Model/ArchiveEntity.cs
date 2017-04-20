using System;
using System.Collections.Generic;

namespace HomeArchiveX.Model
{
    public partial class ArchiveEntity
    {
        public int ArchiveEntityKey { get; set; }
        public Nullable<int> ParentEntityKey { get; set; }
        public Nullable<int> DriveId { get; set; }
        public string Title { get; set; }
        public byte EntityType { get; set; }
        public string EntityPath { get; set; }
        public string EntityExtension { get; set; }
        public string Description { get; set; }
        public Nullable<int> HashCode { get; set; }
        public byte[] EntityInfo { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public byte[] MFileInfo { get; set; }
    }
}
