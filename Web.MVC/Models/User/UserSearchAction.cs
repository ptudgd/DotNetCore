using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class UserSearchAction<T> : CommandBase<List<T>> where T:class,new()
    {
        public long? CurrentPage { get; set; }
        public long? Total { get; set; }
        public long? PageSize { get; set; }

        public string Email { get; set; }
        public string QuickSearch { get; set; }
        protected override void OnExecutingCore()
        {
            this.CurrentPage = this.CurrentPage ?? 1;
            this.PageSize = this.PageSize ?? 30;
        }
        protected override Result<List<T>> ExecuteCore()
        {
            var result = Success(Query.QuerySet<T>("sp_User_Search", this));
            
            return result;
        }
    }
}
