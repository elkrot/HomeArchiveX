using Autofac;
using HomeArchiveX.WpfU.Startup;
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
        FilesOnDriveViewModel _filesOnDriveViewModel;
        public MainWindow()
        {

        }
        public MainWindow(DrivesViewModel drivesViewModel)
        {
            InitializeComponent();
            _drivesViewModel = drivesViewModel;
            Main.Content = new DrivesPage(_drivesViewModel);        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

            var bootstrapper = new Bootstrapper();
            IContainer container = bootstrapper.Bootstrap();

            _filesOnDriveViewModel = container.Resolve<FilesOnDriveViewModel>();

            Main.Content = new FilesOnDrivePage(_filesOnDriveViewModel);
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            
            Main.Content = new DrivesPage(_drivesViewModel);
        }
    }
}
