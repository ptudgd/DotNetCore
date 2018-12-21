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


    }
}
