using HomeArchiveX.WpfUI.ViewModel.Security;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.WpfUI.ViewModel.Services
{
    public class AddCategoryViewModel : IViewModel, INotifyPropertyChanged
    {
       
        string _categoryTitle;
        public string CategoryTitle
        {
            get { return _categoryTitle; }
            set { _categoryTitle = value; NotifyPropertyChanged("CategoryTitle"); }
        }

        #region INotifyPropertyChanged Members
        public event PropertyChangedEventHandler PropertyChanged;

        private void NotifyPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }
        #endregion

    }
}
