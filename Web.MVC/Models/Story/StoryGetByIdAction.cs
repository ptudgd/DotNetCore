using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class StoryGetByIdAction : CommandBase<dynamic>
    {
        public long? StoryId { get; set; }
        protected override Result<dynamic> ExecuteCore()
        {
            return Success(Query.QuerySet<dynamic>("sp_Story_GetById", this).FirstOrDefault());
        }
    }
}
