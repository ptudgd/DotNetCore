using System;
using System.Collections.Generic;
using Entity;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            using(var cmd = new HomeListAction<dynamic>())
            {
                this.ViewBag.StoryNewUpdate = cmd.Execute().Data;
            }
            using(var cmd = new HomeViewAction<dynamic>())
            {
                this.ViewBag.StoryView = cmd.Execute().Data;
            }
            return View();
        }

    }
}
