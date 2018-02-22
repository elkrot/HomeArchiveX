using HomeArchiveX.Model;
using HomeArchiveX.Search.Result;
using HomeArchiveX.WpfUI.View.Services;
using Microsoft.Practices.Prism.PubSubEvents;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.WpfUI.ViewModel
{

    public interface ISearchResultViewModel {
        void Load();
        SearchResult SearchResult { get; set; }
    }
    public class SearchResultViewModel : Observable, ISearchResultViewModel
    {
        private readonly IEventAggregator _eventAggregator;
        private readonly IMessageDialogService _messageDialogService;

        private SearchResult _searchResult;

        public SearchResultViewModel(IEventAggregator eventAggregator
            , IMessageDialogService messageDialogService)
        {
            _eventAggregator = eventAggregator;
            _messageDialogService = messageDialogService;

            SearchResult = new SearchResult(new List<ArchiveEntity>());


        }

        public SearchResult SearchResult    { get;set;   }

        public void Load()
        {
            throw new NotImplementedException();
        }
    }
}


/*
 public class OpenDriveEditViewEvent: PubSubEvent<int>
 ShowSearchResultEvent
 Основная ВиевМодел
 
 DrivesViewModel
 
 ctor
 _eventAggregator.GetEvent<OpenDriveEditViewEvent>().Subscribe(OnOpenDriverTab);
 
 
         private void OnOpenDriverTab(int driverId)
        {
            IDriveEditViewModel driveEditVm =
              DriveEditViewModels.SingleOrDefault(vm => vm.Drive.DriveId == driverId);
            if (driveEditVm == null)
            {
                driveEditVm = _drivesEditViewModelCreator();
				Добавляем к списку моделей
                DriveEditViewModels.Add(driveEditVm);
                driveEditVm.Load(driverId);
            }
            SelectedDriveEditViewModel = driveEditVm;
        }


Навигационная
xaml
Button Command="{Binding OpenDriveEditViewCommand}"

DrivesNavViewModel

OpenDriveEditViewExecute
 _eventAggregator.GetEvent<OpenDriveEditViewEvent>().Publish(DriveId);
 
     
     */
