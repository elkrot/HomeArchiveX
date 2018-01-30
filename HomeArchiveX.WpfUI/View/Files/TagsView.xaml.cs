using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace HomeArchiveX.WpfUI.View.Files
{
    /// <summary>
    /// Interaction logic for TagsView.xaml
    /// </summary>
    public partial class TagsView : UserControl
    {

        #region RemoveItem
        public static readonly DependencyProperty RemoveItemProperty =
            DependencyProperty.Register(
                "RemoveItem",
                typeof(ICommand),
                typeof(TagsView),
                new UIPropertyMetadata(null));
        public ICommand RemoveItem
        {
            get { return (ICommand)GetValue(RemoveItemProperty); }
            set { SetValue(RemoveItemProperty, value); }
        }
        #endregion
        public TagsView()
        {
            InitializeComponent();
        }
    }
}
