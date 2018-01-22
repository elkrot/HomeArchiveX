using System;
using System.Collections.Generic;

namespace HomeArchiveX.Model
{
    public partial class Image
    {
        public Image()
        {
            this.ArchiveEntities = new HashSet<ArchiveEntity>();
        }

        public int ImageKey { get; set; }
        public byte[] Thumbnail { get; set; }
        public string ImagePath { get; set; }
        public string ThumbnailPath { get; set; }
        public string ImageTitle { get; set; }
        public Nullable<int> HashCode { get; set; }
        public System.DateTime CreatedDate { get; set; }
        //public virtual ICollection<ImageToEntity> ImageToEntities { get; set; }
        public virtual ICollection<ArchiveEntity> ArchiveEntities { get; set; }
    }
}
