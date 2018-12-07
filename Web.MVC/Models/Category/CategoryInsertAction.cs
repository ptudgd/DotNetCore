using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class CategoryInsertAction : CommandBase
    {
        public Category Category { get; set; }
        
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_Category_Insert", this.Category);
            return Success();
        }
    }
}
