using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class CategoryGetByIdAction : CommandBase<dynamic>
    {
        public long? CategoryId { get; set; }
        protected override Result<dynamic> ExecuteCore()
        {
            var result = Query.QuerySet<dynamic>("sp_Category_GetById", this);
            return Success(result);
        }
    }
}
