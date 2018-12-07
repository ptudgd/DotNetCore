using System;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class StatusController : Controller
    {
        public Result<dynamic> Search(StatusSearchAction ActionCmd)
        {
            var result = ActionCmd.Execute();
            return result;
        }
        public Result<dynamic> GetById(StatusGetByIdAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result Insert(StatusInsertAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result Update(StatusUpdateAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result DeleteById(StatusDeleteByIdAction ActionCmd)
        {
            return ActionCmd.Execute();
        }


    }
}
