USE [EmployeeTraining]
GO


/******************************************************
   Stored procedure to populate the 
   Dropdown values for UserRoles dropdown
 *****************************************************/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure appSP_GetUserRolesLU

as

begin

SELECT
	UserRoleID,
	RoleName
FROM
	tbl_UserRoles_LU
ORDER BY 
    RoleName
end
GO
