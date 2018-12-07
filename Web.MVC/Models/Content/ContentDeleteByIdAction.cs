using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class ContentDeleteByIdAction : CommandBase
    {
        public long? ContentId { get; set; }
        
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_Content_DeleteById", this);
            return Success();
        }
    }
}
