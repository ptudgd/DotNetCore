using System;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class SearchController : Controller
    {
        public ActionResult Index(StorySearchAction ActionCmd)
        {
            var result = ActionCmd.Execute().Data;
            this.ViewBag.Total = result.Total;
            this.ViewBag.TotalPage = result.TotalPage;
            this.ViewBag.ItemPerPage = result.ItemPerPage;
            this.ViewBag.Data = result.Data;
            this.ViewBag.Message = result.Message;
            this.ViewBag.IsSuccess = result.IsSuccess;
            return View();
        }
        

    }
}
