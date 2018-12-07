using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class ContentGetByIdAction : CommandBase<dynamic>
    {
        public long? ContentId { get; set; }
        protected override Result<dynamic> ExecuteCore()
        {
            var result = Query.QuerySet<dynamic>("sp_Content_GetById", this);
            return Success(result);
        }
    }
}
