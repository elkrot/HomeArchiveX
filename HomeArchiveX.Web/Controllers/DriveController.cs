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
        


        public DriveController() : base()
        {

        }
       
        public ActionResult Index(int page=1)
        {
            var model = new DriveViewModel(page);
            return View(model);
        }


        
    }
}