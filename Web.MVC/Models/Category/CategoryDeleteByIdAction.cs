using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class CategoryDeleteByIdAction : CommandBase
    {
        public long? CategoryId { get; set; }
        
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_Category_DeleteById", this);
            return Success();
        }
    }
}
