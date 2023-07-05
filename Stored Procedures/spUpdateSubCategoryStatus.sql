USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[spUpdateSubCategoryStatus]    Script Date: 05-07-2023 15:46:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		SHINTU BABU
-- Create date: 05/11/2020
-- Description:	Update Sub CategoryStatus
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateSubCategoryStatus]
       @SubCategoryID int
	  ,@Status tinyint
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE [dbo].[SubCategory] SET [Status] = @Status WHERE SubCategoryID = @SubCategoryID
  
END
GO

