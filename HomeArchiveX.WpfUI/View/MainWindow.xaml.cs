using Autofac;
using HomeArchiveX.Infrastructure;
using HomeArchiveX.WpfU.Startup;
using HomeArchiveX.WpfUI.View;
using HomeArchiveX.WpfUI.ViewModel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
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
        //  FilesOnDriveViewModel _filesOnDriveViewModel;

        private System.Windows.Window _window;
        public MainWindow()
        {

        }
        public MainWindow(DrivesViewModel drivesViewModel)
        {
            InitializeComponent();
            _drivesViewModel = drivesViewModel;
            Main.Content = new DrivesPage(_drivesViewModel);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

            //var bootstrapper = new Bootstrapper();
            //Autofac.IContainer container = bootstrapper.Bootstrap();

            //_filesOnDriveViewModel = container.Resolve<FilesOnDriveViewModel>();
            //_filesOnDriveViewModel.Load();
            //Main.Content = new FilesOnDrivePage(_filesOnDriveViewModel);
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Xceed.Wpf.Toolkit.Wizard wizard = this.Resources["_wizard"] as Xceed.Wpf.Toolkit.Wizard;
            if (wizard != null)
            {
                wizard.CurrentPage = wizard.Items[0] as Xceed.Wpf.Toolkit.WizardPage;

                if (_window != null)
                {
                    _window.Content = null;
                    _window = null;
                }
                _window = new System.Windows.Window();
                _window.Title = "Создание Описания Файлов для дирректории.";
                _window.Content = wizard;
                _window.DataContext = new WizardData() { DriveCode = "2017_000" ,DriveLetter= @"e:\",MaxImagesInDirectory=999 };
                _window.Width = 600;
                _window.Height = 400;
                _window.WindowStartupLocation = System.Windows.WindowStartupLocation.CenterScreen;
                // Window will be closed by Wizard because FinishButtonClosesWindow = true and CancelButtonClosesWindow = true

                if (_window.ShowDialog() == true)
                {
                    var cnf = new ConfigurationData();
                    var lg = new Logger();

                    try
                    {
                        var DriveCode = ((WizardData)_window.DataContext).DriveCode;
                        var DriveTitle = ((WizardData)_window.DataContext).DriveTitle;

                        var DriveLetter = ((WizardData)_window.DataContext).DriveLetter;
                        var MaxImagesInDirectory = ((WizardData)_window.DataContext).MaxImagesInDirectory;
                        var IsSecret = ((WizardData)_window.DataContext).IsSecret;

                        var fm = new FileManager(cnf, lg);

                        IDataManager dm = new DataManager(cnf, fm, lg, MaxImagesInDirectory);
                        string drvLetter = DriveLetter;
                        Dictionary<string, object> addParams = new Dictionary<string, object>();
                        addParams.Add("IsSecret", IsSecret);

                        CrtDrv(dm, drvLetter, DriveTitle, DriveCode, addParams);
                        _drivesViewModel.Load();
                        System.Windows.Forms.MessageBox.Show("Обработка Завершена");
                        var Log = lg.GetLog();
                        if (!string.IsNullOrWhiteSpace(Log)) { 
                        System.Windows.Forms.MessageBox.Show(Log);
                    }
                    }
                    catch (Exception er)
                    {

                        System.Windows.Forms.MessageBox.Show(er.Message);
                        if (!string.IsNullOrWhiteSpace(lg.GetLog()))
                        {
                            System.Windows.Forms.MessageBox.Show(lg.GetLog());
                        }

                    }

                }


            }
            // Main.Content = new DrivesPage(_drivesViewModel);
        }
        private static void CrtDrv(IDataManager dm, string drvLetter, string title, string diskCode, Dictionary<string,object> addParams)
        {


            string pathDrive = drvLetter;
            //string.Format(@"{0}:\", drvLetter);
            int driveId = dm.CreateDrive(pathDrive, title, diskCode, addParams);
            if (driveId != 0)
            {
                dm.FillDirectoriesInfo(driveId, pathDrive);
                dm.FillFilesInfo(driveId, pathDrive);
                dm.ClearCash();
            }
            else
            {
                System.Windows.Forms.MessageBox.Show(dm.logger.GetLog());
                //   Console.WriteLine();
            }
        }
        private void OnWizardHelp(object sender, EventArgs e)
        {
            System.Windows.MessageBox.Show("Здесь будет помощь\n\n\n\n\n", "Помощь");
        }
        public class WizardData : INotifyPropertyChanged
        {
            string _driveTitle;
            string _driveCode;
            string _driveLetter;
            int _maxImagesInDirectory;
            bool _isSecret;

            public string DriveTitle
            {
                get { return _driveTitle; }
                set
                {
                    _driveTitle = value;
                    OnPropertyChanged("DriveTitle");
                }
            }
            public string DriveCode
            {
                get { return _driveCode; }
                set
                {
                    _driveCode = value;
                    OnPropertyChanged("DriveCode");
                }
            }

            

             public string DriveLetter
            {
                get { return _driveLetter; }
                set
                {
                    _driveLetter = value;
                    OnPropertyChanged("DriveLetter");
                }
            }

            public int MaxImagesInDirectory
            {
                get { return _maxImagesInDirectory; }
                set
                {
                    _maxImagesInDirectory = value;
                    OnPropertyChanged("MaxImagesInDirectory");
                }
            }

            public bool IsSecret
            {
                get { return _isSecret; }
                set
                {
                    _isSecret = value;
                    OnPropertyChanged("IsSecret");
                }
            }


            public event PropertyChangedEventHandler PropertyChanged;
            private void OnPropertyChanged([CallerMemberName] string caller = "")
            {
                if (PropertyChanged != null)
                {
                    PropertyChanged(this, new PropertyChangedEventArgs(caller));
                }
            }
        }
    }
}
