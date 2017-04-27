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
   public class DriversViewModel : Observable
    {
        private readonly IDriversDataProvider driversDataProvider;
        private readonly IEventAggregator _eventAggregator;
        private readonly IMessageDialogService _messageDialogService;
        private IDriverEditViewModel _selectedDriversEditViewModel;
        private Func<IDriverEditViewModel> _DriversEditViewModelCreator;

    }
}
