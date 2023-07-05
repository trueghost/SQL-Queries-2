USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[DeleteCourseImages]    Script Date: 05-07-2023 15:41:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Ranjana K A
-- Create date: 20/12/2019
-- Description:	Used To Delete Course Images
-- =============================================
CREATE PROCEDURE [dbo].[DeleteCourseImages]
	
	@CourseImageId int

AS
BEGIN

	SET NOCOUNT ON;

   delete from [dbo].[CourseImages]
   where CourseImageId = @CourseImageId

END
GO

