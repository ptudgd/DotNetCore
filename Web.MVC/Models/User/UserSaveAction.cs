using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
namespace Web.MVC.Models
{
    public class UserSaveAction : CommandBase
    {
        public User User { get; set; }
        protected override void OnExecutingCore()
        {
            base.OnExecutingCore();
        }
        protected override Result ExecuteCore()
        {
            if (this.User.UserId.HasValue)
            {
                Query.Execute("sp_User_Update", this.User);
            }
            else
            {
                this.User.IsAdmin = false;
                this.User.Password = MD5.CreateMD5(this.User.Password);
                this.User.Token = JWT.JWT_Encode(this.User);
                Query.Execute("sp_User_Insert", this.User);
            }
            return Success();
        }
    }
}
