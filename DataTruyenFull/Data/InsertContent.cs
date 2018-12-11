using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTruyenFull
{
    public class InsertContent : CommandBase<long>
    {
        public ContentData content { get; set; }
        protected override Result<long> ExecuteCore()
        {
            Query.Execute("sp_Content_Insert", this.content);
            return Success(this.content.ChapterId.Value);
        }
    }
}
