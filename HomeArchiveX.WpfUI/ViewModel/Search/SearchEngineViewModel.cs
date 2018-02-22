using HomeArchiveX.WpfUI.View.Services;
using HomeArchiveX.WpfUI.ViewModel;
using Microsoft.Practices.Prism.PubSubEvents;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.WpfUI.ViewModel.Search
{
   public class SearchEngineViewModel : Observable
    {
        
        private readonly IEventAggregator _eventAggregator;
        private readonly IMessageDialogService _messageDialogService;

        public ISearchNavigationViewModel SearchNavigationViewModel { get; private set; }
        public ISearchResultViewModel SearchResultViewModel { get; private set; }


        public SearchEngineViewModel(IEventAggregator eventAggregator
            , IMessageDialogService messageDialogService
            , ISearchNavigationViewModel searchNavigationViewModel
            , ISearchResultViewModel searchResultViewModel)
        {
            _eventAggregator = eventAggregator;
            _messageDialogService = messageDialogService;

            SearchNavigationViewModel = searchNavigationViewModel;
            SearchResultViewModel = searchResultViewModel;
        }

        public void Load() {
            SearchNavigationViewModel.Load();
            SearchResultViewModel.Load();
        }
    }
}
