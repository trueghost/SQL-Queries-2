USE [CourseManagement]
GO

/****** Object:  Table [dbo].[SubCategory]    Script Date: 05-07-2023 15:30:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SubCategory](
	[SubCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryName] [varchar](200) NULL,
	[CategoryID] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedDatetime] [datetime2](7) NULL,
	[LastUpdatedUser] [int] NULL,
	[LastUpdatedDatetime] [datetime2](7) NULL,
	[Status] [tinyint] NULL,
	[Is_Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[SubCategory] ADD  CONSTRAINT [DF_SubCategory_CreatedDatetime]  DEFAULT (getdate()) FOR [CreatedDatetime]
GO

ALTER TABLE [dbo].[SubCategory] ADD  CONSTRAINT [DF_SubCategory_LastUpdatedDatetime]  DEFAULT (getdate()) FOR [LastUpdatedDatetime]
GO

ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO

ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_Category]
GO

