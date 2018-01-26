using System;
using System.Collections.Generic;

namespace HomeArchiveX.Model
{
    public partial class ArchiveEntity
    {
        public ArchiveEntity()
        {
            this.ArchiveEntity1 = new List<ArchiveEntity>();
            this.Categories = new HashSet<Category>();
            this.Images = new HashSet<Image>();
            this.Tags = new HashSet<Tag>();
        }

        public int ArchiveEntityKey { get; set; }
        public Nullable<int> ParentEntityKey { get; set; }
        public Nullable<int> DriveId { get; set; }
        public string Title { get; set; }
        public byte EntityType { get; set; }
        public string EntityPath { get; set; }
        public string EntityExtension { get; set; }
        public string Description { get; set; }
        public Nullable<long> FileSize { get; set; }
        public byte[] EntityInfo { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public byte[] MFileInfo { get; set; }
        public string Checksum { get; set; }
        public virtual ICollection<ArchiveEntity> ArchiveEntity1 { get; set; }
        public virtual ArchiveEntity ArchiveEntity2 { get; set; }
        public virtual Drive Drive { get; set; }
        public virtual ICollection<Tag> Tags { get; set; }
        public virtual ICollection<Image> Images { get; set; }
        public virtual ICollection<Category> Categories { get; set; }
    }
}
