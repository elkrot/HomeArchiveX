using Autofac;
using HomeArchiveX.DataAccess;
using HomeArchiveX.Model;
using HomeArchiveX.WpfU.DataProvider;
using HomeArchiveX.WpfU.DataProvider.Lookups;
using HomeArchiveX.WpfUI.DataProvider;
using HomeArchiveX.WpfUI.View.Services;
using HomeArchiveX.WpfUI.ViewModel;
using HomeArchiveX.WpfUI.ViewModel.FilesOnDrive;
using Microsoft.Practices.Prism.PubSubEvents;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.WpfU.Startup
{
    public class Bootstrapper
    {
        public IContainer Bootstrap()
        {
            var builder = new ContainerBuilder();

            builder.RegisterType<EventAggregator>().As<IEventAggregator>().SingleInstance();
            builder.RegisterType<MessageDialogService>().As<IMessageDialogService>();

            builder.RegisterType<EFDataService>().As<IDataService>();
            #region Drive
            builder.RegisterType<DriveLookupProvider>().As<ILookupProvider<Drive>>();

            builder.RegisterType<DriversDataProvider>().As<IDrivesDataProvider>();
            builder.RegisterType<DriveEditViewModel>().As<IDriveEditViewModel>();
            builder.RegisterType<DrivesNavigationViewModel>().As<IDrivesNavigationViewModel>();
           
            builder.RegisterType<DrivesViewModel>().AsSelf();
            #endregion

            #region FileOnDrive
            builder.RegisterType<FilesOnDriveLookupProvider>().As<ITreeViewLookupProvider<ArchiveEntity>>();

            builder.RegisterType<CategoryLookupProvider>().As<ITreeViewLookupProvider<Category>>();

            builder.RegisterType<FilesOnDriveDataProvider>().As<IFilesOnDriveDataProvider>();
            builder.RegisterType<FilesOnDriveEditViewModel>().As<IFilesOnDriveEditViewModel>();
            builder.RegisterType<FilesOnDriveNavigationViewModel>().As<IFilesOnDriveNavigationViewModel>();
            builder.RegisterType<CategoryNavigationViewModel>().As<ICategoryNavigationViewModel>();

        
            builder.RegisterType<FilesOnDriveViewModel>().AsSelf();
            #endregion


            /*  builder.RegisterType<StatusLookupProvider>().As<ILookupProvider<Status>>();
             builder.RegisterType<SalesOrderLookupProvider>().As<ILookupProvider<SalesOrderHeader>>();
             builder.RegisterType<SalesPersonLookupProvider>().As<ILookupProvider<SalesPerson>>();
             builder.RegisterType<CustomerLookupProvider>().As<ILookupProvider<Customer>>();
             builder.RegisterType<TransportCompanyLookupProvider>().As<ILookupProvider<TransportCompany>>();
             builder.RegisterType<SalesOrderDataProvider>().As<ISalesOrderDataProvider>();
             builder.RegisterType<ReportCondition>().As<IReportCondition>();



             builder.RegisterType<SalesOrderHeaderEditViewModel>().As<ISalesOrderHeaderEditViewModel>();
             builder.RegisterType<NavigationViewModel>().As<INavigationViewModel>();


             builder.RegisterType<SalesPersonDataProvider>().As<ISalesPersonDataProvider>();
             builder.RegisterType<SalesPersonEditViewModel>().As<ISalesPersonEditViewModel>();
             builder.RegisterType<SalesPesonNavigationViewModel>().As<ISalesPesonNavigationViewModel>();

             builder.RegisterType<CustomerDataProvider>().As<ICustomerDataProvider>();
             builder.RegisterType<CustomerEditViewModel>().As<ICustomerEditViewModel>();
             builder.RegisterType<CustomerNavigationViewModel>().As<ICustomerNavigationViewModel>();


             builder.RegisterType<TransportCompanyDataProvider>().As<ITransportCompanyDataProvider>();
             builder.RegisterType<TransportCompanyEditViewModel>().As<ITransportCompanyEditViewModel>();
             builder.RegisterType<TransportCompanyNavigationViewModel>().As<ITransportCompanyNavigationViewModel>();

             builder.RegisterType<ConditionViewModel>().AsSelf();




             builder.RegisterType<CityDataProvider>().As<ICityDataProvider>();
             builder.RegisterType<CityEditViewModel>().As<ICityEditViewModel>();
             builder.RegisterType<CityNavigationViewModel>().As<ICityNavigationViewModel>();


             builder.RegisterType<MainViewModel>().AsSelf();
             builder.RegisterType<SalesPersonViewModel>().AsSelf();
             builder.RegisterType<CustomerViewModel>().AsSelf();
             builder.RegisterType<ReferencesViewModel>().AsSelf();
             builder.RegisterType<TransportCompanyViewModel>().AsSelf();
             builder.RegisterType<CityViewModel>().AsSelf();*/

            return builder.Build();
        }
    }
}
