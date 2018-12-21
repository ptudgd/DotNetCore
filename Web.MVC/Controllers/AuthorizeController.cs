using System;
using System.Collections.Generic;
using DataHelper;
using Entity;
using Infrastructure;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class AuthorizeController : Controller
    {
        public bool Login(string Email,string Password)
        {
            using(var cmd = new UserGetByIdAction<User>())
            {
                cmd.Email = Email;
                cmd.Password = MD5.CreateMD5(Password);
                var result = cmd.Execute().Data;
                if(result != null)
                {
                    result.LastLogin = DateTime.Now.Ticks;
                    result.Token = JWT.JWT_Encode(result);
                    using(var u = new UserUpdateAction())
                    {
                        u.user = result;
                        u.Execute();
                    }
                    HttpContext.Session.SetString("Token", result.Token);
                    return true;
                }
                else
                {
                    return false;
                }
            }
            
        }
        
    }
}
