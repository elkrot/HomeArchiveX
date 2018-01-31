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

namespace HomeArchiveX.WpfUI.View.Files
{
    /// <summary>
    /// Interaction logic for CategoryToEntitiesView.xaml
    /// </summary>
    public partial class CategoryToEntitiesView : UserControl
    {
        #region RemoveItem
        public static readonly DependencyProperty RemoveItemProperty =
            DependencyProperty.Register(
                "RemoveItem",
                typeof(ICommand),
                typeof(CategoryToEntitiesView),
                new UIPropertyMetadata(null));
        public ICommand RemoveItem
        {
            get { return (ICommand)GetValue(RemoveItemProperty); }
            set { SetValue(RemoveItemProperty, value); }
        }
        #endregion


        public CategoryToEntitiesView()
        {
            InitializeComponent();
        }
    }
}
