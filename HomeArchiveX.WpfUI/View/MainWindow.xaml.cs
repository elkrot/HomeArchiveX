using Autofac;
using HomeArchiveX.Infrastructure;
using HomeArchiveX.WpfU.Startup;
using HomeArchiveX.WpfUI.View;
using HomeArchiveX.WpfUI.View.Admin;
using HomeArchiveX.WpfUI.View.Search;
using HomeArchiveX.WpfUI.View.Security;
using HomeArchiveX.WpfUI.ViewModel;
using HomeArchiveX.WpfUI.ViewModel.Search;
using HomeArchiveX.WpfUI.ViewModel.Security;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Security.Permissions;
using System.Text;
using System.Threading;
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
    [PrincipalPermission(SecurityAction.Demand)]
    ///[PrincipalPermission(SecurityAction.Demand, Role = "Administrators")]
    public partial class MainWindow : Window, IView
    {
        DrivesViewModel _drivesViewModel;
        //  FilesOnDriveViewModel _filesOnDriveViewModel;
        CancellationTokenSource cancelTokenSource;
        CancellationToken token;

        string DriveCode = "";
        string DriveTitle = "";
        string DriveLetter = "";
        int MaxImagesInDirectory = 0;
        byte IsSecret = 0;
        private System.Windows.Window _window;

        #region IView Members

        public IViewModel ViewModel
        {
            get
            {
                return DataContext as IViewModel;
            }
            set
            {
                DataContext = value;
            }
        }

        #endregion

        public MainWindow()
        {

        }
        public MainWindow(DrivesViewModel drivesViewModel)
        {
            InitializeComponent();
            this.InputBindings.Add(new KeyBinding(ApplicationCommands.Help,new KeyGesture(Key.F2)));
            this.InputBindings.Add(new KeyBinding(ApplicationCommands.NotACommand, new KeyGesture(Key.F1)));

            cancelTokenSource = new CancellationTokenSource();
            token = cancelTokenSource.Token;

            _drivesViewModel = drivesViewModel;
            Main.Content = new DrivesPage(_drivesViewModel);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

            OpenFileDialog myDialog = new OpenFileDialog();
            //myDialog.Filter = "Все файлы (*.*)|Картинки(*.JPG;*.GIF;*.PNG)|*.JPG;*.GIF;*.PNG" + "|*.* ";
            
            myDialog.Multiselect = false;
            if (myDialog.ShowDialog() == true)
            {
                var cnf = new ConfigurationData();
                var lg = new Logger();
                var fm = new FileManager(cnf, lg);
                FileInfo fi = fm.GetFileInfoByPath(myDialog.FileName);

                var Title = fi.Name;
                var checksum = HomeArchiveX.Common.Utilites.Security.ComputeMD5Checksum(myDialog.FileName);

                IDataManager dm;

                    dm = new DataManager(cnf, fm, lg, 0);
                var result = dm.CheckFilesByHashOrTitle((int)fi.Length,  checksum,  Title); 

                if (result.Count() == 0)
                {
                    System.Windows.Forms.MessageBox.Show(string.Format("Файл {0} не найден", checksum));
                }
                else
                {
                    var msg = new StringBuilder();
                    msg.AppendLine(string.Format("{0} {1}", checksum, Title));
                    foreach (var item in result)
                    {
                        msg.AppendLine(item);
                    }
                    System.Windows.Forms.MessageBox.Show(msg.ToString());
                }
            }

        }

        private async void Button_Click_1(object sender, RoutedEventArgs e)
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
                _window.DataContext = new WizardData() { DriveCode = "2018_00", DriveLetter = @"e:\", MaxImagesInDirectory = 0 };
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
                        DriveCode = ((WizardData)_window.DataContext).DriveCode;
                        DriveTitle = ((WizardData)_window.DataContext).DriveTitle;

                        DriveLetter = ((WizardData)_window.DataContext).DriveLetter;
                        MaxImagesInDirectory = ((WizardData)_window.DataContext).MaxImagesInDirectory;
                        IsSecret = ((WizardData)_window.DataContext).IsSecret;

                        //var fm = new FileManager(cnf, lg);

                        //IDataManager dm = new DataManager(cnf, fm, lg, MaxImagesInDirectory);
                        //string drvLetter = DriveLetter;
                        //Dictionary<string, object> addParams = new Dictionary<string, object>();
                        //addParams.Add("IsSecret", IsSecret);

                        // CrtDrv(dm, drvLetter, DriveTitle, DriveCode, addParams);

                        //-----------
                        var worker = new Worker();

                        cancelTokenSource = new CancellationTokenSource();
                        token = cancelTokenSource.Token;
                        var progress = new Progress<int>(value => progressBar.Value = value);
                        var id = await worker.Work(progress, token, CreateDestination);
                        //------------


                        _drivesViewModel.Load();
                        System.Windows.Forms.MessageBox.Show("Обработка Завершена");
                        progressBar.Value = 0;
                        var Log = lg.GetLog();
                        if (!string.IsNullOrWhiteSpace(Log))
                        {
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

        private int CreateDestination()
        {
            var cnf = new ConfigurationData();
            var lg = new Logger();

            var driveCode = DriveCode;
            var driveTitle = DriveTitle;



            var fm = new FileManager(cnf, lg);

            IDataManager dm = new DataManager(cnf, fm, lg, MaxImagesInDirectory);
            string drvLetter = DriveLetter;
            Dictionary<string, object> addParams = new Dictionary<string, object>();
            addParams.Add("IsSecret", IsSecret);


            int driveId = dm.CreateDrive(DriveLetter, DriveTitle, DriveCode, addParams);
            if (driveId != 0)
            {
                dm.FillDirectoriesInfo(driveId, DriveLetter);
                dm.FillFilesInfo(driveId, DriveLetter);
                dm.ClearCash();
            }
            else
            {
                System.Windows.Forms.MessageBox.Show(dm.logger.GetLog());
            }
            return driveId;
        }

        private static void CrtDrv(IDataManager dm, string drvLetter, string title, string diskCode, Dictionary<string, object> addParams)
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
            byte _isSecret;

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

            public byte IsSecret
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

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            cancelTokenSource.Cancel();
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            Main.Content = new AdminMainPage();
        }

        private SearchEngineViewModel _searchEngineViewModel;
        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            var bootstrapper = new Bootstrapper();
            Autofac.IContainer container = bootstrapper.Bootstrap();
            _searchEngineViewModel = container.Resolve<SearchEngineViewModel>();
            _searchEngineViewModel.Load();
            Main.Content = new SearchPage(_searchEngineViewModel);
        }

        void HelpCanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = true;
        }
        void HelpExecuted(object sender, ExecutedRoutedEventArgs e)
        {
            System.Diagnostics.Process.Start("notepad.exe");
}

        private void Button_Click_5(object sender, RoutedEventArgs e)
        {
            OpenOrCloseCDDrive openOrClose = new OpenOrCloseCDDrive();
            var drives = openOrClose.GetCDDrives;
            openOrClose.Open(drives[0]);
        }
    }
}
