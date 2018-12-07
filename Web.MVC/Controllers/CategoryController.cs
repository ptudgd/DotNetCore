using System;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class CategoryController : Controller
    {
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
