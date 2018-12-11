using DataHelper;
using Entity;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class ConfigStoryInfoAction : CommandBase<dynamic>
    {
        public long? StoryId { get; set; }
        private dynamic GetStory()
        {
            using(var cmd = new StoryGetByIdAction())
            {
                cmd.StoryId = this.StoryId;
                return cmd.Execute().Data;
            }
        }
        private List<dynamic> GetTag()
        {
            using(var cmd = new TagGetByIdAction())
            {
                cmd.StoryId = this.StoryId;
                return cmd.Execute().Data;
            }
        }
        private List<dynamic> GetChapter()
        {
            using(var cmd = new ChapterGetByIdAction())
            {
                cmd.StoryId = this.StoryId;
                return cmd.Execute().Data;
            }
        }
        protected override Result<dynamic> ExecuteCore()
        {
            return Success(new
            {
                Story = this.GetStory(),
                Tag = this.GetTag(),
                Chapter = this.GetChapter()
            });
        }
    }
}
