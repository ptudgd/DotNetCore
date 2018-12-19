using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class CategorySearchAction : CommandBase<dynamic>
    {
        public long? CurrentPage { get; set; }
        public long? Total { get; set; }
        public long? PageSize { get; set; }

        public string QuickSearch { get; set; }
        public CategorySearchAction()
        {

        }
        protected override void OnExecutingCore()
        {
            this.CurrentPage = this.CurrentPage ?? 1;
            this.PageSize = this.PageSize ?? 30;
        }
        protected override Result<dynamic> ExecuteCore()
        {
            var result = Query.QuerySet<dynamic>("sp_Category_Search", this);
            
            return Success(result);
        }
    }
}
