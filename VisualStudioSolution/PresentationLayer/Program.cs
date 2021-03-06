﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessObjectLayer.BO;
using InfrastructureLayer.VO;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;

namespace PresentationLayer
{
    class Program
    {
        static void Main(string[] args)
        {

            Image picture = null;
            MemoryStream ms = null;
            byte[] picture_bytes = null;

            try
            {
                picture = new Bitmap(@"C:\Projects\EmployeeTraining\Images\Rick.jpg");
                ms = new MemoryStream();
                picture.Save(ms, ImageFormat.Jpeg);
                picture_bytes = ms.ToArray();

            }catch(Exception e)
            {
                throw e;
            }

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
            employee.UserName = "lrichter2";
            employee.Picture = picture_bytes;

            try
            {
                employee = employeeBO.InsertEmployee(employee);
            }catch(Exception e)
            {
                Console.WriteLine("Problem inserting employee: " + e);
            }

            Console.WriteLine("\n-------------------------------------------------\n");

            foreach (EmployeeVO vo in employeeBO.GetAllEmployees())
            {
                Console.WriteLine(vo);
            }

            Console.Write("Hit any key to continue: ");
            Console.ReadLine();

            Console.WriteLine("\n---------- Delete Employee with ID: " + employee.EmployeeID + "-------------------------------------\n");


            try
            {
                employeeBO.DeleteEmployee(employee);
            }catch(Exception e)
            {
                Console.WriteLine(e);
            }

            Console.WriteLine("\n-------------------------------------------------\n");

            foreach (EmployeeVO vo in employeeBO.GetAllEmployees())
            {
                Console.WriteLine(vo);
            }

            List<EmployeeVO> employee_list = employeeBO.GetAllEmployees();
            employee_list[1].Gender = EmployeeVO.Sex.FEMALE;
            employee_list[1].Picture = picture_bytes;
            employeeBO.UpdateEmployee(employee_list[1]);


            employee_list[3].Gender = EmployeeVO.Sex.FEMALE;
            employee_list[3].Picture = picture_bytes;
            employeeBO.UpdateEmployee(employee_list[3]);


            Console.WriteLine("\n-------------------------------------------------\n");

            foreach (EmployeeVO vo in employeeBO.GetAllEmployees())
            {
                Console.WriteLine(vo);
                if(vo.Picture != null)
                {
                    Console.WriteLine(Encoding.Default.GetString(vo.Picture));
                }
            }

            Console.WriteLine("\n----- DONE - Enter Return To Exit -------------------\n");

            Console.ReadLine();
        }
    }
}
