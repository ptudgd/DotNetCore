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
        public Result<dynamic> GetById(ChapterGetByIdAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result Insert(ChapterInsertAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result Update(ChapterUpdateAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result DeleteById(ChapterDeleteByIdAction ActionCmd)
        {
            return ActionCmd.Execute();
        }


    }
}
