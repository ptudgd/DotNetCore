using System;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class UserController : Controller
    {
        public Result<dynamic> Search(UserSearchAction ActionCmd)
        {
            var result = ActionCmd.Execute();
            return result;
        }
        public Result<dynamic> GetById(UserGetByIdAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result Insert(UserInsertAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result Update(UserUpdateAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result DeleteById(UserDeleteByIdAction ActionCmd)
        {
            return ActionCmd.Execute();
        }


    }
}
