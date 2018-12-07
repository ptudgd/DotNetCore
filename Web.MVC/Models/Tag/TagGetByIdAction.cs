using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Web.MVC.Models
{
    public class TagGetByIdAction : CommandBase<dynamic>
    {
        public long? TagId { get; set; }
        protected override Result<dynamic> ExecuteCore()
        {
            var result = Query.QuerySet<dynamic>("sp_Tag_GetById", this);
            return Success(result);
        }
    }
}
