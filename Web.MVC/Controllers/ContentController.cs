using System;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class ContentController : Controller
    {
        public ActionResult Index(ContentGetByIdAction ActionCmd)
        {
            this.ViewBag.Result =  ActionCmd.Execute().Data;
            return View();
        }
        

    }
}
