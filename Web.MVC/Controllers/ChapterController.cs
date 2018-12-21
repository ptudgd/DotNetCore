using System;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class ChapterController : Controller
    {
        public Result<dynamic> Search(ChapterSearchAction ActionCmd)
        {
            var result = ActionCmd.Execute();
            return result;
        }
    }
}
