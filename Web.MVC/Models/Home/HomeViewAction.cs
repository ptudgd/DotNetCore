using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class HomeViewAction<T> : CommandBase<List<T>> where T: class,new()
    {
        public long? CurrentPage { get; set; }
        public long? Total { get; set; }
        public long? PageSize { get; set; }
        protected override void OnExecutingCore()
        {
            base.OnExecutingCore();
            this.CurrentPage = this.CurrentPage ?? 1;
            this.PageSize = this.PageSize ?? 20;
        }
        protected override Result<List<T>> ExecuteCore()
        {
            var result = Query.QuerySet<T>("sp_Home_View", this);
            return Success(result);
        }

    }
}
