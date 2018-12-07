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
        private Story GetStory()
        {
            return Query.QuerySet<Story>("sp_Story_GetById", this).FirstOrDefault();
        }
        private List<Category> GetTag()
        {
            return Query.ExecuteReader<Category>("SELECT Category.Name as CategoryName FROM Tag LEFT JOIN Category on Category.CategoryId = Tag.CategoryId WHERE Tag.StoryId = @StoryId", this);
        }
        private List<Chapter> GetChapters()
        {
            return Query.ExecuteReader<Chapter>("SELECT * FROM Chapter WHERE Chapter.StoryId = @StoryId", this);
        }
        protected override Result<dynamic> ExecuteCore()
        {
            var result = new
            {
                Story = this.GetStory(),
                Tag = this.GetTag(),
                Chapter = this.GetChapters()
            };
            return Success(result);
        }
    }
}
