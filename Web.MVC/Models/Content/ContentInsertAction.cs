using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class ContentInsertAction : CommandBase
    {
        public Content Content { get; set; }
        
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_Content_Insert", this.Content);
            return Success();
        }
    }
}
