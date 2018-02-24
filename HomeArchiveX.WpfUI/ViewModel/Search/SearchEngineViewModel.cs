using HomeArchiveX.Search.Result;
using HomeArchiveX.WpfUI.DataProvider;
using HomeArchiveX.WpfUI.Event;
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
        private IArchiveEntityDataProvider _archiveEntityDataProvider;

        public SearchEngineViewModel(IEventAggregator eventAggregator
            , IMessageDialogService messageDialogService
            , ISearchNavigationViewModel searchNavigationViewModel
            , ISearchResultViewModel searchResultViewModel
            , IArchiveEntityDataProvider archiveEntityDataProvider)
        {
            _eventAggregator = eventAggregator;
            _messageDialogService = messageDialogService;

            _eventAggregator.GetEvent<ShowSearchResultEvent>().Subscribe(OnShowSearchResult);

            _archiveEntityDataProvider = archiveEntityDataProvider;
            SearchNavigationViewModel = searchNavigationViewModel;
            SearchResultViewModel = searchResultViewModel;

        }

        private void OnShowSearchResult(int obj)
        {
             SearchResultViewModel.SearchResult = SearchNavigationViewModel.SearchResult;
           // SearchResultViewModel.Load();
        }

        public void Load() {
            SearchNavigationViewModel.Load();
          //  SearchResultViewModel.Load();
        }
    }
}
