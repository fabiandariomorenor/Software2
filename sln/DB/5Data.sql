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

INSERT INTO [dbo].[USER]
           ([Document]
           ,[Name]
           ,[Password]
           ,[ID_Rol]
           ,[ID_Localization])
     VALUES
           (1
           ,'Carlos'
           ,'1'
           ,1
           ,1)
GO
INSERT INTO [SistemaTecnicos].[dbo].[MANAGER]
           ([Document])
     VALUES
           (1)
GO



INSERT INTO [dbo].[USER]
           ([Document]
           ,[Name]
           ,[Password]
           ,[ID_Rol]
           ,[ID_Localization])
     VALUES
           (2
           ,'Juan'
           ,'2'
           ,2
           ,2)
GO
INSERT INTO [SistemaTecnicos].[dbo].[AGENT]
           ([Document]
           ,[Specialization]
           ,[ID_Manager])
     VALUES
           (2
           ,'none'
           ,1)
GO


INSERT INTO [SistemaTecnicos].[dbo].[USER]
           ([Document]
           ,[Name]
           ,[Password]
           ,[ID_Rol]
           ,[ID_Localization])
     VALUES
           (3
           ,'Fabian'
           ,3
           ,2
           ,1)
GO
INSERT INTO [SistemaTecnicos].[dbo].[AGENT]
           ([Document]
           ,[Specialization]
           ,[ID_Manager])
     VALUES
           (3
           ,'none'
           ,1)
GO


INSERT INTO [SistemaTecnicos].[dbo].[USER]
           ([Document]
           ,[Name]
           ,[Password]
           ,[ID_Rol]
           ,[ID_Localization])
     VALUES
           (4
           ,'Pedro'
           ,4
           ,2
           ,1)
GO

INSERT INTO [SistemaTecnicos].[dbo].[AGENT]
           ([Document]
           ,[Specialization]
           ,[ID_Manager])
     VALUES
           (4
           ,'none'
           ,1)
GO


