using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class TagDeleteByIdAction : CommandBase
    {
        public long? TagId { get; set; }
        
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_Tag_DeleteById", this);
            return Success();
        }
    }
}
