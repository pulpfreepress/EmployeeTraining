rem set DB_LOGS environment variable for use in batch files
set DB_LOGS=logs
rem create logs directory
if not exist %DB_LOGS% mkdir %DB_LOGS%

rem create database directories for deployment
if not exist c:\database mkdir c:\database
if not exist c:\database\mssql mkdir c:\database\mssql
if not exist c:\database\mssql\EmployeeTraining mkdir c:\database\mssql\EmployeeTraining