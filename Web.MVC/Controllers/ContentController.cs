using System;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class ContentController : Controller
    {
        public Result<dynamic> Search(ContentSearchAction ActionCmd)
        {
            var result = ActionCmd.Execute();
            return result;
        }
        public Result<dynamic> GetById(ContentGetByIdAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result Insert(ContentInsertAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result Update(ContentUpdateAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result DeleteById(ContentDeleteByIdAction ActionCmd)
        {
            return ActionCmd.Execute();
        }


    }
}
