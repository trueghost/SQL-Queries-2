USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[DeleteExam]    Script Date: 05-07-2023 15:40:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Ranjana K A
-- Create date: 04/12/2019
-- Description:	Used To Delete Exam
-- =============================================
CREATE PROCEDURE [dbo].[DeleteExam]
	
  @ExamID int

AS
BEGIN
	
	SET NOCOUNT ON;

	  DELETE FROM [dbo].[ExamSchedule]
      WHERE ExamID = @ExamID

    
END
GO

