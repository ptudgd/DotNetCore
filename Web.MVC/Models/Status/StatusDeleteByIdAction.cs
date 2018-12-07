using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class StatusDeleteByIdAction : CommandBase
    {
        public long? StatusId { get; set; }
        
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_Status_DeleteById", this);
            return Success();
        }
    }
}
