USE [CourseManagement]
GO

/****** Object:  Table [dbo].[MultiSubCategory]    Script Date: 05-07-2023 15:29:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MultiSubCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[SubCategoryID] [int] NULL,
	[CreatedDatetime] [datetime2](7) NULL,
	[LastUpdatedUser] [int] NULL,
	[LastUpdatedDatetime] [datetime2](7) NULL,
	[Status] [tinyint] NULL,
 CONSTRAINT [PK_MultiSubCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

