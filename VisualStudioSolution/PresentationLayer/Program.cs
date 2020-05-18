﻿using System;
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

           
            Console.WriteLine("\n------- Insert New Employee ------------------------\n");

            EmployeeVO employee = new EmployeeVO();
            employee.FirstName = "Laura";
            employee.MiddleName = "Jean";
            employee.LastName = "Richter";
            employee.Birthday = new DateTime(1965, 06, 05);
            employee.HireDate = new DateTime(2020, 05, 17);
            employee.IsActive = true;
            employee.Gender = PersonVO.Sex.FEMALE;
            employee.UserName = "lrichter1";

            try
            {
                employeeBO.InsertEmployee(employee);
            }catch(Exception e)
            {
                Console.WriteLine("Problem inserting employee: " + e);
            }

            Console.WriteLine("\n-------------------------------------------------\n");

            foreach (EmployeeVO vo in employeeBO.GetAllEmployees())
            {
                Console.WriteLine(vo);
            }

            

            Console.ReadLine();
        }
    }
}
