USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[InsertExam]    Script Date: 05-07-2023 15:38:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Ranjana K A
-- Create date: 03/12/2019
-- Description:	Used To Insert Exam
-- =============================================
CREATE PROCEDURE [dbo].[InsertExam]
	
	        @CourseID int
           ,@CountryID int
           ,@Location varchar(100)
           ,@Examdate date
           ,@Amount money
           ,@UserID int

AS
BEGIN
	
	SET NOCOUNT ON;

	declare @ExamID int

   INSERT INTO [dbo].[ExamSchedule]
           (
		    [CourseID]
           ,[CountryID]
           ,[Location]
           ,[Examdate]
           ,[Amount]
           ,[LastUpdateduser]
           )
     VALUES
           (
		    @CourseID 
           ,@CountryID 
           ,@Location 
           ,@Examdate
           ,@Amount
           ,@UserID
           )
     set @ExamID = (select SCOPE_IDENTITY())

	 select @ExamID as ExamID

END
GO

