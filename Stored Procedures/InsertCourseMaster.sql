USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[InsertCourseMaster]    Script Date: 05-07-2023 15:32:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Ranjana K A
-- Create date: 03/12/2019
-- Description:	Used To Insert Course Master
-- =============================================
CREATE PROCEDURE [dbo].[InsertCourseMaster]

            @Title varchar(300)
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

	declare @CourseID int

	INSERT INTO [dbo].[CourseMaster]
           (
		    Title
           ,CategoryID
           ,SubcategoryID
           ,PartnerID
           ,Overview
           ,Benefits
           ,Metatitle
           ,Metakeywords
           ,Metadescription
           ,Uniquename
           ,CreatedUser
           ,Lastupdateduser
           ,Trending
		   )
     VALUES
           (
		    @Title 
           ,@CategoryID 
           ,@SubcategoryID 
           ,@PartnerID 
           ,@Overview 
           ,@Benefits 
           ,@Metatitle 
           ,@Metakeywords
           ,@Metadescription
           ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@Title,' ','-'),'#','-'),'***',''),'(','-'),')','-'),'*','-'),':','-'),'.','-'),'/','-'),',','-'),'=','-'),'@','-'),'%','-'),';','-'),'\','-'),'--','-'),'+','-'),'&','-'),'''','-'),'>','-'),'<','-'),'_','-'),'{','-'),'}','-'),'+','-'),'"','-'),'(','-'),')','-'),'*','-'),'?','-')
           ,@UserID 
           ,@UserID 
           ,@Trending 
		   )

		   set @CourseID = (select SCOPE_IDENTITY())

	select @CourseID as CourseID
   
END
GO

