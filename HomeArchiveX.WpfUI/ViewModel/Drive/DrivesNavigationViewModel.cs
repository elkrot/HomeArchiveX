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

    public interface IDrivesNavigationViewModel
    {
        void Load();
    }

    public class DrivesNavigationViewModel : IDrivesNavigationViewModel
    {
        private readonly IEventAggregator _eventAggregator;
        private readonly ILookupProvider<Drive> _driveLookupProvider;


        #region constructor
        public DrivesNavigationViewModel(IEventAggregator eventAggregator,
          ILookupProvider<Drive> driveLookupProvider)
        {
            _eventAggregator = eventAggregator;
            _driveLookupProvider = driveLookupProvider;

            _eventAggregator.GetEvent<DriveSavedEvent>().Subscribe(OnDriveSaved);
            _eventAggregator.GetEvent<DriveDeletedEvent>().Subscribe(OnDriveDeleted);

            NavigationItems = new ObservableCollection<NavigationItemViewModel>();
        }
        #endregion

        #region Events
        private void OnDriveDeleted(int driveId)
        {
            var navigationItem =
               NavigationItems.SingleOrDefault(item => item.DriveId == driveId);
            if (navigationItem != null)
            {
                NavigationItems.Remove(navigationItem);
            }
        }

        private void OnDriveSaved(Drive savedDrive)
        {
            var navigationItem =
               NavigationItems.SingleOrDefault(item => item.DriveId == savedDrive.DriveId);
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
        #endregion



        public void Load()
        {
            IEnumerable<LookupItem> items;

            items = _driveLookupProvider.GetLookup();

            NavigationItems.Clear();
            foreach (var driveLookupItem in
                items)
            {
                NavigationItems.Add(
                  new NavigationItemViewModel(
                    driveLookupItem.Id,
                    driveLookupItem.DisplayValue,
                    _eventAggregator));
            }
        }


        public ObservableCollection<NavigationItemViewModel> NavigationItems { get; set; }
    }


    //-----------------------------------------------------

    public class NavigationItemViewModel : Observable
    {
        private readonly IEventAggregator _eventAggregator;
        private string _displayValue;

        #region Constructor
        public NavigationItemViewModel(int driveId,
          string displayValue,
          IEventAggregator eventAggregator)
        {
            DriveId = driveId;
            DisplayValue = displayValue;
            _eventAggregator = eventAggregator;
            OpenDriveEditViewCommand = new DelegateCommand(OpenDriveEditViewExecute);
        }
        #endregion


        public ICommand OpenDriveEditViewCommand { get; set; }

        public int DriveId { get; private set; }

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
        private void OpenDriveEditViewExecute(object obj)
        {
            _eventAggregator.GetEvent<OpenDriveEditViewEvent>().Publish(DriveId);
        }
        #endregion

    }


}
