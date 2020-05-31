/*********************************************************************
   This example relies on the SimpleConnection.exe.config file.
This example also assumes there exists two Windows Server instances:
one named Apollo and another named Vesta. 
   To get this example to work in your environment you will need
to edit the configuration file SQL connection string(s) to connect
to servers in your environment. 
*********************************************************************/
using System;
using System.Data;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;

public class SimpleConnection {
	public static void Main(){
		Console.WriteLine("----- Connect to EmployeeTraining Database on Apollo Server -----");
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
		
		Console.WriteLine("----- Connect to Master Database on Vesta Server -----");
		DatabaseProviderFactory factory2 = new DatabaseProviderFactory();
		Database database2 = factory2.Create("Vesta");
		Console.WriteLine("Database created!");
		DbCommand command2 = 
			database2.GetSqlStringCommand("select table_name from information_schema.tables");
		IDataReader reader2 = database2.ExecuteReader(command);
		while(reader2.Read()){
			Console.WriteLine(reader2.GetString(0));
		}
		if(reader2 != null) reader2.Close(); 
		
		
		
		
	} // end Main()
} // end class definition