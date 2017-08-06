using System;
using System.Collections.Generic;

namespace HomeArchiveX.Model
{
    public partial class ArchiveEntity
    {
        public ArchiveEntity()
        {
            this.ArchiveEntity1 = new List<ArchiveEntity>();
            this.CategoryToEntities = new List<CategoryToEntity>();
            this.ImageToEntities = new List<ImageToEntity>();
            this.TagToEntities = new List<TagToEntity>();
        }

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
        public virtual ICollection<ArchiveEntity> ArchiveEntity1 { get; set; }
        public virtual ArchiveEntity ArchiveEntity2 { get; set; }
        public virtual Drive Drive { get; set; }
        public virtual List<CategoryToEntity> CategoryToEntities { get; set; }
        public virtual List<ImageToEntity> ImageToEntities { get; set; }
        public virtual List<TagToEntity> TagToEntities { get; set; }
    }
}
