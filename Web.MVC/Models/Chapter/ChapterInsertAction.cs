using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class ChapterInsertAction : CommandBase
    {
        public Chapter Chapter { get; set; }
        
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_Chapter_Insert", this.Chapter);
            return Success();
        }
    }
}
