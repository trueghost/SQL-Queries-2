USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[AddCourseImages]    Script Date: 05-07-2023 15:41:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Ranjana K A
-- Create date: 20/12/2019
-- Description:	Used To Add Course Image
-- =============================================
CREATE PROCEDURE [dbo].[AddCourseImages]
	
	        @CourseID int
           ,@ImagePath varchar(300)
           ,@IsDefault tinyint
           ,@CreatedUser int

AS
BEGIN

	SET NOCOUNT ON;

	if @IsDefault = 2
	begin
	  
	  update [dbo].[CourseImages]
	  set [IsDefault] = 1
	  where courseid  = @CourseID

	end

	INSERT INTO [dbo].[CourseImages]
           (
		    [CourseID]
           ,[ImagePath]
           ,[IsDefault]
           ,[CreatedUser]
		   )
     VALUES
           (
		    @CourseID 
           ,@ImagePath 
           ,@IsDefault 
           ,@CreatedUser 

		   )


END
GO

