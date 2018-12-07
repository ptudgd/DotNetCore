using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class StatusInsertAction : CommandBase
    {
        public Status Status { get; set; }
        
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_Status_Insert", this.Status);
            return Success();
        }
    }
}
