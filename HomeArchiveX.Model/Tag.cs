using System;
using System.Collections.Generic;

namespace HomeArchiveX.Model
{
    public partial class Tag
    {
        public Tag()
        {
            this.TagToEntities = new List<TagToEntity>();
        }

        public int TagKey { get; set; }
        public string TagTitle { get; set; }
        public System.DateTime ModififedDate { get; set; }
        public virtual ICollection<TagToEntity> TagToEntities { get; set; }
    }
}
