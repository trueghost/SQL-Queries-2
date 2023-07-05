USE [CourseManagement]
GO

/****** Object:  Table [dbo].[CourseDocuments]    Script Date: 05-07-2023 15:28:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CourseDocuments](
	[DocumentID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NULL,
	[Title] [varchar](200) NULL,
	[Path] [varchar](200) NULL,
	[CreatedDatetime] [datetime2](7) NULL,
	[CreatedUser] [int] NULL,
 CONSTRAINT [PK__CourseDo__297521A72BE18928] PRIMARY KEY CLUSTERED 
(
	[DocumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CourseDocuments] ADD  CONSTRAINT [DF_CourseDocuments_CreatedDatetime]  DEFAULT (getdate()) FOR [CreatedDatetime]
GO

