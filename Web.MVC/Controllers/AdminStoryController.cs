﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class AdminStoryController : Controller
    {
        public IActionResult Index(StorySearchAction ActionCmd)
        {
            this.ViewBag.Result = ActionCmd.Execute().Data.Data;
            return View();
        }
        public IActionResult Detail(ChapterGetByIdAction ActionCmd)
        {
            this.ViewBag.Result = ActionCmd.Execute().Data;
            return View();
        }
        public Result DeleteById(StoryDeleteByIdAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result StoryExecuteSave(StorySaveAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public IActionResult GetById(StoryGetByIdAction ActionCmd)
        {
            this.ViewBag.Result = ActionCmd.Execute().Data;
            return View();
        }

    }
}