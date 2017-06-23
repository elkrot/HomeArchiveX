using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace HomeArchiveX.WpfUI.View
{
    /// <summary>
    /// Interaction logic for FilesNavigationView.xaml
    /// </summary>
    public partial class FilesOnDriveNavigationView : UserControl
    {
        ObservableCollection<Node> nodes;
        public FilesOnDriveNavigationView()
        {
            InitializeComponent();
            nodes = new ObservableCollection<Node>
        {
            new Node
            {
                Name ="Европа",
                Nodes = new ObservableCollection<Node>
                {
                    new Node {Name="Германия" },
                    new Node {Name="Франция" },
                    new Node
                    {
                        Name ="Великобритания",
                        Nodes = new ObservableCollection<Node>
                        {
                            new Node {Name="Англия" },
                            new Node {Name="Шотландия" },
                            new Node {Name="Уэльс" },
                            new Node {Name="Сев. Ирландия" },
                        }
                    }
                }
            },
            new Node
            {
                Name ="Азия",
                Nodes = new ObservableCollection<Node>
                {
                    new Node {Name="Китай" },
                    new Node {Name="Япония" },
                    new Node { Name ="Индия" }
                }
            },
            new Node { Name="Африка" },
            new Node { Name="Америка" },
            new Node { Name="Австралия" }
        };
           // filesTreeView.ItemsSource = nodes;
        }

        public class Node
        {
            public string Name { get; set; }
            public ObservableCollection<Node> Nodes { get; set; }
        }

        private void filesTreeView_SelectedItemChanged(object sender, RoutedPropertyChangedEventArgs<object> e)
        {
            // System.Windows.Forms.MessageBox.Show(((Node)e.NewValue).Name);
            //System.Windows.Forms.MessageBox.Show("Test");
            //  http://www.wpf-tutorial.com/treeview-control/treeview-data-binding-multiple-templates/
            // http://www.wpf-tutorial.com/treeview-control/handling-selection-expansion-state/
            // https://blogs.msdn.microsoft.com/mikehillberg/2009/10/30/treeview-and-hierarchicaldatatemplate-step-by-step/
            //  System.Windows.Forms.MessageBox.Show(((Node)e.OriginalSource).Name);
        }

    }
}
