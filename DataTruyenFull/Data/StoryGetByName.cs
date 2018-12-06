using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTruyenFull
{
    public class StoryGetByName<T> : CommandBase<T> where T:class,new()
    {
        public Story Story { get; set; }
        protected override Result<T> ExecuteCore()
        {
            var result = Query.QuerySet<T>("sp_Story_GetByName", this.Story);
            return Success(result.FirstOrDefault());
        }
    }
}
