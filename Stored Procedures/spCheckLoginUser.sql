USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[spCheckLoginUser]    Script Date: 05-07-2023 15:47:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		SHINTU BABU
-- Create date: <31-10-2020>
-- Description:	<Check Login user is valid>
-- =============================================
CREATE PROCEDURE [dbo].[spCheckLoginUser]
      @Email varchar(200)
	 ,@Password varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	

SELECT [UserID]
      ,[Name]
       FROM [Users] WHERE  Email=@Email and Password=@Password
END
GO

