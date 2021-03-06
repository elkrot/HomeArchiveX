﻿using HomeArchiveX.Search;
using HomeArchiveX.Search.Condition;
using HomeArchiveX.Search.Result;
using HomeArchiveX.WpfU.Command;
using HomeArchiveX.WpfUI.DataProvider;
using HomeArchiveX.WpfUI.Event;
using HomeArchiveX.WpfUI.View.Services;
using HomeArchiveX.WpfUI.ViewModel.FilesOnDrive;
using Microsoft.Practices.Prism.PubSubEvents;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace HomeArchiveX.WpfUI.ViewModel
{

    public interface ISearchNavigationViewModel
    {
        void Load();
        SearchResult SearchResult { get; set; }
    }

    public class SearchNavigationViewModel : Observable, ISearchNavigationViewModel
    {

        private readonly IEventAggregator _eventAggregator;
        private readonly IMessageDialogService _messageDialogService;
        private readonly ICategoryDataProvider _categoryDataProvider;
        private readonly ITagDataProvider _tagDataProvider;
        private ICategoryNavigationViewModel _categoryNavigationViewModel;
        private ITagNavigationViewModel _tagNavigationViewModel;
        public SearchCondition SearchCondition { get; set; }
        public SearchResult SearchResult { get; set; }
        private IArchiveEntityDataProvider _archiveEntityDataProvider;


        public SearchNavigationViewModel(IEventAggregator eventAggregator,
            IMessageDialogService messageDialogService
            , ICategoryNavigationViewModel categoryNavigationViewModel
            , ICategoryDataProvider categoryDataProvider
            , ITagDataProvider tagDataProvider
            , ITagNavigationViewModel tagNavigationViewModel
            , IArchiveEntityDataProvider archiveEntityDataProvider)
        {
            _eventAggregator = eventAggregator;
            _messageDialogService = messageDialogService;

            _categoryDataProvider = categoryDataProvider;
            _tagNavigationViewModel = tagNavigationViewModel;

            _tagDataProvider = tagDataProvider;

            _categoryNavigationViewModel = categoryNavigationViewModel;

            _archiveEntityDataProvider = archiveEntityDataProvider;

            var SearchWidgets = new Dictionary<string, SearchWidget<SearchWidgetItem>>();
            SearchWidgets[nameof(SearchByStringWidget)] = (new SearchByStringWidget());
            SearchWidgets[nameof(SearchByCategoryWidget)] = (new SearchByCategoryWidget());
            SearchWidgets[nameof(SearchByFileSizeWiget)] = (new SearchByFileSizeWiget());
            SearchWidgets[nameof(SearchByTagWidget)] = (new SearchByTagWidget());

            SearchCondition = new SearchCondition(SearchWidgets);

            AddSearchByStringConditionCommand = new DelegateCommand(OnAddSearchByStringConditionExecute, OnAddSearchByStringConditionCanExecute);
            AddSearchByCategoryConditionCommand = new DelegateCommand(OnAddSearchByCategoryConditionExecute, OnAddSearchByCategoryConditionCanExecute);
            AddSearchByFileSizeConditionCommand = new DelegateCommand(OnAddSearchByFileSizeConditionExecute, OnAddSearchByFileSizeConditionCanExecute);
            AddSearchByTagConditionCommand = new DelegateCommand(OnAddSearchByTagConditionExecute, OnAddSearchByTagConditionCanExecute);
            GoSearchCommand = new DelegateCommand(OnSearchExecute, OnSearchCanExecute);

           

           
        }

        private bool OnSearchCanExecute(object arg)
        {
            
            return true;
        }

        private void OnSearchExecute(object obj)
        {
            var condition = SearchCondition.Condition;
            var searchItems = _archiveEntityDataProvider.GetEntitiesByCondition(condition);
            SearchResult = new SearchResult(searchItems);

            _eventAggregator.GetEvent<ShowSearchResultEvent>().Publish(0);
        }

        private bool OnAddSearchByTagConditionCanExecute(object arg)
        {
            return true;
        }

        private void OnAddSearchByTagConditionExecute(object obj)
        {
            var tag = obj as HomeArchiveX.WpfUI.ViewModel.FilesOnDrive.NavigationTagItemViewModel;
          
            if (tag!=null)
            {
                    if (SearchCondition.Widgets.ContainsKey(nameof(SearchByTagWidget)))
                    {
                        (SearchCondition.Widgets[nameof(SearchByTagWidget)] as SearchByTagWidget).AddQuery(tag.DisplayValue);
                        SearchCondition.LoadItems();
                    }
            }
        }

        private bool OnAddSearchByFileSizeConditionCanExecute(object arg)
        {
            return true;
        }

        private void OnAddSearchByFileSizeConditionExecute(object obj)
        {
            throw new NotImplementedException();
        }

        private bool OnAddSearchByCategoryConditionCanExecute(object arg)
        {
            return true;
        }

        private void OnAddSearchByCategoryConditionExecute(object obj)
        {
            var category =(int) obj ;
            if (category >0 )
            {
                int categoryKey = category;
                if (categoryKey > 0)
                {
                    if (SearchCondition.Widgets.ContainsKey(nameof(SearchByCategoryWidget)))
                    {
                        (SearchCondition.Widgets[nameof(SearchByCategoryWidget)] as SearchByCategoryWidget).AddQuery(categoryKey);
                        SearchCondition.LoadItems();
                    }
                }
            }

        }

        private bool OnAddSearchByStringConditionCanExecute(object arg)
        {
            return true;
        }

        private void OnAddSearchByStringConditionExecute(object obj)
        {
            if (!string.IsNullOrWhiteSpace(obj.ToString()))
            {
                if (SearchCondition.Widgets.ContainsKey(nameof(SearchByStringWidget)))
                {
                    string searchString = obj.ToString();
                    (SearchCondition.Widgets[nameof(SearchByStringWidget)] as SearchByStringWidget).AddQuery(searchString);
                    SearchCondition.LoadItems();
                }
            }
            //            _messageDialogService.ShowMessageDialog("", obj.ToString());
        }
        
        public ICommand AddSearchByStringConditionCommand { get; private set; }
        public ICommand AddSearchByCategoryConditionCommand { get; private set; }
        public ICommand AddSearchByFileSizeConditionCommand { get; private set; }
        public ICommand AddSearchByTagConditionCommand { get; private set; }
        public ICommand GoSearchCommand { get; private set; }
        

        public ICategoryNavigationViewModel CategoryNavigationViewModel
        {
            get
            {
                return _categoryNavigationViewModel;
            }
        }

        public ITagNavigationViewModel TagNavigationViewModel
        {
            get
            {
                return _tagNavigationViewModel;
            }
        }

        public void Load()
        {
            CategoryNavigationViewModel.Load();
            TagNavigationViewModel.Load();
        }
    }
}

