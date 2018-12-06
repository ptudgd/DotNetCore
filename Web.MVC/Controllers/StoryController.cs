using System;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class StoryController : Controller
    {
        public Result<dynamic> Search(StorySearchAction ActionCmd)
        {
            var result = ActionCmd.Execute();
            return result;
        }
        public Result<dynamic> GetById(StoryGetByIdAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result Insert(StoryInsertAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result Update(StoryUpdateAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result DeleteById(StoryDeleteByIdAction ActionCmd)
        {
            return ActionCmd.Execute();
        }


    }
}
