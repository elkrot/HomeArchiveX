using HomeArchiveX.WpfU.Command;
using HomeArchiveX.WpfUI.DataProvider;
using HomeArchiveX.WpfUI.Event;
using HomeArchiveX.WpfUI.View.Services;
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
   public class DrivesViewModel : Observable
    {
        private readonly IDrivesDataProvider _drivesDataProvider;
        private readonly IEventAggregator _eventAggregator;
        private readonly IMessageDialogService _messageDialogService;
        private IDriveEditViewModel _selectedDrivesEditViewModel;
        private Func<IDriveEditViewModel> _drivesEditViewModelCreator;

        

        public DrivesViewModel(IEventAggregator eventAggregator,
            IMessageDialogService messageDialogService,
            IDrivesNavigationViewModel drivesNavigationViewModel,
            Func<IDriveEditViewModel> drivesEditViewModelCreator, 
            IDrivesDataProvider drivesDataProvider)
        {
            _eventAggregator = eventAggregator;
            _messageDialogService = messageDialogService;
            _eventAggregator.GetEvent<OpenDriveEditViewEvent>().Subscribe(OnOpenDriverTab);
            _eventAggregator.GetEvent<DriveDeletedEvent>().Subscribe(OnDriverDeleted);

            DrivesNavigationViewModel = drivesNavigationViewModel;

            _drivesEditViewModelCreator = drivesEditViewModelCreator;
            _drivesDataProvider = drivesDataProvider;


            DriveEditViewModels = new ObservableCollection<IDriveEditViewModel>();
            CloseDriveTabCommand = new DelegateCommand(OnCloseDriveTabExecute);
            AddDriveCommand = new DelegateCommand(OnAddDriveExecute);

        }

        private void OnAddDriveExecute(object obj)
        {
            IDriveEditViewModel driveEditVm = _drivesEditViewModelCreator();
            DriveEditViewModels.Add(driveEditVm);
            driveEditVm.Load();
            SelectedDriveEditViewModel = driveEditVm;
        }

        private void OnCloseDriveTabExecute(object parameter)
        {
            var driveEditVmToClose = parameter as IDriveEditViewModel;
            if (driveEditVmToClose != null)
            {
                if (driveEditVmToClose.Drive.IsChanged)
                {
                    var result = _messageDialogService.ShowYesNoDialog("Закрыть закладку?",
                      "Изменения будут утеряны. Закрыть ее?",
                      MessageDialogResult.No);
                    if (result == MessageDialogResult.No)
                    {
                        return;
                    }
                }
                DriveEditViewModels.Remove(driveEditVmToClose);
            }
        }

        private void OnDriverDeleted(int DriveId)
        {
            IDriveEditViewModel driveVmToClose
              = DriveEditViewModels.SingleOrDefault(f => f.Drive.DriveId == DriveId);
            if (driveVmToClose != null)
            {
                DriveEditViewModels.Remove(driveVmToClose);
            }
        }
        public ObservableCollection<IDriveEditViewModel> DriveEditViewModels { get; private set; }

        #region При открытии закладки
        private void OnOpenDriverTab(int driverId)
        {
            IDriveEditViewModel driveEditVm =
              DriveEditViewModels.SingleOrDefault(vm => vm.Drive.DriveId == driverId);
            if (driveEditVm == null)
            {
                driveEditVm = _drivesEditViewModelCreator();
                DriveEditViewModels.Add(driveEditVm);
                driveEditVm.Load(driverId);
            }
            SelectedDriveEditViewModel = driveEditVm;
        }
        #endregion

        public IDriveEditViewModel SelectedDriveEditViewModel
        {
            get { return _selectedDrivesEditViewModel; }
            set
            {
                _selectedDrivesEditViewModel = value;
                OnPropertyChanged();
            }
        }



        public void Load() {
            DrivesNavigationViewModel.Load();
        }

        public ICommand CloseDriveTabCommand { get; private set; }

        public ICommand AddDriveCommand { get; set; }


        public IDrivesNavigationViewModel DrivesNavigationViewModel;
    }
}
