/********************************************************
       Inserts test data into:
				tbl_UserRoles_LU
				tbl_Employee
*********************************************************/

USE [EmployeeTraining]
GO

INSERT INTO dbo.tbl_UserRoles_LU (RoleName)
VALUES ('Administrator');
INSERT INTO dbo.tbl_UserRoles_LU (RoleName)
VALUES ('User');


UPDATE dbo.tbl_Employee
SET Username = 'rwmiller',
    FK_UserRole = '1',
	LoginHash = '5CFF38C2DFD52D9AEC60ABD6DAA19847'
WHERE EmployeeID = 1;
GO

DECLARE @counter int
DECLARE @uname_string varchar(50)

SET @counter = 1

WHILE (@counter < 20)
begin

set @uname_string = 'test' + CAST(@counter as varchar(50))
UPDATE dbo.tbl_Employee
SET Username = @uname_string,
     FK_UserRole = '2'
WHERE EmployeeID = (@counter + 1);
SET @counter = @counter + 1
end
GO


UPDATE dbo.tbl_Employee
SET LoginHash = '4F6C319A947DD46FABE6FD97CAD464A1'
WHERE Username = 'test1';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = 'EF58D34ABE4D7D8BCF2222692BEF91DA'
WHERE Username = 'test2';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = 'FA877A38105173A2506DFC50E2D19FCD'
WHERE Username = 'test3';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = '70708BCC26AB5BB34DB193812E321A07'
WHERE Username = 'test4';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = '0ABFC892A72F2C58D4728CDDB5C9A44B'
WHERE Username = 'test5';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = '46B02D2F1300D58B6734DED1EED377B5'
WHERE Username = 'test6';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = '0AE1E36861418E6CDC9D937887A135C7'
WHERE Username = 'test7';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = 'C084963ACF822B8781294C89E0C6BA14'
WHERE Username = 'test8';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = 'D165A786E81DB86075D289673DDEC4C0'
WHERE Username = 'test9';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = 'A6E0687501E7584D2AE8B23EC5BCFBE6'
WHERE Username = 'test10';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = '520806320F223029DA22966F045C32AB'
WHERE Username = 'test11';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = 'F9FFF45CD3865DDE04862BE0D9E5D075'
WHERE Username = 'test12';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = 'B526B4B9864D8FDA0206116AE39822A8'
WHERE Username = 'test13';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = '7738A25CA0801E4977BFD6DC5AFCAE6D'
WHERE Username = 'test14';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = '0124B00374F3C527F84C51091ACDC77B'
WHERE Username = 'test15';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = '4ED961792A3D59FBC3589F121BA24F21'
WHERE Username = 'test16';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = '4AEC622B20E801DBA48B7F0C1FE88469'
WHERE Username = 'test17';
GO

UPDATE dbo.tbl_Employee
SET LoginHash = '926E8F10F55A97891DE7293D9F2234F5'
WHERE Username = 'test18';
GO











