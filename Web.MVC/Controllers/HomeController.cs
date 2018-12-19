using System;
using System.Collections.Generic;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            using(var cmd = new HomeListAction())
            {
                this.ViewBag.Result = cmd.Execute().Data;
                return View();
            }
        }
        
    }
}
