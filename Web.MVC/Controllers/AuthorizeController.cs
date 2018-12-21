using System;
using System.Collections.Generic;
using System.Linq;
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
            using(var cmd = new UserSearchAction<User>())
            {
                cmd.Email = Email;
                var result = cmd.Execute().Data;
                if(result.Count > 0)
                {
                    var data = result.FirstOrDefault(x => x.Password == MD5.CreateMD5(Password));
                    if(data != null)
                    {
                        data.LastLogin = DateTime.Now.Ticks;
                        data.Token = JWT.JWT_Encode(data);
                        using (var u = new UserUpdateAction())
                        {
                            u.user = data;
                            u.Execute();
                        }
                        HttpContext.Session.SetString("Token", data.Token);
                        return true;
                    }
                    return false;
                    
                }
                else
                {
                    return false;
                }
            }
            
        }
        
    }
}
