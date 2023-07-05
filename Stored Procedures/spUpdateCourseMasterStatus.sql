USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[spUpdateCourseMasterStatus]    Script Date: 05-07-2023 15:33:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		SHINTU BABU
-- Create date: 05/11/2020
-- Description:	Update Coursemaster Status
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateCourseMasterStatus]
       @CourseID int
	  ,@Trending tinyint
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE [dbo].[CourseMaster] SET Trending = @Trending WHERE CourseID = @CourseID
  
END
GO

