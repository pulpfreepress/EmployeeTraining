/****** Object:  Login [EmployeeTraining]    Script Date: 05/04/2020 08:52:28 ******/
CREATE LOGIN [EmployeeTraining] WITH PASSWORD=N'password', DEFAULT_DATABASE=[EmployeeTraining], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

EXEC sys.sp_addsrvrolemember @loginame = N'EmployeeTraining', @rolename = N'dbcreator'
GO





