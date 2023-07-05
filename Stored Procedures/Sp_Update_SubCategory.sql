USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[Sp_Update_SubCategory]    Script Date: 05-07-2023 15:45:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Sp_Update_SubCategory]
(
@SubCatId int,
@Name varchar(20),
@CatId int,
@CreateUser int,
@UpdateDate datetime
)
as
Begin
UPDATE SubCategory set
SubCategoryName=@Name,
CategoryID=@CatId,
LastUpdatedUser=@CreateUser,
LastUpdatedDatetime=@UpdateDate
where SubCategoryID=@SubCatId
End
GO

