﻿using Autofac;
using HomeArchiveX.WpfU.Startup;
using HomeArchiveX.WpfUI.ViewModel;
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
    {private DrivesViewModel _driveViewModel;

        protected override void OnStartup(StartupEventArgs e)
        {
            var pathToMdfFileDirectory = Directory.GetCurrentDirectory();// @"d:\temp\";
            AppDomain.CurrentDomain.SetData("DataDirectory", pathToMdfFileDirectory);

            try
            {
                base.OnStartup(e);
                var bootstrapper = new Bootstrapper();
                IContainer container = bootstrapper.Bootstrap();

                _driveViewModel = container.Resolve<DrivesViewModel>();
               

                MainWindow = new MainWindow(_driveViewModel);
                //MainWindow = new MainWindow();
                MainWindow.Show();
                _driveViewModel.Load();

                
            }
            catch (Exception ex)
            {

                System.Windows.Forms.MessageBox.Show(ex.Message);
                System.Windows.Forms.MessageBox.Show(ex.StackTrace);

            }

            base.OnStartup(e);
        }
    }

     
}
