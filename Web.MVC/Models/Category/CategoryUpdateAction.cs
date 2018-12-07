using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class CategoryUpdateAction : CommandBase
    {
        public Category Category { get; set; }
        
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_Category_Update", this.Category);
            return Success();
        }
    }
}
