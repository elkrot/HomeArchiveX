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
        public DriveController()
        {
            var bootstrapper = new Bootstrapper();
            IContainer container = bootstrapper.Bootstrap();
            _dataServiceCreator = container.Resolve<Func<IDataService>>();
        }

        public ActionResult Index(int page = 1)
        {
            var model = new DriveViewModel(page);
            return View(model);
        }

        [HttpGet]
        [ActionName("Edit")]
        public ActionResult Edit(int id)
        {
            using (var service = _dataServiceCreator())
            {
                var drive = service.GetDriveById(id);
                return View(drive);
            }

        }

        [HttpPost]
        [ActionName("Edit")]
        public ActionResult SaveDrive(Drive Drive)
        {
            using (var service = _dataServiceCreator())
            {
                if (ModelState.IsValid)
                {
                    var saveResult = service.SaveDrive(Drive);
                }
                
            }
            return View();
        }

        public ActionResult Detail(int id)
        {
            using (var service = _dataServiceCreator())
            {
                var model = new FileOnDriveViewModel(id);
                return View(model);
            }

        }
    }
}