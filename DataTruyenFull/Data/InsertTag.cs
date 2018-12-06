using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTruyenFull
{
    public class InsertTag : CommandBase
    {
        public Tag Tag { get; set; }
        protected override Result ExecuteCore()
        {
            Query.Execute("sp_Tag_Insert", this.Tag);
            return Success();
        }
    }
}
