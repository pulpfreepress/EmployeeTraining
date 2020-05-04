USE [EmployeeTraining]
GO

/****** Object:  User [EmployeeTrainingUser]    Script Date: 05/04/2020 17:11:45 ******/
GO

CREATE USER [EmployeeTrainingUser] FOR LOGIN [EmployeeTraining] WITH DEFAULT_SCHEMA=[dbo]
GO
EXEC sp_addrolemember 'db_owner', 'EmployeeTrainingUser'

