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
    public class UserGetByIdAction<T> : CommandBase<T> where T : class,new()
    {
        public long? UserId { get; set; }
        protected override void OnExecutingCore()
        {
            base.OnExecutingCore();
        }
        protected override Result<T> ExecuteCore()
        {
            var result = Query.QuerySet<T>("sp_User_GetById", this);
            return Success(result.FirstOrDefault());
        }
    }
}
