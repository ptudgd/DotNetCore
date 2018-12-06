using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class StoryUpdateAction : CommandBase
    {
        public Story story { get; set; }
        
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_Story_Update", this.story);
            return Success();
        }
    }
}
