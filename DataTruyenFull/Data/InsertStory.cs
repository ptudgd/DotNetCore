using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTruyenFull
{
    public class InsertStory : CommandBase<long>
    {
        public Story Story { get; set; }
        protected override Result<long> ExecuteCore()
        {
            Query.Execute("sp_Story_Insert", this.Story);
            return Success(this.Story.StoryId.Value);
        }
    }
}
