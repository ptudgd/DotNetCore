using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTruyenFull
{
    public class InsertCategory : CommandBase<long>
    {
        public Category Category { get; set; }
        protected override Result<long> ExecuteCore()
        {
            Query.Execute("sp_Category_Insert", this.Category);
            return Success(this.Category.CategoryId.Value);
        }
    }
}
