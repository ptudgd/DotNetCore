using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class ConfigContentStoryAction : CommandBase<dynamic>
    {
        public long? StoryId { get; set; }
        public long? ChapterId { get; set; }
        private Result<dynamic> GetContent()
        {
            using(var cmd = new ContentGetByIdAction())
            {
                cmd.ChapterId = this.ChapterId;
                cmd.StoryId = this.StoryId;
                return cmd.Execute();
            }
        }
        protected override Result<dynamic> ExecuteCore()
        {
            return this.GetContent();
        }
    }
}
