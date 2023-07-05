USE [CourseManagement]
GO

/****** Object:  Table [dbo].[CourseImages]    Script Date: 05-07-2023 15:28:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CourseImages](
	[CourseImageId] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[Title] [varchar](200) NULL,
	[ImagePath] [varchar](300) NULL,
	[IsDefault] [tinyint] NULL,
	[CreatedUser] [int] NULL,
	[CreatedDateTime] [datetime2](7) NULL,
 CONSTRAINT [PK__CourseIm__349B6FE4276D725A] PRIMARY KEY CLUSTERED 
(
	[CourseImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CourseImages] ADD  CONSTRAINT [DF__CourseIma__Creat__4E88ABD4]  DEFAULT (getdate()) FOR [CreatedDateTime]
GO

