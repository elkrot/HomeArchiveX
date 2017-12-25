using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Threading.Tasks;

namespace HomeArchiveX.Infrastructure.Config
{
    [Serializable]
    public class MyConfig
    {
        public WindowConfig MainWindow { get; set; }
        public Theme Theme { get; set; }

        public MyConfig()
        {
            MainWindow = new WindowConfig();
            MainWindow.Width = 600;
            MainWindow.Height = 400;

            Theme = Theme.Light;
        }
    }
}
