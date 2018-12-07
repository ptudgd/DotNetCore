using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class ChapterDeleteByIdAction : CommandBase
    {
        public long? ChapterId { get; set; }
        
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_Chapter_DeleteById", this);
            return Success();
        }
    }
}
