using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTruyenFull
{
    public class InsertStatus : CommandBase<long>
    {
        public Status Status { get; set; }
        protected override Result<long> ExecuteCore()
        {
            Query.Execute("sp_Status_Insert", this.Status);
            return Success(this.Status.StatusId.Value);
        }
    }
}
