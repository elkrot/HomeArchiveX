using HomeArchiveX.Search;
using HomeArchiveX.Search.Condition;
using HomeArchiveX.WpfU.Command;
using HomeArchiveX.WpfUI.DataProvider;
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
           
        }

    public class SearchNavigationViewModel : Observable, ISearchNavigationViewModel
    {

        private readonly IEventAggregator _eventAggregator;
        private readonly IMessageDialogService _messageDialogService;
        private readonly ICategoryDataProvider _categoryDataProvider;
        private readonly ITagDataProvider _tagDataProvider;
        private ICategoryNavigationViewModel _categoryNavigationViewModel;
        private ITagNavigationViewModel _tagNavigationViewModel;
        public SearchCondition SearchCondition;

       

        public SearchNavigationViewModel(IEventAggregator eventAggregator,
            IMessageDialogService messageDialogService
            , ICategoryNavigationViewModel categoryNavigationViewModel
            , ICategoryDataProvider categoryDataProvider
            , ITagDataProvider tagDataProvider
            , ITagNavigationViewModel tagNavigationViewModel)
        {
            _eventAggregator = eventAggregator;
            _messageDialogService = messageDialogService;
           
            _categoryDataProvider = categoryDataProvider;
            _tagNavigationViewModel = tagNavigationViewModel;

            _tagDataProvider = tagDataProvider;

            _categoryNavigationViewModel = categoryNavigationViewModel;
           

            var SearchWidgets = new Dictionary<string,SearchWidget<SearchWidgetItem>>();
            SearchWidgets[nameof(SearchByStringWidget)]=(new SearchByStringWidget());
            SearchWidgets[nameof(SearchByCategoryWidget)] = (new SearchByCategoryWidget());
            SearchWidgets[nameof(SearchByFileSizeWiget)] = (new SearchByFileSizeWiget());
            SearchWidgets[nameof(SearchByTagWidget)] = (new SearchByTagWidget());

 SearchCondition = new SearchCondition(SearchWidgets);

            AddSearchByStringConditionCommand = new DelegateCommand(OnAddSearchByStringConditionExecute, OnAddSearchByStringConditionCanExecute);
            AddSearchByCategoryConditionCommand = new DelegateCommand(OnAddSearchByConditionConditionExecute, OnAddSearchByConditionConditionCanExecute);
            AddSearchByFileSizeConditionCommand = new DelegateCommand(OnAddSearchByFileSizeConditionExecute, OnAddSearchByFileSizeConditionCanExecute);
            AddSearchByTagConditionCommand = new DelegateCommand(OnAddSearchByTagConditionExecute, OnAddSearchByTagConditionCanExecute);

        }

        private bool OnAddSearchByTagConditionCanExecute(object arg)
        {
            return true;
        }

        private void OnAddSearchByTagConditionExecute(object obj)
        {
            throw new NotImplementedException();
        }

        private bool OnAddSearchByFileSizeConditionCanExecute(object arg)
        {
            return true;
        }

        private void OnAddSearchByFileSizeConditionExecute(object obj)
        {
            throw new NotImplementedException();
        }

        private bool OnAddSearchByConditionConditionCanExecute(object arg)
        {
            return true;
        }

        private void OnAddSearchByConditionConditionExecute(object obj)
        {
            throw new NotImplementedException();
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
                    (SearchCondition.Widgets[nameof(SearchByStringWidget)] as SearchByStringWidget).AddQuery(obj.ToString());
                }
            }
//            _messageDialogService.ShowMessageDialog("", obj.ToString());
        }

        public ICommand AddSearchByStringConditionCommand { get; private set; }
        public ICommand AddSearchByCategoryConditionCommand { get; private set; }
        public ICommand AddSearchByFileSizeConditionCommand { get; private set; }
        public ICommand AddSearchByTagConditionCommand { get; private set; }

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

