using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class ContentUpdateAction : CommandBase
    {
        public Content content { get; set; }

        protected override Result ExecuteCore()
        {
            Query.Execute("sp_Content_Update", this.content);
            return Success();
        }
    }
}
