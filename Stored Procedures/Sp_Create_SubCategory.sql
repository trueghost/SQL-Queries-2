USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[Sp_Create_SubCategory]    Script Date: 05-07-2023 15:44:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Sp_Create_SubCategory]
(
@Name varchar(20),
@CatId int,
@CreateDate datetime,
@CreateUser int,
@UpdateDate datetime,
@Active bit
)
as
Begin
insert into SubCategory
(
[SubCategoryName],
[CategoryID],
[CreatedDatetime],
[LastUpdatedUser],
[LastUpdatedDatetime],
[Is_Active])
values
(
@Name,
@CatId,
@CreateDate,
@CreateUser,
@UpdateDate,
@Active
)
End
GO

