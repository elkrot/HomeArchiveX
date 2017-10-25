using Autofac;
using AutoMapper;
using HomeArchiveX.DataAccess;
using HomeArchiveX.Model;
using HomeArchiveX.Web.App_Start;
using HomeArchiveX.Web.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.Mvc;

namespace HomeArchiveX.Web.Controllers
{
    public class DriveController : Controller
    {
        private readonly Func<IDataService> _dataServiceCreator;
        public int RowsCountOnPage { get { return 10; } }


        public DriveController() : base()
        {
            var bootstrapper = new Bootstrapper();
            IContainer container = bootstrapper.Bootstrap();
            _dataServiceCreator = container.Resolve<Func<IDataService>>();
        }
        public DriveController(Func<IDataService> dataServiceCreator):base()
        {
            _dataServiceCreator = dataServiceCreator;

        }
        // GET: Drive
        public ActionResult Index(int page=1)
        {
            IEnumerable<DriveDto> model = GetLookupWithCondition(x => x.DriveId.Equals(x.DriveId)
           ,o=>o.Title, false, page, RowsCountOnPage);
            return View(model);
        }


        public IEnumerable<DriveDto> GetLookupWithCondition(Expression<Func<Drive, bool>> where
           , Expression<Func<Drive, object>> orderby, bool isDescending, int index, int length)
        {
            using (var service = _dataServiceCreator())
            {
                return service.GetDrivesByCondition(where, orderby, isDescending, index, length)
                        .Select(Mapper.Map<Drive,DriveDto>);
            }
        }
    }
}