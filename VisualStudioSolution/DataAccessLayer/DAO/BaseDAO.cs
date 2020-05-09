using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using InfrastructureLayer.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace DataAccessLayer.DAO
{
    public class BaseDAO : ApplicationBase
    {
		private static Database _database;

		public BaseDAO(Type declaringType) : base(declaringType)
		{
			LogInfo("BaseDAO Created!");
		}


		protected Database DataBase
		{
			get
			{
				if (_database == null)
				{
					try
					{
						DatabaseProviderFactory factory = new DatabaseProviderFactory();
						_database = factory.Create("EmployeeTrainingDatabase");
					}
					catch (ConfigurationException ce)
					{
						LogError(ce);
					}
					catch (Exception e)
					{
						LogError(e);
					}
				}
				return _database;
			}
		}

		protected void CloseReader(IDataReader reader)
		{
			if (reader != null)
			{
				try
				{
					reader.Close();
				}
				catch (Exception e)
				{
					LogError(e);
				}
			}
		}

	}
}
