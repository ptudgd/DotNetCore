using System;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class StoryController : Controller
    {
        public ActionResult Index(StoryGetByIdAction ActionCmd)
        {
            this.ViewBag.Result =  ActionCmd.Execute().Data;
            using(var cmd = new TagGetByIdAction())
            {
                cmd.StoryId = ActionCmd.StoryId;
                this.ViewBag.Tags = cmd.Execute().Data;
            }
            using(var cmd = new ChapterGetByIdAction())
            {
                cmd.StoryId = ActionCmd.StoryId;
                this.ViewBag.Chapter = cmd.Execute().Data;
            }
            return View();
        }

    }
}
