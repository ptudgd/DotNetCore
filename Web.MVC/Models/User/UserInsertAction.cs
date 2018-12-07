using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC
{
    public class UserInsertAction : CommandBase
    {
        public User user { get; set; }
        
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_User_Insert", this.user);
            return Success();
        }
    }
}
