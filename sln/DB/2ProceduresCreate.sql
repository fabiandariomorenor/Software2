USE [SistemaTecnicos]
GO
/****** Object:  StoredProcedure [dbo].[UserValidate]    Script Date: 03/25/2013 23:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UserGet] 
	@Documento int
AS
BEGIN
	SELECT * FROM USUARIO 
	WHERE Documento = @Documento
END

GO

CREATE PROCEDURE [dbo].[CreateUser] 
	@Documento int,
	@Nombre varchar(50),
	@Password varchar(50),
	@ID_Rol int,
	@ID_Localizacion int
AS
BEGIN
	INSERT INTO [SistemaTecnicos].[dbo].[USUARIO]
           ([Documento]
           ,[Nombre]
           ,[Password]
           ,[ID_Rol]
           ,[ID_Localizacion])
	VALUES
           (@Documento
           ,@Nombre
           ,@Password
           ,@ID_Rol
           ,@ID_Localizacion)
	SELECT Documento FROM USUARIO WHERE Documento = @Documento
END

GO

CREATE PROCEDURE [dbo].[UpdateUser] 
	@Documento int,
	@Nombre varchar(50),
	@Password varchar(50),
	@ID_Rol int,
	@ID_Localizacion int
AS
BEGIN
	UPDATE [SistemaTecnicos].[dbo].[USUARIO]
   SET [Nombre] = @Nombre
      ,[Password] = @Password
      ,[ID_Rol] = @ID_Rol
      ,[ID_Localizacion] = @ID_Localizacion
 WHERE Documento = @Documento
 SELECT Documento FROM USUARIO WHERE Documento = @Documento
END

GO

CREATE PROCEDURE [dbo].[AgentGet] 
	@Documento int
AS
BEGIN
	SELECT * FROM AGENTE
	WHERE Documento = @Documento
END

GO

CREATE PROCEDURE [dbo].[CreateAgent] 
	@Documento int,
	@Especializacion varchar(50),
	@ID_Coordinador int
AS
BEGIN
	INSERT INTO [SistemaTecnicos].[dbo].[AGENTE]
           ([Documento]
           ,[Especializacion]
           ,[ID_Coordinador])
     VALUES
           (@Documento
           ,@Especializacion
           ,@ID_Coordinador)
    SELECT Documento FROM AGENTE WHERE Documento = @Documento
END
GO

CREATE PROCEDURE [dbo].[UpdateAgent] 
	@Documento int,
	@Especializacion varchar(50),
	@ID_Coordinador int
AS
BEGIN
	UPDATE [SistemaTecnicos].[dbo].[AGENTE]
   SET [Especializacion] = Especializacion
      ,[ID_Coordinador] = ID_Coordinador
 WHERE Documento = @Documento
END
