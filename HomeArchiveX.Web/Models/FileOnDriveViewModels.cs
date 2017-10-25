using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace HomeArchiveX.Web.Models
{
    
        public partial class DriveDto
        {

            public int DriveId { get; set; }
            [Required]
            public string Title { get; set; }
        }

}