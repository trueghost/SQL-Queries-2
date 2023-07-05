USE [CourseManagement]
GO

/****** Object:  Table [dbo].[TrainingSchedule]    Script Date: 05-07-2023 15:30:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TrainingSchedule](
	[TrainingID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NULL,
	[CountryID] [int] NULL,
	[Location] [varchar](100) NULL,
	[StartDate] [date] NULL,
	[Enddate] [date] NULL,
	[Duration] [varchar](100) NULL,
	[Amount] [money] NULL,
	[CreatedDatetime] [datetime2](7) NULL,
	[LastUpdateduser] [int] NULL,
	[LastUpdatedDatetime] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[TrainingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TrainingSchedule] ADD  CONSTRAINT [DF_TrainingSchedule_CreatedDatetime]  DEFAULT (getdate()) FOR [CreatedDatetime]
GO

ALTER TABLE [dbo].[TrainingSchedule] ADD  CONSTRAINT [DF_TrainingSchedule_LastUpdatedDatetime]  DEFAULT (getdate()) FOR [LastUpdatedDatetime]
GO

