USE [EmployeeTraining]
GO
/****** Object:  Table [dbo].[tbl_Employee]    Script Date: 05/04/2020 09:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Birthday] [datetime] NOT NULL,
	[Picture] [varbinary](max) NULL,
	[HireDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Course_LU]    Script Date: 10/13/2012 09:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Course_LU]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Course_LU](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](6) NOT NULL,
	[Title] [varchar](200) NOT NULL,
	[Description] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_tbl_Course_LU] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_EmployeeCourse_XREF]    Script Date: 10/13/2012 09:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_EmployeeCourse_XREF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_EmployeeCourse_XREF](
	[FK_EmployeeID] [int] NOT NULL,
	[FK_CourseID] [int] NOT NULL,
	[DateCompleted] [datetime] NOT NULL,
	[Grade] [float] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  ForeignKey [FK_tbl_EmployeeCourse_XREF_tbl_Course_LU]    Script Date: 10/13/2012 09:55:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_EmployeeCourse_XREF_tbl_Course_LU]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_EmployeeCourse_XREF]'))
ALTER TABLE [dbo].[tbl_EmployeeCourse_XREF]  WITH CHECK ADD  CONSTRAINT [FK_tbl_EmployeeCourse_XREF_tbl_Course_LU] FOREIGN KEY([FK_CourseID])
REFERENCES [dbo].[tbl_Course_LU] ([CourseID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_EmployeeCourse_XREF_tbl_Course_LU]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_EmployeeCourse_XREF]'))
ALTER TABLE [dbo].[tbl_EmployeeCourse_XREF] CHECK CONSTRAINT [FK_tbl_EmployeeCourse_XREF_tbl_Course_LU]
GO
/****** Object:  ForeignKey [FK_tbl_EmployeeCourse_XREF_tbl_Employee]    Script Date: 10/13/2012 09:55:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_EmployeeCourse_XREF_tbl_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_EmployeeCourse_XREF]'))
ALTER TABLE [dbo].[tbl_EmployeeCourse_XREF]  WITH CHECK ADD  CONSTRAINT [FK_tbl_EmployeeCourse_XREF_tbl_Employee] FOREIGN KEY([FK_EmployeeID])
REFERENCES [dbo].[tbl_Employee] ([EmployeeID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_EmployeeCourse_XREF_tbl_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_EmployeeCourse_XREF]'))
ALTER TABLE [dbo].[tbl_EmployeeCourse_XREF] CHECK CONSTRAINT [FK_tbl_EmployeeCourse_XREF_tbl_Employee]
GO
