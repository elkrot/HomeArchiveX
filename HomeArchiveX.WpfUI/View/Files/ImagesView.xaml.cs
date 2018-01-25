using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace HomeArchiveX.WpfUI.View.Files
{
    /// <summary>
    /// Interaction logic for ImagesView.xaml
    /// </summary>
    public partial class ImagesView : UserControl
    {
        public ImagesView()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (imageListView.SelectedValue != null)
            {
                string imagePath = ((HomeArchiveX.WpfUI.Wrapper.ImageWrapper)imageListView.SelectedValue).ImagePath;
                if (!string.IsNullOrWhiteSpace(imagePath))
                {
                    Process.Start(imagePath);
                }
            }
            
            
        }
    }
}
