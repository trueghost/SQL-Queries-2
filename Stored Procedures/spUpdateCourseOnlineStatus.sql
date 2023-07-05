USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[spUpdateCourseOnlineStatus]    Script Date: 05-07-2023 15:49:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		SHINTU BABU
-- Create date: 05/11/2020
-- Description:	Update Coursemaster Online Status
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateCourseOnlineStatus]
       @CourseID int
	  ,@ShowOnline tinyint
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE [dbo].[CourseMaster] SET ShowOnline = @ShowOnline WHERE CourseID = @CourseID
  
END
GO

