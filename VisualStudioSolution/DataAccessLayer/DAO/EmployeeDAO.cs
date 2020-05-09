using System;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using InfrastructureLayer.VO;


namespace DataAccessLayer.DAO
{
    public class EmployeeDAO : BaseDAO
    {
        
        /**************************************************
		 * SQL String Constants
		 * ***********************************************/
		private const string SELECT_ALL_COLUMNS =
            "SELECT EmployeeID, FirstName, MiddleName, LastName, Birthday, HireDate, IsActive, Username ";


        private const string SELECT_ALL_EMPLOYEES =
            SELECT_ALL_COLUMNS +
            "FROM tbl_Employee ";

		/// <summary>
		/// Constructor
		/// </summary>
		public EmployeeDAO() : base(System.Reflection.MethodInfo.GetCurrentMethod().DeclaringType)
		{
			LogInfo("EmployeeDAO Created!");
		}


		/// <summary>
		/// GetAllEmployees() method - Returns a list of all employees
		/// </summary>
		/// <returns></returns>
        public List<EmployeeVO> GetAllEmployees()
        {
            DbCommand command = DataBase.GetSqlStringCommand(SELECT_ALL_EMPLOYEES);
            return this.GetEmployeeList(command);
        }


		private List<EmployeeVO> GetEmployeeList(DbCommand command)
		{
			IDataReader reader = null;
			List<EmployeeVO> employee_list = new List<EmployeeVO>();
			try
			{
				reader = DataBase.ExecuteReader(command);
				while (reader.Read())
				{
					EmployeeVO empVO = this.FillInEmployeeVO(reader);
					employee_list.Add(empVO);
				}
			}
			catch (Exception e)
			{
				Console.WriteLine(e);
			}
			finally
			{
				base.CloseReader(reader);
			}
			return employee_list;
		}


		private EmployeeVO FillInEmployeeVO(IDataReader reader)
		{
			EmployeeVO empVO = new EmployeeVO();
			empVO.EmployeeID = reader.GetInt32(0);
			empVO.FirstName = reader.GetString(1);
			empVO.MiddleName = reader.GetString(2);
			empVO.LastName = reader.GetString(3);
			empVO.Birthday = reader.GetDateTime(4);
			empVO.HireDate = reader.GetDateTime(5);
			empVO.IsActive = reader.GetBoolean(6);
			empVO.UserName = reader.GetString(7);

			return empVO;
		}

	}
}
