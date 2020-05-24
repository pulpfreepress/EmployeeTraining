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

        #region SQL Command Parameter Constants
        /***************************************************
		 * SQL Parameter Constants
		 * *************************************************/
        private const string EMPLOYEE_ID = "@employeeID";
		private const string FIRST_NAME = "@firstName";
		private const string MIDDLE_NAME = "@middleName";
		private const string LAST_NAME = "@lastName";
		private const string BIRTHDAY = "@birthday";
		private const string PICTURE = "@picture";
		private const string HIRE_DATE = "@hireDate";
		private const string IS_ACTIVE = "@isactive";
		private const string USER_NAME = "@username";
		private const string GENDER = "@gender";
		#endregion SQL Command Parameter Constants

		/**************************************************
		 * SQL String Constants
		 * ***********************************************/
		private const string SELECT_ALL_COLUMNS =
            "SELECT EmployeeID, FirstName, MiddleName, LastName, Birthday, HireDate, IsActive, Username, Gender ";


        private const string SELECT_ALL_EMPLOYEES =
            SELECT_ALL_COLUMNS +
            "FROM tbl_Employee ";

		private const string INSERT_EMPLOYEE =
			"INSERT INTO tbl_Employee " +
				"(FirstName, MiddleName, LastName, Birthday, HireDate, IsActive, Username, Gender) " +
			"VALUES (" + FIRST_NAME + ", " + MIDDLE_NAME + ", " + LAST_NAME + ", " + BIRTHDAY + ", " +
					HIRE_DATE + ", " + IS_ACTIVE + ", " + USER_NAME + ", " + GENDER + ") " +
			"SELECT scope_identity()";

		private const string SELECT_EMPLOYEE_BY_ID =
			SELECT_ALL_COLUMNS +
			"FROM tbl_Employee " +
			"WHERE EmployeeID = " + EMPLOYEE_ID;

		private const string DELETE_EMPLOYEE =
			"DELETE FROM tbl_Employee " +
			"WHERE EmployeeID = " + EMPLOYEE_ID;

		private const string UPDATE_EMPLOYEE = 
			"UPDATE tbl_Employee " +
			"SET FirstName = " + FIRST_NAME  + ", " +
			    "MiddleName = " + MIDDLE_NAME + ", " +
				"LastName = "  + LAST_NAME   + ", " +
				"Birthday = "  + BIRTHDAY    + ", " +
				"HireDate = "  + HIRE_DATE   + ", " +
				"IsActive = "  + IS_ACTIVE   + ", " +
			    "Username = "  + USER_NAME   + ", " +
			    "Gender   = "  + GENDER      + "  " +
			"WHERE EmployeeID = " + EMPLOYEE_ID;


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

		/// <summary>
		/// InsertEmployee method
		/// </summary>
		/// <param name="vo">Valid fully-populated EmployeeVO object</param>
		/// <returns></returns>
		public EmployeeVO InsertEmployee(EmployeeVO vo)
		{
			LogInfo("Entering InsertEmployee() method with employee: " + vo.ToString());
			try
			{
				DbCommand command = DataBase.GetSqlStringCommand(INSERT_EMPLOYEE);
				DataBase.AddInParameter(command, FIRST_NAME, DbType.String, vo.FirstName);
				DataBase.AddInParameter(command, MIDDLE_NAME, DbType.String, vo.MiddleName);
				DataBase.AddInParameter(command, LAST_NAME, DbType.String, vo.LastName);
				DataBase.AddInParameter(command, BIRTHDAY, DbType.DateTime, vo.Birthday);
				DataBase.AddInParameter(command, HIRE_DATE, DbType.DateTime, vo.HireDate);
				DataBase.AddInParameter(command, IS_ACTIVE, DbType.Boolean, vo.IsActive);
				DataBase.AddInParameter(command, USER_NAME, DbType.String, vo.UserName);
				switch (vo.Gender)
				{
					case EmployeeVO.Sex.MALE:
						DataBase.AddInParameter(command, GENDER, DbType.String, "M");
						break;
					case EmployeeVO.Sex.FEMALE:
						DataBase.AddInParameter(command, GENDER, DbType.String, "F");
						break;
				}

				vo.EmployeeID = Convert.ToInt32(DataBase.ExecuteScalar(command));
				return vo;
			}
			catch(Exception e)
			{
				LogError("Error inserting employee into database: " + e);
				throw e;
			}

		}

		/// <summary>
		/// UpdateEmployee method
		/// </summary>
		/// <param name="vo">Valid EmployeeVO</param>
		/// <returns></returns>
		public EmployeeVO UpdateEmployee(EmployeeVO vo)
		{
			LogDebug("Entering UpdateEmployee() method with employee: " + vo);
			int rows_affected = 0;

			try
			{
				DbCommand command = DataBase.GetSqlStringCommand(UPDATE_EMPLOYEE);
				DataBase.AddInParameter(command, FIRST_NAME, DbType.String, vo.FirstName);
				DataBase.AddInParameter(command, MIDDLE_NAME, DbType.String, vo.MiddleName);
				DataBase.AddInParameter(command, LAST_NAME, DbType.String, vo.LastName);
				DataBase.AddInParameter(command, BIRTHDAY, DbType.DateTime, vo.Birthday);
				DataBase.AddInParameter(command, HIRE_DATE, DbType.DateTime, vo.HireDate);
				DataBase.AddInParameter(command, IS_ACTIVE, DbType.Boolean, vo.IsActive);
				DataBase.AddInParameter(command, USER_NAME, DbType.String, vo.UserName);
				switch (vo.Gender)
				{
					case EmployeeVO.Sex.MALE:
						DataBase.AddInParameter(command, GENDER, DbType.String, "M");
						break;
					case EmployeeVO.Sex.FEMALE:
						DataBase.AddInParameter(command, GENDER, DbType.String, "F");
						break;
				}
				DataBase.AddInParameter(command, EMPLOYEE_ID, DbType.Int32, vo.EmployeeID);
				rows_affected = DataBase.ExecuteNonQuery(command);
			}
			catch(Exception e)
			{
				LogError("Problem updating employee. " + e);
				throw e;
			}

			if(rows_affected == 0)
			{
				LogError("Error updating employee: " + vo);
				throw new Exception("EmployeeID " + vo.EmployeeID + " does not exist in the database.");
			}

			return vo;
		}



		/// <summary>
		/// DeleteEmployee
		/// </summary>
		/// <param name="vo"> Valid EmployeeVO object. </param>

		public void DeleteEmployee(EmployeeVO vo)
		{
			LogDebug("Entering DeleteEmployee() method with employee: " + vo);
			int rows_affected = 0;

			try
			{
				DbCommand command = DataBase.GetSqlStringCommand(DELETE_EMPLOYEE);
				DataBase.AddInParameter(command, EMPLOYEE_ID, DbType.Int32, vo.EmployeeID);
				rows_affected = DataBase.ExecuteNonQuery(command);

			}catch(Exception e)
			{
				LogError("Problem Deleting Employee! " + e);
				throw e;
			}

			if(rows_affected == 0)
			{
				LogError("No rows deleted for employee: " + vo);
				throw new Exception("EmployeeID does not exist in the database!");
			}
		}


		/********* PRIVATE METHODS *********************************/

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
			string gender = reader.GetString(8);
			switch (gender)
			{
				case "M":
					empVO.Gender = EmployeeVO.Sex.MALE;
					break;
				case "F":
					empVO.Gender = EmployeeVO.Sex.FEMALE;
					break;
			}

			return empVO;
		}

	}
}
