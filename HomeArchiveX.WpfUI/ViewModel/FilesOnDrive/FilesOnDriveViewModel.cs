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
            _eventAggregator.GetEvent<OpenFileOnDriveEditViewEvent>().Subscribe(OnOpenFileOnDriveTab);
            _eventAggregator.GetEvent<FileOnDriveDeletedEvent>().Subscribe(OnFileOnDriveDeleted);

            _eventAggregator.GetEvent<SelectedItemChangedEvent>().Subscribe(OnSelectedItemChanged);

            FileOnDriveNavigationViewModel = fileOnDriveNavigationViewModel;

            _fileOnDriveEditViewModelCreator = fileOnDriveEditViewModelCreator;
            _fileOnDriveDataProvider = fileOnDriveDataProvider;


            FileOnDriveEditViewModels = new ObservableCollection<IFilesOnDriveEditViewModel>();
            CloseFileOnDriveTabCommand = new DelegateCommand(OnCloseFileOnDriveTabExecute);
            AddFileOnDriveCommand = new DelegateCommand(OnAddFileOnDriveExecute);
        }

        private void OnSelectedItemChanged(int obj)
        {
           //throw new NotImplementedException();
        }
        #endregion

        #region При добавлении
        private void OnAddFileOnDriveExecute(object obj)
        {
            IFilesOnDriveEditViewModel fileOnDriveEditVm = _fileOnDriveEditViewModelCreator();
            FileOnDriveEditViewModels.Add(fileOnDriveEditVm);
            fileOnDriveEditVm.Load();
            SelectedFileOnDriveEditViewModel = fileOnDriveEditVm;
        }
        #endregion

        #region При закрытии
        private void OnCloseFileOnDriveTabExecute(object parameter)
        {
            var fileOndriveEditVmToClose = parameter as IFilesOnDriveEditViewModel;
            if (fileOndriveEditVmToClose != null)
            {
                if (fileOndriveEditVmToClose.ArchiveEntity.IsChanged)
                {
                    var result = _messageDialogService.ShowYesNoDialog("Закрыть закладку?",
                      "Изменения будут утеряны. Закрыть ее?",
                      MessageDialogResult.No);
                    if (result == MessageDialogResult.No)
                    {
                        return;
                    }
                }
                FileOnDriveEditViewModels.Remove(fileOndriveEditVmToClose);
            }
        }
        #endregion

        #region При удалении
        private void OnFileOnDriveDeleted(int ArchiveEntityKey)
        {
            IFilesOnDriveEditViewModel fileOnDriveVmToClose
              = FileOnDriveEditViewModels.SingleOrDefault(f => f.ArchiveEntity.ArchiveEntityKey == ArchiveEntityKey);
            if (fileOnDriveVmToClose != null)
            {
                FileOnDriveEditViewModels.Remove(fileOnDriveVmToClose);
            }
        }
        #endregion

       

        #region При открытии закладки
        private void OnOpenFileOnDriveTab(int ArchiveEntityKey)
        {
            IFilesOnDriveEditViewModel fileOnDriveVm =
              FileOnDriveEditViewModels.SingleOrDefault(vm => vm.ArchiveEntity.ArchiveEntityKey == ArchiveEntityKey);
            if (fileOnDriveVm == null)
            {
                fileOnDriveVm = _fileOnDriveEditViewModelCreator();
                FileOnDriveEditViewModels.Add(fileOnDriveVm);
                fileOnDriveVm.Load(ArchiveEntityKey);
            }
            SelectedFileOnDriveEditViewModel = fileOnDriveVm;
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

        public ICommand CloseFileOnDriveTabCommand { get; private set; }

        public ICommand AddFileOnDriveCommand { get; set; }

        public IFilesOnDriveNavigationViewModel FileOnDriveNavigationViewModel { get; private set; }

        public ObservableCollection<IFilesOnDriveEditViewModel> FileOnDriveEditViewModels { get; private set; }

    }
}
