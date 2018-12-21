using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Entity;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class AdminUserController : Controller
    {
        public IActionResult Index(UserSearchAction<User> ActionCmd)
        {
            this.ViewBag.Result = ActionCmd.Execute().Data;
            return View();
        }
        public IActionResult GetById(UserGetByIdAction<User> ActionCmd)
        {
            var result =  ActionCmd.Execute().Data;
            this.ViewBag.Result = new User();
            if (result != null)
                this.ViewBag.Result = result;
            return View();
        }
        public Result ExecuteSave(UserSaveAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result DeleteById(UserDeleteByIdAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
    }
}