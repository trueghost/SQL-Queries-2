USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[Sp_Update_Category]    Script Date: 05-07-2023 15:36:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Sp_Update_Category]
(@CatId int,
@CatName varchar(20),
@Desc varchar(500),
@Updated_User int,
@Update_Date datetime,
@Status int
)
as
begin

UPDATE Category set
CategoryName=@CatName,
Description=@Desc,
@Updated_User=@Updated_User,
@Update_Date=@Update_Date,
Status=@Status
Where CategoryID=@CatId

end
			
GO

