using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.WpfUI.View.Admin
{
    public class GridViewModel
    {
        public GridViewModel()
        {
            FirstName = "Shai";
            LastName = "Vashdi";
        }

        [Category("Information")]
        [DisplayName("First Name")]
        [Description("This property uses a TextBox as the default editor.")]
        public string FirstName { get; set; }

        [Category("Information")]
        [DisplayName("Last Name")]
        [Description("This property uses a TextBox as the default editor.")]
        public string LastName { get; set; }
    }
}
