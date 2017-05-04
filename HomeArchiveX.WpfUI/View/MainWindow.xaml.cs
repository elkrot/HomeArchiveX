using HomeArchiveX.WpfUI.View;
using HomeArchiveX.WpfUI.ViewModel;
using System;
using System.Collections.Generic;
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

namespace HomeArchiveX.WpfUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
DrivesViewModel _drivesViewModel;
        public MainWindow()
        {

        }
        public MainWindow(DrivesViewModel drivesViewModel)
        {
            InitializeComponent();
            _drivesViewModel = drivesViewModel;
            Main.Content = new DriversPage(_drivesViewModel);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Main.Content = new FilesOnDrivePage();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            
            Main.Content = new DriversPage(_drivesViewModel);
        }
    }
}
