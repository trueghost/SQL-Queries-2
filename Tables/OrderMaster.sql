USE [CourseManagement]
GO

/****** Object:  Table [dbo].[OrderMaster]    Script Date: 05-07-2023 15:29:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderMaster](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Ordercode] [varchar](20) NULL,
	[DateM] [date] NULL,
	[TotalAmount] [money] NULL,
	[Taxamount] [money] NULL,
	[CourseID] [int] NULL,
	[Mode] [tinyint] NULL,
	[EntityID] [int] NULL,
	[Name] [varchar](150) NULL,
	[Email] [varchar](200) NULL,
	[Phonenumber] [varchar](20) NULL,
	[Address] [varchar](500) NULL,
	[Remarks] [varchar](500) NULL,
	[Status] [varchar](20) NULL,
	[ResponseCode] [varchar](20) NULL,
	[ResponseMessage] [varchar](1000) NULL,
	[TransactionID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

