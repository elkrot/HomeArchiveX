using HomeArchiveX.WpfUI.DataProvider;
using HomeArchiveX.WpfUI.View.Services;
using Microsoft.Practices.Prism.PubSubEvents;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.WpfUI.ViewModel
{
   public class FilesOnDriveViewModel : Observable
    {
        private readonly IFilesOnDriveDataProvider _drivesDataProvider;
        private readonly IEventAggregator _eventAggregator;
        private readonly IMessageDialogService _messageDialogService;
        private IFilesOnDriveEditViewModel _selectedFilesOnDriveEditViewModel;
        private Func<IFilesOnDriveEditViewModel> _FilesOnDriveEditViewModelCreator;



    }
}
