using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTruyenFull
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.OutputEncoding = Encoding.UTF8;
            using(var cmd = new DataRun())
            {
                cmd.url = @"http://webtruyen.com/";
                var result = cmd.Execute();
                if (result.IsSuccess)
                {
                    Console.WriteLine("Tải hoàn tất");
                }
                else
                {
                    Console.WriteLine(result.Message);
                }
                Console.ReadLine();
            }
        }
    }
}
