using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class HomeListAction : CommandBase<dynamic>
    {
        protected override Result<dynamic> ExecuteCore()
        {
            var result = Query.QuerySet<dynamic>("sp_Home_List", this);
            return Success(new {
                StoryNewUpdate = result
            });
        }

    }
}
