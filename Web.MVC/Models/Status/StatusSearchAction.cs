using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class StatusSearchAction : CommandBase<dynamic>
    {
        public long? CurrentPage { get; set; }
        public long? Total { get; set; }
        public long? PageSize { get; set; }

        public string QuickSearch { get; set; }
        protected override void OnExecutingCore()
        {
            this.CurrentPage = this.CurrentPage ?? 1;
            this.PageSize = this.PageSize ?? 30;
        }
        protected override Result<dynamic> ExecuteCore()
        {
            var result = Success(Query.QuerySet<dynamic>("sp_Status_Search", this));
            
            return Success(new
            {
                IsSuccess = result.IsSuccess,
                Data = result.Data,
                Message = result.Message,
                Total = this.Total,
                ItemPerPage = this.PageSize,
                TotalPage = Math.Ceiling(Convert.ToDecimal(this.Total) / Convert.ToDecimal(this.PageSize))
            });
        }
    }
}
