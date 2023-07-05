USE [CourseManagement]
GO

/****** Object:  Table [dbo].[CourseMaster]    Script Date: 05-07-2023 15:28:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CourseMaster](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](300) NULL,
	[CategoryID] [int] NULL,
	[SubcategoryID] [int] NULL,
	[PartnerID] [int] NULL,
	[Overview] [nvarchar](max) NULL,
	[Benefits] [nvarchar](max) NULL,
	[Metatitle] [varchar](300) NULL,
	[Metakeywords] [varchar](300) NULL,
	[Metadescription] [varchar](500) NULL,
	[Uniquename] [varchar](320) NULL,
	[Createddate] [date] NULL,
	[Createddatetime] [datetime2](7) NULL,
	[CreatedUser] [int] NULL,
	[Lastupdateddate] [date] NULL,
	[Lastupdateddatetime] [datetime2](7) NULL,
	[Lastupdateduser] [int] NULL,
	[Trending] [tinyint] NULL,
	[ShowOnline] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[CourseMaster] ADD  CONSTRAINT [DF_CourseMaster_Createddate]  DEFAULT (getdate()) FOR [Createddate]
GO

ALTER TABLE [dbo].[CourseMaster] ADD  CONSTRAINT [DF_CourseMaster_Createddatetime]  DEFAULT (getdate()) FOR [Createddatetime]
GO

ALTER TABLE [dbo].[CourseMaster] ADD  CONSTRAINT [DF_CourseMaster_Lastupdateddate]  DEFAULT (getdate()) FOR [Lastupdateddate]
GO

ALTER TABLE [dbo].[CourseMaster] ADD  CONSTRAINT [DF_CourseMaster_Lastupdateddatetime]  DEFAULT (getdate()) FOR [Lastupdateddatetime]
GO

ALTER TABLE [dbo].[CourseMaster] ADD  CONSTRAINT [DF_CourseMaster_Trending]  DEFAULT ((1)) FOR [Trending]
GO

ALTER TABLE [dbo].[CourseMaster] ADD  CONSTRAINT [DF_CourseMaster_ShowOnline]  DEFAULT ((2)) FOR [ShowOnline]
GO

ALTER TABLE [dbo].[CourseMaster]  WITH CHECK ADD  CONSTRAINT [FK_CourseMaster_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO

ALTER TABLE [dbo].[CourseMaster] CHECK CONSTRAINT [FK_CourseMaster_Category]
GO

ALTER TABLE [dbo].[CourseMaster]  WITH CHECK ADD  CONSTRAINT [FK_CourseMaster_ParnerMaster] FOREIGN KEY([PartnerID])
REFERENCES [dbo].[ParnerMaster] ([PartnerID])
GO

ALTER TABLE [dbo].[CourseMaster] CHECK CONSTRAINT [FK_CourseMaster_ParnerMaster]
GO

ALTER TABLE [dbo].[CourseMaster]  WITH CHECK ADD  CONSTRAINT [FK_CourseMaster_SubCategory] FOREIGN KEY([SubcategoryID])
REFERENCES [dbo].[SubCategory] ([SubCategoryID])
GO

ALTER TABLE [dbo].[CourseMaster] CHECK CONSTRAINT [FK_CourseMaster_SubCategory]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'2- Online,1- Offline' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CourseMaster', @level2type=N'COLUMN',@level2name=N'ShowOnline'
GO

