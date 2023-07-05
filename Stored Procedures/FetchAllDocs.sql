USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[FetchAllDocs]    Script Date: 05-07-2023 15:37:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FetchAllDocs] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * from dbo.CourseDocuments
END
GO

