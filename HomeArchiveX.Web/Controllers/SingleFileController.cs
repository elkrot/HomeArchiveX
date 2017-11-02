using HomeArchiveX.Web.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HomeArchiveX.Web.Controllers
{
    public class SingleFileController : Controller
    {
        // GET: File
       

        public ActionResult Details(int id)
        {
            var model = new SingleFileViewModel(id);
            return View(model);
        }
    }
}