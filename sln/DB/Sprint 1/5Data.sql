USE [SistemaTecnicos]
GO
/****** Object:  StoredProcedure [dbo].[UserValidate]    Script Date: 03/25/2013 23:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

INSERT INTO [dbo].[LOCALIZATION]
           ([ID]
           ,[Name])
     VALUES
           (1
           ,'Bogota')
GO

INSERT INTO [dbo].[LOCALIZATION]
           ([ID]
           ,[Name])
     VALUES
           (2
           ,'Medellin')
GO

INSERT INTO [dbo].[ROL]
           ([ID]
           ,[Name])
     VALUES
           (1
           ,'Coordinador')
GO

INSERT INTO [dbo].[ROL]
           ([ID]
           ,[Name])
     VALUES
           (2
           ,'Agente')
GO


INSERT INTO [dbo].[ROL]
           ([ID]
           ,[Name])
     VALUES
           (3
           ,'Cliente')
GO
