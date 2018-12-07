using System;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class TagController : Controller
    {
        public Result<dynamic> Search(TagSearchAction ActionCmd)
        {
            var result = ActionCmd.Execute();
            return result;
        }
        public Result<dynamic> GetById(TagGetByIdAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result Insert(TagInsertAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result Update(TagUpdateAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result DeleteById(TagDeleteByIdAction ActionCmd)
        {
            return ActionCmd.Execute();
        }


    }
}
