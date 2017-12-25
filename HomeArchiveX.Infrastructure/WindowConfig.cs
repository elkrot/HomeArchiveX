using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace HomeArchiveX.Infrastructure.Config
{
    [Serializable]
    public class WindowConfig
    {
        public int Height { get; set; }
        public int Width { get; set; }
        public int Left { get; set; }
        public int Top { get; set; }
        public WindowState WindowState { get; set; }

        public WindowConfig()
        {
        }
    }
    public enum Theme
    {
        Light,
        Dark,
        Blue
    }

}
