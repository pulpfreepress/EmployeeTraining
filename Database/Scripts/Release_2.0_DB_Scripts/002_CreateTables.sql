USE [EmployeeTraining]
GO

/****** Object:  Table [dbo].[tbl_Email_Type_LU]    Script Date: 07/29/2013 11:43:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_Email_Type_LU](
	[EmailTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Email_Type_LU] PRIMARY KEY CLUSTERED 
(
	[EmailTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


/****** Object:  Table [dbo].[tbl_Email_Addresses]    Script Date: 07/29/2013 11:49:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_Email_Addresses](
	[FK_EmployeeID] [int] NOT NULL,
	[FK_EmailTypeID] [int] NOT NULL,
	[EmailAddress] [varchar](100) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tbl_Email_Addresses]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Email_Addresses_tbl_Email_Type_LU] FOREIGN KEY([FK_EmailTypeID])
REFERENCES [dbo].[tbl_Email_Type_LU] ([EmailTypeID])
GO

ALTER TABLE [dbo].[tbl_Email_Addresses] CHECK CONSTRAINT [FK_tbl_Email_Addresses_tbl_Email_Type_LU]
GO

ALTER TABLE [dbo].[tbl_Email_Addresses]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Email_Addresses_tbl_Employee] FOREIGN KEY([FK_EmployeeID])
REFERENCES [dbo].[tbl_Employee] ([EmployeeID])
GO

ALTER TABLE [dbo].[tbl_Email_Addresses] CHECK CONSTRAINT [FK_tbl_Email_Addresses_tbl_Employee]
GO



/****** Object:  Table [dbo].[tbl_Phone_Type_LU]    Script Date: 07/29/2013 11:45:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_Phone_Type_LU](
	[PhoneTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Phone_Type_LU] PRIMARY KEY CLUSTERED 
(
	[PhoneTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO




/****** Object:  Table [dbo].[tbl_Phone_Numbers]    Script Date: 07/29/2013 11:47:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_Phone_Numbers](
	[FK_EmployeeID] [int] NOT NULL,
	[FK_PhoneTypeID] [int] NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tbl_Phone_Numbers]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Phone_Numbers_tbl_Employee] FOREIGN KEY([FK_EmployeeID])
REFERENCES [dbo].[tbl_Employee] ([EmployeeID])
GO

ALTER TABLE [dbo].[tbl_Phone_Numbers] CHECK CONSTRAINT [FK_tbl_Phone_Numbers_tbl_Employee]
GO

ALTER TABLE [dbo].[tbl_Phone_Numbers]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Phone_Numbers_tbl_Phone_Type_LU] FOREIGN KEY([FK_PhoneTypeID])
REFERENCES [dbo].[tbl_Phone_Type_LU] ([PhoneTypeID])
GO

ALTER TABLE [dbo].[tbl_Phone_Numbers] CHECK CONSTRAINT [FK_tbl_Phone_Numbers_tbl_Phone_Type_LU]
GO






/****** Object:  Table [dbo].[tbl_Employee_Addresses]    Script Date: 07/29/2013 11:46:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_Employee_Addresses](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[Address1] [varchar](100) NOT NULL,
	[Address2] [varchar](100) NULL,
	[City] [varchar](100) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Zip] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Employee_Addresses] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO








/****** Object:  Table [dbo].[tbl_Employee_Address_XREF]    Script Date: 07/29/2013 11:50:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_Employee_Address_XREF](
	[FK_EmployeeID] [int] NOT NULL,
	[FK_EmployeeAddressID] [int] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbl_Employee_Address_XREF]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Employee_Address_XREF_tbl_Employee] FOREIGN KEY([FK_EmployeeID])
REFERENCES [dbo].[tbl_Employee] ([EmployeeID])
GO

ALTER TABLE [dbo].[tbl_Employee_Address_XREF] CHECK CONSTRAINT [FK_tbl_Employee_Address_XREF_tbl_Employee]
GO

ALTER TABLE [dbo].[tbl_Employee_Address_XREF]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Employee_Address_XREF_tbl_Employee_Addresses] FOREIGN KEY([FK_EmployeeAddressID])
REFERENCES [dbo].[tbl_Employee_Addresses] ([AddressID])
GO

ALTER TABLE [dbo].[tbl_Employee_Address_XREF] CHECK CONSTRAINT [FK_tbl_Employee_Address_XREF_tbl_Employee_Addresses]
GO


USE [EmployeeTraining]
GO


/****** Object:  Table [dbo].[tbl_States_LU]    Script Date: 09/01/2013 10:03:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_States_LU](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateAbbreviation] [varchar](2) NOT NULL,
	[StateName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_States_LU] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO





