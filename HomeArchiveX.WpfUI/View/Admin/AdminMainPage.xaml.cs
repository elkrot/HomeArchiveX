﻿using System;
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

namespace HomeArchiveX.WpfUI.View.Admin
{
    /// <summary>
    /// Interaction logic for AdminMainPage.xaml
    /// </summary>
    public partial class AdminMainPage : Page
    {

        ConfigurationDTO _config;
       

            
        public AdminMainPage()
        {
 _config = new ConfigurationDTO();
            _config.ImgPath = "path";
            InitializeComponent();
           
        }
    }
}
