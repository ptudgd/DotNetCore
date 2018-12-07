using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class UserDeleteByIdAction : CommandBase
    {
        public long? UserId { get; set; }
        
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_User_DeleteById", this);
            return Success();
        }
    }
}
