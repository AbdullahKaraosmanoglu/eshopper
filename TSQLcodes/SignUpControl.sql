USE [DbEshopper]
GO
/****** Object:  StoredProcedure [dbo].[SpUsersControl]    Script Date: 7.05.2023 23:12:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[SpUsersControl]  
(  
   @Email nvarchar (50),  
   @Password nvarchar (50)
)  
as  
begin 
SET NOCOUNT ON;
   Insert into TblUsers (Email,Password) values(@Email,@Password) 
   select CAST(SCOPE_IDENTITY() AS int)
End 