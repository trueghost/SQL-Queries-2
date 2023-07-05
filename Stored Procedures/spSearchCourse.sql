USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[spSearchCourse]    Script Date: 05-07-2023 15:48:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		SHINTU BABU
-- Create date: 03/11/2020
-- Description:	Search Course
-- =============================================
CREATE PROCEDURE [dbo].[spSearchCourse]

    @Title varchar(300)
   ,@CategoryID int
   ,@SubcategoryID int

AS
BEGIN

	SET NOCOUNT ON;

	   -- title,category,subcategory
    --list:-title,id,sub category id,subcategory name,category id,category name,upcoming session count,upcoming exam count

	SELECT  [CourseID]
      ,[Title]
      ,CM.[CategoryID]
      ,CM.[SubcategoryID]
	  ,CY.CategoryName 
	  ,SY.SubCategoryName
      ,COUNT(*)OVER() AS TotalCount
      --,[PartnerID]
      --,[Overview]
      --,[Benefits]
      --,[Metatitle]
      --,[Metakeywords]
      --,[Metadescription]
      --,[Uniquename]
     ,ISNULL(ShowOnline,0) as ShowOnline 
      ,ISNULL([Trending],0) as Trending
     FROM [dbo].[CourseMaster] CM with(nolock)
	 JOIN [dbo].[Category] CY with(nolock) ON CM.CategoryID = CY.CategoryID
	 JOIN [dbo].[SubCategory] SY with(nolock) ON CM.SubcategoryID = SY.SubCategoryID
	 WHERE (CM.CategoryID = @CategoryID or COALESCE(@CategoryID,'') = '')
	 AND (SY.SubCategoryID = @SubcategoryID  or COALESCE(@SubcategoryID,'') = '')
	 AND (CM.Title like  COALESCE('%'+@Title + '%',CM.Title))
	 ORDER BY CourseID DESC
    

    
END
GO

