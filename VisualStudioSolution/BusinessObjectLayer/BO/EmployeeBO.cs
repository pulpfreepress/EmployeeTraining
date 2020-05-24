using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccessLayer.DAO;
using InfrastructureLayer.VO;

namespace BusinessObjectLayer.BO
{
    public class EmployeeBO : BaseBO
    {
        public EmployeeBO() : base(System.Reflection.MethodInfo.GetCurrentMethod().DeclaringType)
        {
            LogInfo("EmployeeBO object created!");
        }

        public List<EmployeeVO> GetAllEmployees()
        {
            EmployeeDAO dao = new EmployeeDAO();
            return dao.GetAllEmployees();
        }


        public EmployeeVO InsertEmployee(EmployeeVO vo)
        {
            try
            {
                EmployeeDAO dao = new EmployeeDAO();
                vo = dao.InsertEmployee(vo);
            }
            catch (Exception e)
            {
                LogError(e);
                throw e;
            }

            return vo;
        }


        public EmployeeVO InsertEmployee(string first_name,
                                         string middle_name,
                                         string last_name,
                                         DateTime birthday,
                                         DateTime hiredate,
                                         Boolean is_active,
                                         string username,
                                         EmployeeVO.Sex gender,
                                         byte[] picture)
        {
            EmployeeVO vo = new EmployeeVO();
            vo.FirstName = first_name;
            vo.MiddleName = middle_name;
            vo.LastName = last_name;
            vo.Birthday = birthday;
            vo.HireDate = hiredate;
            vo.UserName = username;
            vo.IsActive = is_active;
            vo.Gender = gender;
            vo.Picture = picture;

            try
            {
                EmployeeDAO dao = new EmployeeDAO();
                vo = dao.InsertEmployee(vo);
            }
            catch (Exception e)
            {
                LogError(e);
            }
            return vo;
        }


        /// <summary>
        /// DeleteEmployee method
        /// </summary>
        /// <param name="vo">Valid EmployeeVO object</param>
        /// <returns></returns>
        public void DeleteEmployee(EmployeeVO vo)
        {
            LogDebug("Entering DeleteEmployee() method.");
            try
            {
                EmployeeDAO dao = new EmployeeDAO();
                dao.DeleteEmployee(vo);
            } 
            catch (Exception e)
            {
                LogError(e);
                throw e;
            }
        }

        /// <summary>
        /// UpdateEmployee method
        /// </summary>
        /// <param name="vo">Valid EmployeeVO object</param>
        /// <returns></returns>
        public EmployeeVO UpdateEmployee(EmployeeVO vo)
        {
            LogDebug("Entering UpdateEmployee() method.");

            try
            {
                EmployeeDAO dao = new EmployeeDAO();
                return dao.UpdateEmployee(vo);


            }
            catch(Exception e)
            {
                LogError(e);
                throw e;
            }
        }




    } // end class definition
} // end namespace
