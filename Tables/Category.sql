USE [CourseManagement]
GO

/****** Object:  Table [dbo].[Category]    Script Date: 05-07-2023 15:27:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](200) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedDatetime] [datetime2](7) NULL,
	[LastUpdatedUser] [int] NULL,
	[LastUpdatedDatetime] [datetime2](7) NULL,
	[Status] [tinyint] NULL,
	[Is_Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

