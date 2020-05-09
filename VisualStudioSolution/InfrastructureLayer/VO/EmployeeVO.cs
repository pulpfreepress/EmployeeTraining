using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InfrastructureLayer.VO
{
	[Serializable]
	public class EmployeeVO : PersonVO
	{

		// private instance fields
		private int _employeeID;
		private byte[] _picturebytes;
		private DateTime _hire_date;
		private Boolean _is_active;
		private string _username;

		//default constructor
		public EmployeeVO() { }

		public EmployeeVO(int employeeID, String firstName, String middleName,
											String lastName, Sex gender, DateTime birthday)
											: base(firstName, middleName, lastName, gender, birthday)
		{
			_employeeID = employeeID;
		}

		// public properties
		public int EmployeeID
		{
			get { return _employeeID; }
			set { _employeeID = value; }
		}

		public byte[] Picture
		{
			get { return _picturebytes; }
			set { _picturebytes = value; }
		}

		public DateTime HireDate
		{
			get { return _hire_date; }
			set { _hire_date = value; }
		}

		public Boolean IsActive
		{
			get { return _is_active; }
			set { _is_active = value; }
		}

		public String UserName
		{
			get { return _username; }
			set { _username = value; }
		}

		public override String ToString()
		{
			return (_employeeID + " " + base.ToString());
		}

	} // end class definition
} // end namespace
