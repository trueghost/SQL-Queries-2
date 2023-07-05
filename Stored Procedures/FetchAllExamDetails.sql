USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[FetchAllExamDetails]    Script Date: 05-07-2023 15:38:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FetchAllExamDetails]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * from dbo.ExamSchedule
END
GO

