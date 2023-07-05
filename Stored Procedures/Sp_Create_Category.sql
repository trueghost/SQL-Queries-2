USE [CourseManagement]
GO

/****** Object:  StoredProcedure [dbo].[Sp_Create_Category]    Script Date: 05-07-2023 15:35:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Sp_Create_Category]
(@CatName varchar(20),
@CatDes varchar(50),
@Create_Date datetime,
@Updated_User int,
@Update_Date datetime,
@Status int,
@Active bit)
as
begin
INSERT INTO Category
           (
		    CategoryName
			,[Description]
           ,CreatedDatetime
           ,LastUpdatedUser
           ,LastUpdatedDatetime
           ,[Status]
		   ,Is_Active
           )
     VALUES
           (
		    @CatName ,
			@CatDes ,
			@Create_Date ,
			@Updated_User ,
			@Update_Date ,
			@Status,
			@Active)
			end
			
GO

