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
        public Result<dynamic> Search(CategorySearchAction ActionCmd)
        {
            var result = ActionCmd.Execute();
            return result;
        }
        public Result<dynamic> GetById(CategoryGetByIdAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result Insert(CategoryInsertAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result Update(CategoryUpdateAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result DeleteById(CategoryDeleteByIdAction ActionCmd)
        {
            return ActionCmd.Execute();
        }


    }
}
