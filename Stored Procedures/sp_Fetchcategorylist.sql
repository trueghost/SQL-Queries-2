USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[sp_Fetchcategorylist]    Script Date: 05-07-2023 15:35:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Fetchcategorylist]
AS
BEGIN

Select CategoryID,CategoryName,Description,CreatedDatetime,LastUpdatedUser,LastUpdatedDatetime,Status 
from [dbo].[Category] 


END
GO

