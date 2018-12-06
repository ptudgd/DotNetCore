using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTruyenFull
{
    public class InsertChapter : CommandBase<long>
    {
        public Chapter Chapter { get; set; }
        protected override Result<long> ExecuteCore()
        {
            Query.Execute("sp_Chapter_Insert", this.Chapter);
            return Success(this.Chapter.ChapterId.Value);
        }
    }
}
