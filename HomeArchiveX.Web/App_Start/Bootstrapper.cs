using Autofac;
using HomeArchiveX.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HomeArchiveX.Web.App_Start
{
    public class Bootstrapper
    {
        public IContainer Bootstrap()
        {
            var builder = new ContainerBuilder();
            builder.RegisterType<EFDataService>().As<IDataService>();
            return builder.Build();
        }
    }
}