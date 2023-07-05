USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[InsertDocument]    Script Date: 05-07-2023 15:37:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Ranjana K A
-- Create date: 04/12/2019
-- Description:	Used insert document
-- =============================================
CREATE PROCEDURE [dbo].[InsertDocument]
	
	 @CourseID int
	,@Path varchar(200)
	,@UserID int

AS
BEGIN
	
	SET NOCOUNT ON;

	declare @DocumentID int

    INSERT INTO [dbo].[CourseDocuments]
           (
		    CourseID
           ,Path
           ,CreatedUser
		   )
     VALUES
           (
		    @CourseID 
           ,@Path 
           ,@UserID
		   )

	set @DocumentID = (select SCOPE_IDENTITY())

	select @DocumentID as DocumentID

END
GO

