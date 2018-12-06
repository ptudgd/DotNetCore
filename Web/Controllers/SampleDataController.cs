using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DataHelper;
using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers
{
    [Route("api/[controller]")]
    public class SampleDataController : Controller
    {
        [HttpGet]
        public IEnumerable<dynamic> Home()
        {
            
            return Query.QuerySet<dynamic>("sp_Story_Search", this);
        }

        
    }
}
