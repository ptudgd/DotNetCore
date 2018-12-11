using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class ConfigSideBarAction : CommandBase<dynamic>
    {
        private List<dynamic> GetCategory()
        {
            using(var cmd = new CategorySearchAction())
            {
                return cmd.Execute().Data.Data;
            }
        }
        private List<dynamic> GetStoryHot()
        {
            using(var cmd = new StoryOrderByViewAction())
            {
                cmd.PageSize = 10;
                return cmd.Execute().Data.Data;
            }
        }
        private List<dynamic> GetStoryNew()
        {
            using(var cmd = new StorySearchAction())
            {
                cmd.PageSize = 5;
                return cmd.Execute().Data.Data;
            }
        }
        protected override Result<dynamic> ExecuteCore()
        {
            return Success(new
            {
                Category = this.GetCategory(),
                StoryHot = this.GetStoryHot(),
                StoryNew = this.GetStoryNew()
            });
        }
    }
}
