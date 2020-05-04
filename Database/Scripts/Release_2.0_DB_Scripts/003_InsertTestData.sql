/********************************************************
       Inserts test data into:
				tbl_Phone_Type_LU,
				tbl_Email_Type_LU, 
				tbl_Phone_Numbers, 
				tbl_Email_Addresses, 
				tbl_Employee_Addresses, 
				tbl_Employee_Address_XREF 
*********************************************************/

USE [EmployeeTraining]
GO

INSERT INTO dbo.tbl_Phone_Type_LU (Description)
VALUES ('Home');
INSERT INTO dbo.tbl_Phone_Type_LU (Description)
VALUES ('Office');
INSERT INTO dbo.tbl_Phone_Type_LU (Description)
VALUES ('Cell');

INSERT INTO dbo.tbl_Phone_Numbers (FK_EmployeeID, FK_PhoneTypeID, PhoneNumber)
VALUES (1, 1, '(703) 207-0532');
INSERT INTO dbo.tbl_Phone_Numbers (FK_EmployeeID, FK_PhoneTypeID, PhoneNumber)
VALUES (1, 3, '(703) 608-0975');
INSERT INTO dbo.tbl_Phone_Numbers (FK_EmployeeID, FK_PhoneTypeID, PhoneNumber)
VALUES (2, 1, '(703) 838-4392');
INSERT INTO dbo.tbl_Phone_Numbers (FK_EmployeeID, FK_PhoneTypeID, PhoneNumber)
VALUES (2, 2, '(703) 571-9878');


INSERT INTO dbo.tbl_Email_Type_LU (Description)
VALUES ('Personal');
INSERT INTO dbo.tbl_Email_Type_LU (Description)
VALUES ('Office');

INSERT INTO dbo.tbl_Email_Addresses (FK_EmployeeID, FK_EmailTypeID, EmailAddress)
VALUES (1, 1, 'rick@warrenworks.com');
INSERT INTO dbo.tbl_Email_Addresses (FK_EmployeeID, FK_EmailTypeID, EmailAddress)
VALUES (1, 2, 'miller@saic.com');
INSERT INTO dbo.tbl_Email_Addresses (FK_EmployeeID, FK_EmailTypeID, EmailAddress)
VALUES (2, 1, 'coralie@warrenworks.com');
INSERT INTO dbo.tbl_Email_Addresses (FK_EmployeeID, FK_EmailTypeID, EmailAddress)
VALUES (3, 1, 'steve@nowhere.com');


INSERT INTO dbo.tbl_Employee_Addresses (Address1, City, State, Zip)
VALUES ('1432 Fox Chase Run', 'Falls Church', 'VA', '22143');
INSERT INTO dbo.tbl_Employee_Addresses (Address1, City, State, Zip)
VALUES ('12 Hambone Ln', 'Alexandria', 'VA', '22203');
INSERT INTO dbo.tbl_Employee_Addresses (Address1, City, State, Zip)
VALUES ('342 Annandale Rd', 'Falls Church', 'VA', '22202');
INSERT INTO dbo.tbl_Employee_Addresses (Address1, City, State, Zip)
VALUES ('7453 Brad Street', 'Falls Church', 'VA', '22042');

INSERT INTO dbo.tbl_Employee_Address_XREF (FK_EmployeeID, FK_EmployeeAddressID)
VALUES (1, 1);
INSERT INTO dbo.tbl_Employee_Address_XREF (FK_EmployeeID, FK_EmployeeAddressID)
VALUES (2, 1);
INSERT INTO dbo.tbl_Employee_Address_XREF (FK_EmployeeID, FK_EmployeeAddressID)
VALUES (3, 2);
INSERT INTO dbo.tbl_Employee_Address_XREF (FK_EmployeeID, FK_EmployeeAddressID)
VALUES (4, 3);


INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('AL', 'Alabama');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('AK', 'Alaska');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('AZ', 'Arizona');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('AR', 'Arkansas');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('CA', 'California');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('CO', 'Colorado');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('CT', 'Connecticut');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('DE', 'Delaware');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('FL', 'Florida');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('GA', 'Georgia');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('HI', 'Hawaii');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('ID', 'Idaho');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('IL', 'Illinois');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('IN', 'Indiana');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('IA', 'Iowa');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('KS', 'Kansas');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('KY', 'Kentucky');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('LA', 'Louisiana');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('ME', 'Maine');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('MD', 'Maryland');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('MA', 'Massachusetts');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('MI', 'Michigan');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('MN', 'Minnesota');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('MS', 'Mississippi');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('MO', 'Missouri');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('MT', 'Montana');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('NE', 'Nebraska');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('NV', 'Nevada');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('NH', 'New Hampshire');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('NJ', 'New Jersey');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('NM', 'New Mexico');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('NY', 'New York');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('NC', 'North Carolina');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('ND', 'North Dakota');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('OH', 'Ohio');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('OK', 'Oklahoma');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('OR', 'Oregon');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('PA', 'Pennsylvania');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('RI', 'Rhode Island');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('SC', 'South Carolina');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('SD', 'South Dakota');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('TN', 'Tennessee');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('TX', 'Texas');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('UT', 'Utah');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('VT', 'Vermont');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('VA', 'Virginia');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('WA', 'Washington');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('WV', 'West Virginia');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('WI', 'Wisconsin');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('WY', 'Wyoming');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('AS', 'American Samoa');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('DC', 'District of Columbia');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('GU', 'Guam');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('MP', 'Northern Mariana Islands');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('PR', 'Puerto Rico');
INSERT INTO dbo.tbl_States_LU (StateAbbreviation, StateName)
VALUES ('VI', 'Virgin Islands');
GO


























