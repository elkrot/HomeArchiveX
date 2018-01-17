using HomeArchiveX.WpfUI.DataProvider;
using HomeArchiveX.WpfUI.View.Services;
using HomeArchiveX.WpfUI.ViewModel.FilesOnDrive;
using Microsoft.Practices.Prism.PubSubEvents;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.WpfUI.ViewModel
{

public interface ISearchNavigationViewModel
        {
            void Load();
           
        }

    public class SearchNavigationViewModel : Observable, ISearchNavigationViewModel
    {

        private readonly IEventAggregator _eventAggregator;
        private readonly IMessageDialogService _messageDialogService;
        
        private readonly ICategoryDataProvider _categoryDataProvider;

       
        private ICategoryNavigationViewModel _categoryNavigationViewModel;


        public SearchNavigationViewModel(IEventAggregator eventAggregator,
            IMessageDialogService messageDialogService
            , ICategoryNavigationViewModel categoryNavigationViewModel
            , ICategoryDataProvider categoryDataProvider)
        {

        }

        public void Load()
        {
            throw new NotImplementedException();
        }
    }
}
