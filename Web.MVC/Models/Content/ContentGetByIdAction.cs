using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class ContentGetByIdAction : CommandBase<dynamic>
    {
        public long? StoryId { get; set; }
        public long? ChapterId { get; set; }
        protected override void OnExecutingCore()
        {
            base.OnExecutingCore();
            this.ChapterId = this.ChapterId ?? 1;
        }
        protected override Result<dynamic> ExecuteCore()
        {
            var result = Query.QuerySet<dynamic>("sp_Content_GetById", this);
            return Success(result.FirstOrDefault());
        }
    }
}
