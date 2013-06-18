CREATE PROCEDURE [dbo].[UserInsert] 
	@Document decimal(12,0),
	@Name varchar(50),
	@Password varchar(50),
	@ID_Rol int,
	@ID_Localization int,
	@Phone decimal(12,0)
AS
BEGIN
	INSERT INTO [dbo].[User]
           ([Document]
           ,[Name]
           ,[Password]
           ,[ID_Rol]
           ,[ID_Localization]
		   ,[Phone])
	VALUES
           (@Document
           ,@Name
           ,@Password
           ,@ID_Rol
           ,@ID_Localization
		   ,@Phone)
	SELECT Document FROM [USER] WHERE Document = @Document
END

GO


USE [SistemaTecnicos]
GO
/****** Object:  StoredProcedure [dbo].[UserValidate]    Script Date: 03/25/2013 23:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UserGet] 
	@Document int
AS
BEGIN
	SELECT * FROM [USER]
	WHERE Document = @Document
END

GO



CREATE PROCEDURE [dbo].[UserUpdate] 
	@Document decimal(12,0),
	@Name varchar(50),
	@Password varchar(50),
	@ID_Rol int,
	@ID_Localization int,
	@Phone decimal(12,0)
AS
BEGIN
	UPDATE [dbo].[USER]
   SET [Name] = @Name
      ,[Password] = @Password
      ,[ID_Rol] = @ID_Rol
      ,[ID_Localization] = @ID_Localization
	  ,[Phone] = @Phone
 WHERE Document = @Document
 SELECT Document FROM [USER] WHERE Document = @Document
END

GO



CREATE PROCEDURE [dbo].[UserList] 
@Name varchar(50)
AS
BEGIN
	select * 
	from [User]
	where (Name + convert(varchar,[USER].Document)) like '%'+@Name +'%'
END
go


CREATE PROCEDURE [dbo].[UserValidate] 
        @Document int,
        @Password varchar(50)
AS
BEGIN
	SELECT *
   FROM [dbo].[User]
   where Document=@Document and [Password]=@Password
END
go



CREATE PROCEDURE [dbo].[UserDelete] 
@Document int
AS
BEGIN
	DELETE FROM [dbo].[USER]
      WHERE Document=@Document
	  
	  Select count(*)
	  from [USER]
	  WHERE Document=@Document
END
GO

