using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessObjectLayer.BO;
using InfrastructureLayer.VO;

namespace PresentationLayer
{
    class Program
    {
        static void Main(string[] args)
        {
            EmployeeBO employeeBO = new EmployeeBO();

            foreach(EmployeeVO vo in employeeBO.GetAllEmployees())
            {
                Console.WriteLine(vo);
            }

            Console.ReadLine();
        }
    }
}
