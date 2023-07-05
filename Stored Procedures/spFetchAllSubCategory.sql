USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[spFetchAllSubCategory]    Script Date: 05-07-2023 15:44:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		SHINTU BABU
-- Create date: <31-10-2020>
-- Description:	<Select All SubCategory>
-- =============================================
CREATE PROCEDURE [dbo].[spFetchAllSubCategory]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT [SubCategoryID]
      ,[SubCategoryName]
      ,C.CategoryName
      ,SC.[CategoryID]
      ,SC.[Status]
	  ,SC.[LastUpdatedUser]
	  ,SC.[LastUpdatedDatetime]
	  ,SC.[Is_Active]
  FROM [SubCategory] SC
  inner join Category C on C.CategoryID=SC.CategoryID ORDER BY SC.SubCategoryID DESC
 
END
GO

