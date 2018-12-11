using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class ConfigAllStoryAction : CommandBase<dynamic>
    {
        public long? CurrentPage { get; set; }
        private Result<dynamic> GetStory()
        {
            using(var cmd = new StorySearchAction())
            {
                cmd.CurrentPage = this.CurrentPage;
                cmd.PageSize = 32;
                return cmd.Execute();
            }
        }
        protected override Result<dynamic> ExecuteCore()
        {
            return this.GetStory();
        }
    }
}
