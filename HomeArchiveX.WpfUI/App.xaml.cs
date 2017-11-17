using Autofac;
using HomeArchiveX.DataAccess;
using HomeArchiveX.DataAccess.Implementations;
using HomeArchiveX.Model;
using HomeArchiveX.Security;
using HomeArchiveX.WpfU.Startup;
using HomeArchiveX.WpfUI.View.Security;
using HomeArchiveX.WpfUI.ViewModel;
using HomeArchiveX.WpfUI.ViewModel.Security;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace HomeArchiveX.WpfUI

{


    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        private DrivesViewModel _driveViewModel;

        protected override void OnStartup(StartupEventArgs e)
        {
            var pathToMdfFileDirectory = Directory.GetCurrentDirectory();// @"d:\temp\";
            AppDomain.CurrentDomain.SetData("DataDirectory", pathToMdfFileDirectory);


            try
            {
                //Create a custom principal with an anonymous identity at startup
                CustomPrincipal customPrincipal = new CustomPrincipal();
                AppDomain.CurrentDomain.SetThreadPrincipal(customPrincipal);

                base.OnStartup(e);

                //Show the login view
                AuthenticationViewModel viewModel = new AuthenticationViewModel(new AuthenticationService());
                IView loginWindow = new LoginWindow(viewModel);
                loginWindow.Show();


                //var bootstrapper = new Bootstrapper();
                //IContainer container = bootstrapper.Bootstrap();

                //_driveViewModel = container.Resolve<DrivesViewModel>();


                //MainWindow = new MainWindow(_driveViewModel);
                
                //MainWindow.Show();
                //_driveViewModel.Load();
                base.OnStartup(e);

            }
            catch (Exception ex)
            {

                System.Windows.Forms.MessageBox.Show(ex.Message);
                System.Windows.Forms.MessageBox.Show(ex.StackTrace);

            }


        }
    }


}
