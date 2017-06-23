using HomeArchiveX.Model;
using HomeArchiveX.WpfU.Command;
using HomeArchiveX.WpfUI.DataProvider;
using HomeArchiveX.WpfUI.Event;
using HomeArchiveX.WpfUI.View.Services;
using HomeArchiveX.WpfUI.ViewModel;
using HomeArchiveX.WpfUI.Wrapper;
using Microsoft.Practices.Prism.PubSubEvents;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace HomeArchiveX.WpfUI.ViewModel
{
   public interface IFilesOnDriveEditViewModel
    {
        void Load(int? FileOnDriveId = null);
        ArchiveEntityWrapper ArchiveEntity { get; }
    }
    class FilesOnDriveEditViewModel : Observable, IFilesOnDriveEditViewModel
    {
        private readonly IEventAggregator _eventAggregator;
        private readonly IMessageDialogService _messageDialogService;
        private readonly IFilesOnDriveDataProvider _fileOnDriveDataProvider;
        private ArchiveEntityWrapper _archiveEntity;
        public FilesOnDriveEditViewModel(IEventAggregator eventAggregator,
            IMessageDialogService messageDialogService,
            IFilesOnDriveNavigationViewModel filesOnDriveNavigationViewModel
            , IFilesOnDriveDataProvider fileOnDriveDataProvider)
        {
            _eventAggregator = eventAggregator;
            _messageDialogService = messageDialogService;
            _fileOnDriveDataProvider = fileOnDriveDataProvider;

            FilesOnDriveNavigationViewModel = filesOnDriveNavigationViewModel;

            SaveCommand = new DelegateCommand(OnSaveExecute, OnSaveCanExecute);
            ResetCommand = new DelegateCommand(OnResetExecute, OnResetCanExecute);
            DeleteCommand = new DelegateCommand(OnDeleteExecute, OnDeleteCanExecute);
                  }


        //   IFilesOnDriveDataProvider FileOnDriveDataProvider;
        public IFilesOnDriveNavigationViewModel FilesOnDriveNavigationViewModel;

        public ArchiveEntityWrapper ArchiveEntity
        {
            get
            {
                return _archiveEntity;
            }
        }

        public void Load(int? FileOnDriveId = null)
        {
            var _archEntity = FileOnDriveId.HasValue ?
                _fileOnDriveDataProvider.GetArchiveEntityById((int)FileOnDriveId) :
                new ArchiveEntity();

            _archiveEntity = new ArchiveEntityWrapper(_archEntity);


            _archiveEntity.PropertyChanged += (s, e) =>
            {
                if (e.PropertyName == nameof(_archiveEntity.IsChanged)
                || e.PropertyName == nameof(_archiveEntity.IsValid))
                {
                    InvalidateCommands();
                }
            };
        }



        #region Comands
        public ICommand SaveCommand { get; private set; }

        public ICommand ResetCommand { get; private set; }

        public ICommand DeleteCommand { get; private set; }

        public ICommand AddEmailCommand { get; private set; }

        public ICommand RemoveEmailCommand { get; private set; }

        

        private void OnSaveExecute(object obj)
        {
            var saveRet = _fileOnDriveDataProvider.SaveFileOnDrive(ArchiveEntity.Model);

            if (!saveRet.Success)
            {
                var result = _messageDialogService.ShowMessageDialog(
    "Ошибка при сохранении",
    string.Format("Во время сохранения записи {0}{2} возникла исключительная ситуация{2}  {1}"
    , ArchiveEntity.Title, saveRet.Messages.FirstOrDefault(), Environment.NewLine), MessageDialogResult.Ok);
                ArchiveEntity.RejectChanges();
            }
            else
            {
                ArchiveEntity.AcceptChanges();
            }
            _eventAggregator.GetEvent<FileOnDriveSavedEvent>().Publish(ArchiveEntity.Model);
            InvalidateCommands();
        }

        private bool OnSaveCanExecute(object arg)
        {
            return ArchiveEntity.IsChanged && ArchiveEntity.IsValid;
        }

        private void OnResetExecute(object obj)
        {
            ArchiveEntity.RejectChanges();
        }

        private bool OnResetCanExecute(object arg)
        {
            return ArchiveEntity.IsChanged;
        }

        private bool OnDeleteCanExecute(object arg)
        {
            return ArchiveEntity != null && ArchiveEntity.DriveId > 0;
        }

        private void OnDeleteExecute(object obj)
        {
            var result = _messageDialogService.ShowYesNoDialog(
                "Удалить заказ?",
                string.Format("Вы действительно хотите удалить {2} '{0} от {1:d}'"
                , ArchiveEntity.Title, ArchiveEntity.DriveId, Environment.NewLine),
                MessageDialogResult.No);

            if (result == MessageDialogResult.Yes)
            {

                var saveRet = _fileOnDriveDataProvider.DeleteArchiveEntity(ArchiveEntity.ArchiveEntityKey);

                if (!saveRet.Success)
                {
                    _messageDialogService.ShowMessageDialog(
       "Ошибка при сохранении",
       string.Format("Во время сохранения записи {0}{2} возникла исключительная ситуация  {1}"
       , ArchiveEntity.Title.Trim(), saveRet.Messages.FirstOrDefault(), Environment.NewLine), MessageDialogResult.Ok);
                    ArchiveEntity.RejectChanges();
                }
                else
                {
                    ArchiveEntity.AcceptChanges();

                    _eventAggregator.GetEvent<FileOnDriveDeletedEvent>().Publish(ArchiveEntity.ArchiveEntityKey);

                }
            }
        }


        private void InvalidateCommands()
        {
            ((DelegateCommand)SaveCommand).RaiseCanExecuteChanged();
            ((DelegateCommand)ResetCommand).RaiseCanExecuteChanged();
            ((DelegateCommand)DeleteCommand).RaiseCanExecuteChanged();
        }
        #endregion
    }
}
