USE [CourseManagement]
GO

/****** Object:  Table [dbo].[ParnerMaster]    Script Date: 05-07-2023 15:29:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ParnerMaster](
	[PartnerID] [int] IDENTITY(1,1) NOT NULL,
	[PartnerName] [varchar](100) NULL,
	[Logo] [varchar](200) NULL,
	[Status] [tinyint] NULL,
	[Is_Active] [bit] NULL,
 CONSTRAINT [PK_ParnerMaster] PRIMARY KEY CLUSTERED 
(
	[PartnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

