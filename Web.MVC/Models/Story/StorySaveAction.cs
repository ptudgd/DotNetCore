using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class StorySaveAction : CommandBase
    {
        public Story Story { get; set; }
        
        protected override Result ExecuteCore()
        {
            if (this.Story.StoryId.HasValue)
            {
                Query.Execute("sp_Story_Update", this.Story);
            }
            else
            {
                Query.Execute("sp_Story_Insert", this.Story);
            }
            return Success();
        }
    }
}
