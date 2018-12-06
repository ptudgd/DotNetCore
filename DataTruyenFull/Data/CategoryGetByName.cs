﻿using DataHelper;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTruyenFull
{
    public class CategoryGetByName<T> : CommandBase<T> where T: class,new()
    {
        public string Name { get; set; }
        protected override Result<T> ExecuteCore()
        {
            var result = Query.QuerySet<T>("sp_Category_GetByName", this);
            return Success(result.FirstOrDefault());
        }
    }
}
