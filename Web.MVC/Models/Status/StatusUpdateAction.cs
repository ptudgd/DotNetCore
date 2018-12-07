using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class StatusUpdateAction : CommandBase
    {
        public Status Status { get; set; }
        
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_Status_Update", this.Status);
            return Success();
        }
    }
}
