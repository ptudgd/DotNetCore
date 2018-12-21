using System;
using System.Collections.Generic;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class CategoryController : Controller
    {
        public ActionResult Index(CategorySearchAction ActionCmd)
        {
            this.ViewBag.Result = ActionCmd.Execute();
            return View();
        }
    }
}
