using HomeArchiveX.Model;
using HomeArchiveX.WpfU.Command;
using HomeArchiveX.WpfU.DataProvider.Lookups;
using HomeArchiveX.WpfUI.Event;
using Microsoft.Practices.Prism.PubSubEvents;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace HomeArchiveX.WpfUI.ViewModel
{
    public interface IFilesOnDriveNavigationViewModel
    {
        void Load();
    }

    public class FilesOnDriveNavigationViewModel : IFilesOnDriveNavigationViewModel
    {
        private readonly IEventAggregator _eventAggregator;
        private readonly ITreeViewLookupProvider<ArchiveEntity> _fileOnDriveLookupProvider;

        public FilesOnDriveNavigationViewModel(IEventAggregator eventAggregator,
          ITreeViewLookupProvider<ArchiveEntity> fileOnDriveLookupProvider)
        {
            _eventAggregator = eventAggregator;
            _fileOnDriveLookupProvider = fileOnDriveLookupProvider;

            _eventAggregator.GetEvent<FileOnDriveSavedEvent>().Subscribe(OnFileOnDriveSaved);
            _eventAggregator.GetEvent<FileOnDriveDeletedEvent>().Subscribe(OnFileOnDriveDeleted);

            NavigationItems = new ObservableCollection<NavigationTreeItemViewModel>();
        }

        private void OnFileOnDriveDeleted(int archiveEntityKey)
        {
            var navigationItem =
               NavigationItems.SingleOrDefault(item => item.ArchiveEntityKey == archiveEntityKey);
            if (navigationItem != null)
            {
                NavigationItems.Remove(navigationItem);
            }
        }

        private void OnFileOnDriveSaved(ArchiveEntity savedDrive)
        {
            var navigationItem =
               NavigationItems.SingleOrDefault(item => item.ArchiveEntityKey == savedDrive.ArchiveEntityKey);
            if (navigationItem != null)
            {
                navigationItem.DisplayValue = string.Format("{0} ", savedDrive.Title
                    );
            }
            else
            {
                Load();
            }
        }

        public void Load()
        {
            IEnumerable<LookupItemNode> items;

            items = _fileOnDriveLookupProvider.GetLookup();

            NavigationItems.Clear();
            foreach (var driveLookupItem in
                items)
            {
                NavigationItems.Add(
                  new NavigationTreeItemViewModel(
                    driveLookupItem.Id,
                    driveLookupItem.DisplayValue,
                    _eventAggregator));
            }
        }
        public ObservableCollection<NavigationTreeItemViewModel> NavigationItems { get; set; }
    }
    //--------------------------------------------------------------------
    public class NavigationTreeItemViewModel : Observable
    {
        private readonly IEventAggregator _eventAggregator;
        private string _displayValue;

        #region Constructor
        public NavigationTreeItemViewModel(int archiveEntityKey,
          string displayValue,
          IEventAggregator eventAggregator)
        {
            ArchiveEntityKey = archiveEntityKey;
            DisplayValue = displayValue;
            _eventAggregator = eventAggregator;
            OpenFileOnDriveEditViewCommand = new DelegateCommand(OpenFileOnDriveEditViewExecute);
        }
        #endregion


        public ICommand OpenFileOnDriveEditViewCommand { get; set; }

        public int ArchiveEntityKey { get; private set; }

        #region DisplayValue
        public string DisplayValue
        {
            get { return _displayValue; }
            set
            {
                _displayValue = value;
                OnPropertyChanged();
            }
        }
        #endregion

        #region OpenDriveEditViewExecute
        private void OpenFileOnDriveEditViewExecute(object obj)
        {
            _eventAggregator.GetEvent<OpenFileOnDriveEditViewEvent>().Publish(ArchiveEntityKey);
        }
        #endregion

    }

}