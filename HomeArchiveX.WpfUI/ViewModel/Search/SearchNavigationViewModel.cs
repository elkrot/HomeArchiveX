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
        private readonly ITagDataProvider _tagDataProvider;
        private ICategoryNavigationViewModel _categoryNavigationViewModel;
        private ITagNavigationViewModel _tagNavigationViewModel;


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
        }


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
