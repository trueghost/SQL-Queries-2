USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[UpdateCourseMaster]    Script Date: 05-07-2023 15:33:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Ranjana K A
-- Create date: 04/12/2019
-- Description:	update course master
-- =============================================
CREATE PROCEDURE [dbo].[UpdateCourseMaster]
  
       @CourseID int
	  ,@Title varchar(300)
	  ,@CategoryID int
	  ,@SubcategoryID int
	  ,@PartnerID int
	  ,@Overview nvarchar(max)
	  ,@Benefits nvarchar(max)
	  ,@Metatitle varchar(300)
	  ,@Metakeywords varchar(300)
	  ,@Metadescription varchar(500)
	  ,@UserID int
	  ,@Trending tinyint
    
	
AS
BEGIN
	

	SET NOCOUNT ON;

	UPDATE [dbo].[CourseMaster]
   SET [Title] = @Title 
      ,[CategoryID] = @CategoryID 
      ,[SubcategoryID] = @SubcategoryID 
      ,[PartnerID] = @PartnerID 
      ,[Overview] = @Overview
      ,[Benefits] = @Benefits 
      ,[Metatitle] = @Metatitle
      ,[Metakeywords] = @Metakeywords
      ,[Metadescription] = @Metadescription
      ,[Uniquename] = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@Title,' ','-'),'#','-'),'***',''),'(','-'),')','-'),'*','-'),':','-'),'.','-'),'/','-'),',','-'),'=','-'),'@','-'),'%','-'),';','-'),'\','-'),'--','-'),'+','-'),'&','-'),'''','-'),'>','-'),'<','-'),'_','-'),'{','-'),'}','-'),'+','-'),'"','-'),'(','-'),')','-'),'*','-'),'?','-')
      ,[Lastupdateduser] = @UserID 
      --,[Trending] = @Trending 
      WHERE CourseID = @CourseID

   
END
GO

