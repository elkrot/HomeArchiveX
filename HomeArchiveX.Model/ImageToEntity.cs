using System;
using System.Collections.Generic;

namespace HomeArchiveX.Model
{
    public partial class ImageToEntity
    {
        public int TargetEntityKey { get; set; }
        public int ImageKey { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
    }
}
