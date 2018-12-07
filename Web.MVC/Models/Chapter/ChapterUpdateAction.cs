using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class ChapterUpdateAction : CommandBase
    {
        public Chapter Chapter { get; set; }
        
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_Chapter_Update", this.Chapter);
            return Success();
        }
    }
}
