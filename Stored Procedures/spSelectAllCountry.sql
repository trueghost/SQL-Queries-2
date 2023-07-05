USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[spSelectAllCountry]    Script Date: 05-07-2023 15:36:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		SHINTU BABU
-- Create date: <31-10-2020>
-- Description:	<Select All cOUNTRY>
-- =============================================
CREATE PROCEDURE [dbo].[spSelectAllCountry]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT [CountryID]
      ,[CountryName]
  FROM [COUNTRY] 
 
END
GO

