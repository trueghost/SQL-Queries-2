USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[Sp_Update_Exam]    Script Date: 05-07-2023 15:39:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Sp_Update_Exam]
( @ExamID int
 ,@CourseID int
 ,@CountryID int
 ,@Location varchar(50)
 ,@Examdate date
 ,@Amount money
 ,@LastUpdateduser int
)
as
begin

UPDATE ExamSchedule set
 CourseID = @CourseID,
 CountryID = @CountryID,
 Location = @Location,
 Examdate = @Examdate,
 Amount = @Amount,
 LastUpdateduser = @LastUpdateduser,
 LastUpdatedDatetime = GETDATE()
Where ExamID=@ExamID

end
GO

