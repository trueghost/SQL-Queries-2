USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[DeleteDocument]    Script Date: 05-07-2023 15:37:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Ranjana K A
-- Create date: 04/12/2019
-- Description:	Used To Delete Document
-- =============================================
CREATE PROCEDURE [dbo].[DeleteDocument]
	
     @DocumentID int

AS
BEGIN
	
	SET NOCOUNT ON;

	DELETE FROM [dbo].[CourseDocuments]
    WHERE DocumentID = @DocumentID

    
END
GO

