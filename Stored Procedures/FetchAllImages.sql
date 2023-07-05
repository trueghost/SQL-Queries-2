USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[FetchAllImages]    Script Date: 05-07-2023 15:40:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FetchAllImages]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * from dbo.CourseImages
END
GO

