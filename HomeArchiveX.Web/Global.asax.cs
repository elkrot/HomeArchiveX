using Autofac;
using AutoMapper;
using HomeArchiveX.Web.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace HomeArchiveX.Web
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            var bootstrapper = new Bootstrapper();
            IContainer container = bootstrapper.Bootstrap();

            /*
                _driveViewModel = container.Resolve<DrivesViewModel>();
               
                MainWindow = new MainWindow(_driveViewModel);
                //MainWindow = new MainWindow();
                MainWindow.Show();
                _driveViewModel.Load();*/


            Mapper.Initialize(c=>c.AddProfile<MappingProfile>());
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}
