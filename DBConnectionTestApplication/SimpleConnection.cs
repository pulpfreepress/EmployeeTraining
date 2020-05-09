using System;
using System.Data;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;

public class SimpleConnection {
	public static void Main(){
		Console.WriteLine("Simple Connection!");
		DatabaseProviderFactory factory = new DatabaseProviderFactory();
		Database database = factory.Create("EmployeeTrainingDatabase");
		Console.WriteLine("Database created!");
		DbCommand command = 
			database.GetSqlStringCommand("select table_name from information_schema.tables");
		IDataReader reader = database.ExecuteReader(command);
		while(reader.Read()){
			Console.WriteLine(reader.GetString(0));
		}
		if(reader != null) reader.Close(); 
	} // end Main()
} // end class definition