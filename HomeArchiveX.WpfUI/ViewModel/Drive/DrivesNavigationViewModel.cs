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
using System.Windows;
using System.Windows.Input;

namespace HomeArchiveX.WpfUI.ViewModel
{

    public interface IDrivesNavigationViewModel
    {
        void Load();
    }

    public class DrivesNavigationViewModel : DependencyObject, IDrivesNavigationViewModel
    {
        private readonly IEventAggregator _eventAggregator;
        private readonly ILookupProvider<Drive> _driveLookupProvider;
        public int itemsCount { get; set; }
        const int PAGE_LENGTH = 15;
        public int PageLength { get { return PAGE_LENGTH; } }
        public int TotalPages { get {
                var result = itemsCount / PageLength +(itemsCount % PageLength>0?1:0);
                return result; } }

        #region FilterText
        public string FilterText
        {
            get { return (string)GetValue(FilterTextProperty); }
            set
            {
                SetValue(FilterTextProperty, value);
            }
        }

        // Using a DependencyProperty as the backing store for FilterText.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty FilterTextProperty =
            DependencyProperty.Register("FilterText", typeof(string), typeof(DrivesNavigationViewModel),
                new PropertyMetadata(String.Empty, FilterText_Changed));

        private static void FilterText_Changed(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            var current = d as DrivesNavigationViewModel;
            if (current != null)
            {
                current.Load();
            }
        }
        #endregion

        #region CurrentPage


        public int CurrentPage
        {
            get { return (int)GetValue(CurrentPageProperty); }
            set { SetValue(CurrentPageProperty, value); }
        }

        // Using a DependencyProperty as the backing store for CurrentPage.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty CurrentPageProperty =
            DependencyProperty.Register("CurrentPage", typeof(int), typeof(DrivesNavigationViewModel), new PropertyMetadata(0, CurrentPage_Changed));

        private static void CurrentPage_Changed(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            var current = d as DrivesNavigationViewModel;
            if (current != null)
            {
                current.Load();
            }
        }


        #endregion

        #region constructor
        public DrivesNavigationViewModel(IEventAggregator eventAggregator,
          ILookupProvider<Drive> driveLookupProvider)
        {
            _eventAggregator = eventAggregator;
            _driveLookupProvider = driveLookupProvider;

            _eventAggregator.GetEvent<DriveSavedEvent>().Subscribe(OnDriveSaved);
            _eventAggregator.GetEvent<DriveDeletedEvent>().Subscribe(OnDriveDeleted);

            FirstPageCommand = new DelegateCommand(FirstPageCommandExecute);
            PrevPageCommand = new DelegateCommand(PrevPageCommandExecute);
            NextPageCommand = new DelegateCommand(NextPageCommandExecute);
            LastPageCommand = new DelegateCommand(LastPageCommandExecute);

            NavigationItems = new ObservableCollection<NavigationItemViewModel>();
            CurrentPage = 1;
        }


        #endregion

        #region Events
        private void LastPageCommandExecute(object obj)
        {
            if (TotalPages > 1) CurrentPage = TotalPages;
        }

        private void NextPageCommandExecute(object obj)
        {
            if (TotalPages > CurrentPage) CurrentPage++;
        }

        private void PrevPageCommandExecute(object obj)
        {
            if (CurrentPage > 1)
                CurrentPage--;
        }

        private void FirstPageCommandExecute(object obj)
        {
            CurrentPage = 1;
        }

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


        #region Load
 public void Load()
        {
            IEnumerable<LookupItem> items;

            itemsCount = _driveLookupProvider.GetLookupWithCondition(x => x.Title.Contains(FilterText), x => x.DriveCode
                , false, 1, int.MaxValue).Count();
                items = _driveLookupProvider.GetLookupWithCondition(x => x.Title.Contains(FilterText), x => x.DriveCode
                , false, CurrentPage, PageLength);
            
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
        #endregion
       


        public ObservableCollection<NavigationItemViewModel> NavigationItems { get; set; }

        public ICommand FirstPageCommand { get; set; }
        public ICommand PrevPageCommand { get; set; }
        public ICommand NextPageCommand { get; set; }
        public ICommand LastPageCommand { get; set; }
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
