@echo off
echo.

rem Call the CreateRelease_1.0_Database.bat file first
echo Calling CreateRelease_1.0_Database.bat file
call CreateRelease_1.0_Database.bat
echo Returned from creating database version 1.0
echo.

rem Now call the version 2.0 database scripts
echo Running version 2.0 database scripts now...
echo Creating stored procedures...
sqlcmd -i "Release_2.0_DB_Scripts\001_CreateStoredProcedures.sql" -b -o %DB_LOGS%\R2_001_CreateStoredProceduresOutput.txt
echo Creating release 2.0 tables...
sqlcmd -i "Release_2.0_DB_Scripts\002_CreateTables.sql" -b -o %DB_LOGS%\R2_002_CreateTables.txt
echo Inserting release 2.0 test data...
sqlcmd -i "Release_2.0_DB_Scripts\003_InsertTestData.sql" -b -o %DB_LOGS%\R2_003_InsertTestData.txt

echo Returned from creating database version 2.0