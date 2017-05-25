using Autofac;
using HomeArchiveX.Model;
using HomeArchiveX.WpfU.Command;
using HomeArchiveX.WpfU.Startup;
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
    public interface IDriveEditViewModel
    {
        void Load(int? DriveId = null);
        DriveWrapper Drive { get; }
    }
    public class DriveEditViewModel : Observable, IDriveEditViewModel
    {

        private readonly IEventAggregator _eventAggregator;
        private readonly IMessageDialogService _messageDialogService;
        private readonly IDrivesDataProvider _driveDataProvider;

        private DriveWrapper _drive;
        private FilesOnDriveViewModel _filesOnDriveViewModel;

        //        private readonly ILookupProvider<City> _cityLookupProvider;

        public DriveEditViewModel(IEventAggregator eventAggregator,
            IMessageDialogService messageDialogService,
            IDrivesNavigationViewModel drivesNavigationViewModel
            , IDrivesDataProvider driveDataProvider)
        {
            _eventAggregator = eventAggregator;
            _messageDialogService = messageDialogService;
            _driveDataProvider = driveDataProvider;

            DrivesNavigationViewModel = drivesNavigationViewModel;

            SaveCommand = new DelegateCommand(OnSaveExecute, OnSaveCanExecute);
            ResetCommand = new DelegateCommand(OnResetExecute, OnResetCanExecute);
            DeleteCommand = new DelegateCommand(OnDeleteExecute, OnDeleteCanExecute);
        }



        public IDrivesNavigationViewModel DrivesNavigationViewModel;
        public FilesOnDriveViewModel FilesOnDriveViewModel {
            get { return _filesOnDriveViewModel; }
        }

        public DriveWrapper Drive
        {
            get
            {
                return _drive;
            }
        }

        #region Загрузка
        public void Load(int? DriveId = default(int?))
        {

          
            var _drv = DriveId.HasValue ?
                _driveDataProvider.GetDriveById((int)DriveId) :
                new Drive();

            _drive = new DriveWrapper(_drv);


            var bootstrapper = new Bootstrapper();
            IContainer container = bootstrapper.Bootstrap();

            _filesOnDriveViewModel = container.Resolve<FilesOnDriveViewModel>();
            _filesOnDriveViewModel.Load(DriveId);


            _drive.PropertyChanged += (s, e) =>
            {
                if (e.PropertyName == nameof(_drive.IsChanged)
                || e.PropertyName == nameof(_drive.IsValid))
                {
                    InvalidateCommands();
                }
            };
        }

        #endregion





        #region Comands
        public ICommand SaveCommand { get; private set; }

        public ICommand ResetCommand { get; private set; }

        public ICommand DeleteCommand { get; private set; }

        public ICommand AddEmailCommand { get; private set; }

        public ICommand RemoveEmailCommand { get; private set; }



        private void OnSaveExecute(object obj)
        {
            var saveRet = _driveDataProvider.SaveDrive(Drive.Model);

            if (!saveRet.Success)
            {
                var result = _messageDialogService.ShowMessageDialog(
    "Ошибка при сохранении",
    string.Format("Во время сохранения записи {0}{2} возникла исключительная ситуация{2}  {1}"
    , Drive.Title, saveRet.Messages.FirstOrDefault(), Environment.NewLine), MessageDialogResult.Ok);
                Drive.RejectChanges();
            }
            else
            {
                Drive.AcceptChanges();
            }
            _eventAggregator.GetEvent<DriveSavedEvent>().Publish(Drive.Model);
            InvalidateCommands();
        }

        private bool OnSaveCanExecute(object arg)
        {
            return Drive.IsChanged && Drive.IsValid;
        }

        private void OnResetExecute(object obj)
        {
            Drive.RejectChanges();
        }

        private bool OnResetCanExecute(object arg)
        {
            return Drive.IsChanged;
        }

        private bool OnDeleteCanExecute(object arg)
        {
            return Drive != null && Drive.DriveId > 0;
        }

        private void OnDeleteExecute(object obj)
        {
            var result = _messageDialogService.ShowYesNoDialog(
                "Удалить заказ?",
                string.Format("Вы действительно хотите удалить {2} '{0} от {1:d}'"
                , Drive.Title, Drive.DriveId, Environment.NewLine),
                MessageDialogResult.No);

            if (result == MessageDialogResult.Yes)
            {

                var saveRet = _driveDataProvider.DeleteDrive(Drive.DriveId);

                if (!saveRet.Success)
                {
                    _messageDialogService.ShowMessageDialog(
       "Ошибка при сохранении",
       string.Format("Во время сохранения записи {0}{2} возникла исключительная ситуация  {1}"
       , Drive.Title.Trim(), saveRet.Messages.FirstOrDefault(), Environment.NewLine), MessageDialogResult.Ok);
                    Drive.RejectChanges();
                }
                else
                {
                    Drive.AcceptChanges();

                    _eventAggregator.GetEvent<DriveDeletedEvent>().Publish(Drive.DriveId);

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
