USE [EmployeeTraining]
GO
/* Insert test data into tbl_Employee */
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('Rick', 'Warren', 'Miller', '1/1/1970 12:00:00 AM', '12/1/1998 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('Coralie', 'Sylvia', 'Miller', '1/1/1975 12:00:00 AM', '08/21/2001 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('Steve', 'Jacob', 'Hester', '09/12/1986 12:00:00 AM', '07/07/2003 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('Nancy', 'Jo', 'Coats', '1/1/1961 12:00:00 AM', '12/1/1998 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('William', 'Brent', 'Darby', '11/12/1969 12:00:00 AM', '04/04/1986 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('John', 'Paul', 'Jones', '4/8/1969 12:00:00 AM', '04/04/1986 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('John', 'Paul', 'Jones', '4/8/1969 12:00:00 AM', '04/04/1986 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('John', 'Paul', 'Jones', '4/8/1969 12:00:00 AM', '04/04/1986 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('John', 'Paul', 'Jones', '4/8/1969 12:00:00 AM', '04/04/1986 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('John', 'Paul', 'Jones', '4/8/1969 12:00:00 AM', '04/04/1986 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('John', 'Paul', 'Jones', '4/8/1969 12:00:00 AM', '04/04/1986 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('John', 'Paul', 'Jones', '4/8/1969 12:00:00 AM', '04/04/1986 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('John', 'Paul', 'Jones', '4/8/1969 12:00:00 AM', '04/04/1986 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('John', 'Paul', 'Jones', '4/8/1969 12:00:00 AM', '04/04/1986 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('John', 'Paul', 'Jones', '4/8/1969 12:00:00 AM', '04/04/1986 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('John', 'Paul', 'Jones', '4/8/1969 12:00:00 AM', '04/04/1986 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('John', 'Paul', 'Jones', '4/8/1969 12:00:00 AM', '04/04/1986 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('John', 'Paul', 'Jones', '4/8/1969 12:00:00 AM', '04/04/1986 12:00:00 AM', 'true');
INSERT INTO dbo.tbl_Employee (FirstName, MiddleName, LastName, Birthday, HireDate, IsActive) 
       VALUES ('John', 'Paul', 'Jones', '4/8/1969 12:00:00 AM', '04/04/1986 12:00:00 AM', 'true');
	   
	   
	   

/* Insert test data into tbl_tbl_Course_LU */
INSERT INTO dbo.tbl_Course_LU (Code, Title, Description) 
       VALUES ('IST101', 'Introduction to Programming', 'Description test here...');
INSERT INTO dbo.tbl_Course_LU (Code, Title, Description) 
       VALUES ('IST102', 'Intermediate Programming', 'Description test here...');
INSERT INTO dbo.tbl_Course_LU (Code, Title, Description) 
       VALUES ('PMP101', 'Introduction to Program Management', 'Description test here...');
INSERT INTO dbo.tbl_Course_LU (Code, Title, Description) 
       VALUES ('PMP102', 'Intermediate Program Management', 'Description test here...');
INSERT INTO dbo.tbl_Course_LU (Code, Title, Description) 
       VALUES ('PMP103', 'Earned Value Management', 'Description test here...');

/* Insert test data into tbl_EmployeeCourse_XREF */
INSERT INTO dbo.tbl_EmployeeCourse_XREF (FK_EmployeeID, FK_CourseID, DateCompleted, Grade) 
       VALUES (1, 1, '1/1/2012 12:00:00 AM', '4.0');
INSERT INTO dbo.tbl_EmployeeCourse_XREF (FK_EmployeeID, FK_CourseID, DateCompleted, Grade) 
       VALUES (1, 2, '1/1/2012 12:00:00 AM', '4.0');
INSERT INTO dbo.tbl_EmployeeCourse_XREF (FK_EmployeeID, FK_CourseID, DateCompleted, Grade) 
       VALUES (2, 3, '1/1/2012 12:00:00 AM', '4.0');
INSERT INTO dbo.tbl_EmployeeCourse_XREF (FK_EmployeeID, FK_CourseID, DateCompleted, Grade) 
       VALUES (2, 4, '1/1/2012 12:00:00 AM', '4.0');
INSERT INTO dbo.tbl_EmployeeCourse_XREF (FK_EmployeeID, FK_CourseID, DateCompleted, Grade) 
       VALUES (3, 1, '1/1/2012 12:00:00 AM', '4.0');
