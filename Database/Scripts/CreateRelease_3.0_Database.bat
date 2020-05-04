@echo off
echo.

rem Call the CreateRelease_2.0_Database.bat file
echo Calling CreateRelease_2.0_Database.bat file
call CreateRelease_2.0_Database.bat
echo Returned from creating database version 2.0
echo.

rem Now call the version 3.0 database scripts
echo Running version 3.0 database scripts now...
echo Creating user roles...
sqlcmd -i "Release_3.0_DB_Scripts\001_Create_tbl_UserRoles_LU.sql" -b -o %DB_LOGS%\R3_001_Creat_tbl_UserRoles_LU_Output.txt
echo Alter tbl_Employee...
sqlcmd -i "Release_3.0_DB_Scripts\002_Alter_tbl_Employee.sql" -b -o %DB_LOGS%\R3_002_Alter_tbl_Employee_Output.txt
echo Create stored procedures...
sqlcmd -i "Release_3.0_DB_Scripts\003_CreateStoredProcedures.sql" -b -o %DB_LOGS%\R3_003_CreateStoredProcedures_Output.txt
echo Inserting release 3 test data...
sqlcmd -i "Release_3.0_DB_Scripts\004_InsertTestData.sql" -b -o %DB_LOGS%\R3_004_InsertTestData_Output.txt
echo Alter tbl_Employee...
sqlcmd -i "Release_3.0_DB_Scripts\005_Alter_tbl_Employee_AddUniqueUsernameConstraint.sql" -b -o %DB_LOGS%\R3_005_Alter_tbl_Employee_AddUniqueUsernameConstraint_Output.txt


echo Returned from creating database version 3.0