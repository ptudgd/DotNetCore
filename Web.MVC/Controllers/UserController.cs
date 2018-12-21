using System;
using System.Collections.Generic;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class UserController : Controller
    {
        public Result<List<dynamic>> Search(UserSearchAction<dynamic> ActionCmd)
        {
            var result = ActionCmd.Execute();
            return result;
        }


    }
}
