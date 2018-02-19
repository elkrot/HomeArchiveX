using HomeArchiveX.WpfU.Command;
using HomeArchiveX.WpfUI.DataProvider;
using HomeArchiveX.WpfUI.Event;
using HomeArchiveX.WpfUI.View.Services;
using HomeArchiveX.WpfUI.ViewModel;
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
    public class FilesOnDriveViewModel : Observable
    {
        private readonly IFilesOnDriveDataProvider _fileOnDriveDataProvider;
        private readonly IEventAggregator _eventAggregator;
        private readonly IMessageDialogService _messageDialogService;
        private IFilesOnDriveEditViewModel _selectedFilesOnDriveEditViewModel;
        private Func<IFilesOnDriveEditViewModel> _fileOnDriveEditViewModelCreator;

        #region Конструктор
        public FilesOnDriveViewModel(IEventAggregator eventAggregator,
                   IMessageDialogService messageDialogService,
                   IFilesOnDriveNavigationViewModel fileOnDriveNavigationViewModel,
                   Func<IFilesOnDriveEditViewModel> fileOnDriveEditViewModelCreator,
                   IFilesOnDriveDataProvider fileOnDriveDataProvider)
        {
            _eventAggregator = eventAggregator;
            _messageDialogService = messageDialogService;

            _eventAggregator.GetEvent<SelectedItemChangedEvent>().Subscribe(OnSelectedItemChanged);

            FileOnDriveNavigationViewModel = fileOnDriveNavigationViewModel;

            _fileOnDriveEditViewModelCreator = fileOnDriveEditViewModelCreator;
            _fileOnDriveDataProvider = fileOnDriveDataProvider;

            
        }

        private void OnSelectedItemChanged(int obj)
        {

            if (obj != 0)
            {
                int ArchiveEntityKey = 0;
                int.TryParse(obj.ToString(), out ArchiveEntityKey);

                IFilesOnDriveEditViewModel fileOnDriveVm = _fileOnDriveEditViewModelCreator();
                fileOnDriveVm.Load(ArchiveEntityKey);

                SelectedFileOnDriveEditViewModel = fileOnDriveVm;
            }
        }
        #endregion


        public IFilesOnDriveEditViewModel SelectedFileOnDriveEditViewModel
        {
            get { return _selectedFilesOnDriveEditViewModel; }
            set
            {
                _selectedFilesOnDriveEditViewModel = value;
                OnPropertyChanged();
            }
        }



        public void Load(int? DriveId = default(int?))
        {
            FileOnDriveNavigationViewModel.Load(DriveId);
        }



 public IFilesOnDriveNavigationViewModel FileOnDriveNavigationViewModel { get; private set; }


     

    }
}
