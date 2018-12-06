using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class StoryDeleteByIdAction : CommandBase
    {
        public long? StoryId { get; set; }
        
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_Story_DeleteById", this);
            return Success();
        }
    }
}
