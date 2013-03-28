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

CREATE PROCEDURE [dbo].[UserCreate] 
	@Document int,
	@Name varchar(50),
	@Password varchar(50),
	@ID_Rol int,
	@ID_Localization int
AS
BEGIN
	INSERT INTO [dbo].[[USER]]
           ([Document]
           ,[Name]
           ,[Password]
           ,[ID_Rol]
           ,[ID_Localization])
	VALUES
           (@Document
           ,@Name
           ,@Password
           ,@ID_Rol
           ,@ID_Localization)
	SELECT Document FROM [USER] WHERE Document = @Document
END

GO

CREATE PROCEDURE [dbo].[UserUpdate] 
	@Document int,
	@Name varchar(50),
	@Password varchar(50),
	@ID_Rol int,
	@ID_Localization int
AS
BEGIN
	UPDATE [dbo].[[USER]]
   SET [Name] = @Name
      ,[Password] = @Password
      ,[ID_Rol] = @ID_Rol
      ,[ID_Localization] = @ID_Localization
 WHERE Document = @Document
 SELECT Document FROM [USER] WHERE Document = @Document
END

GO

CREATE PROCEDURE [dbo].[AgentGet] 
	@Document int
AS
BEGIN
	SELECT * FROM AGENT
	WHERE Document = @Document
END

GO

CREATE PROCEDURE [dbo].[AgentCreate] 
	@Document int,
	@Especializacion varchar(50),
	@ID_Manager int
AS
BEGIN
	INSERT INTO [SistemaTecnicos].[dbo].[AGENT]
           ([Document]
           ,[Especializacion]
           ,[ID_Manager])
     VALUES
           (@Document
           ,@Especializacion
           ,@ID_Manager)
    SELECT Document FROM AGENT WHERE Document = @Document
END
GO

CREATE PROCEDURE [dbo].[AgentUpdate] 
	@Document int,
	@Especializacion varchar(50),
	@ID_Manager int
AS
BEGIN
	UPDATE [dbo].[AGENT]
   SET [Especializacion] = Especializacion
      ,[ID_Manager] = ID_Manager
 WHERE Document = @Document
END
