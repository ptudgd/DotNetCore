using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class ConfigHomeAction : CommandBase<dynamic>
    {
        private Result<dynamic> GetStoryViewDESC(int PageSize = 2)
        {
            using (var cmd = new StoryOrderByViewAction())
            {
                cmd.PageSize = PageSize;
                return cmd.Execute();
            }
        }
        private Result<dynamic> GetStoryNewUpdate()
        {
            using(var cmd = new StorySearchAction())
            {
                cmd.PageSize = 20;
                return cmd.Execute();
            }
        }
        protected override Result<dynamic> ExecuteCore()
        {
            return Success(new
            {
                StoryBestView = this.GetStoryViewDESC(2),
                StoryMoreView = this.GetStoryViewDESC(10),
                StoryNewUpdate = this.GetStoryNewUpdate()
            });
        }
    }
}
