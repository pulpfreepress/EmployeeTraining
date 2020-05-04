USE [EmployeeTraining]
GO


/******************************************************
   Stored procedure to populate the 
   Dropdown values for Course dropdowns
 *****************************************************/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure appSP_GetCourseLU

as

begin

SELECT
	CourseID,
	(Code + '-' + Title) AS CodeTitle
FROM
	tbl_Course_LU
ORDER BY 
	Code
end
GO

/***************************************************
   Stored procedure to populate Dropdown
   values for Email Type
****************************************************/

create procedure appSP_GetEmailTypeLU

as

begin

SELECT
	EmailTypeID, Description
FROM
	tbl_Email_Type_LU

end
GO

/***************************************************
   Stored procedure to populate Dropdown
   values for Phone Type
****************************************************/

create procedure appSP_GetPhoneTypeLU

as

begin

SELECT
	PhoneTypeID, Description
FROM
	tbl_Phone_Type_LU

end
GO


/******************************************************
   Stored procedure to populate the 
   Dropdown values for EmployeeDropDown
 *****************************************************/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure appSP_GetEmployees

as

begin

SELECT
	EmployeeID,
	(LastName + ', ' + FirstName + ' ' + MiddleName) AS EmployeeName
FROM
	tbl_Employee
ORDER BY 
	LastName
end
GO



/***************************************************
   Stored procedure to populate Dropdown
   values for StateDropDown
****************************************************/

create procedure appSP_GetStatesLU

as

begin

SELECT
	StateAbbreviation, StateName
FROM
	tbl_States_LU
ORDER BY 
	StateAbbreviation

end
GO
