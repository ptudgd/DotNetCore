using System;
using System.Collections.Generic;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class AdminController : Controller
    {
        public ActionResult Index()
        {
            
                return View();
            
        }
        
    }
}
