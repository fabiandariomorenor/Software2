USE [SistemaTecnicos]
GO
/****** Object:  StoredProcedure [dbo].[UserValidate]    Script Date: 03/25/2013 23:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RolList] 

AS
BEGIN
	SELECT *
   FROM [dbo].[ROL]
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

CREATE PROCEDURE [dbo].[AgentList] 
@Name varchar(50)
AS
BEGIN
	select * 
	from AGENT 
	join [user] 
	on [USER].document=AGENT.Document
	where (Name + convert(varchar,AGENT.Document)) like '%'+@Name +'%'
END
go

CREATE PROCEDURE [dbo].[AgentDelete] 
@Document int
AS
BEGIN
	DELETE FROM [dbo].[AGENT]
      WHERE Document=@Document

	  Select count(*)
	  from [AGENT]
	  WHERE Document=@Document
END
GO

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

CREATE PROCEDURE [dbo].[ClientList] 
@Name varchar(50)
AS
BEGIN
	select * 
	from CLIENT
	join [user] 
	on [USER].document=AGENT.Document
	where (Name + convert(varchar,CLIENT.Document)) like '%'+@Name +'%'
END
go

CREATE PROCEDURE [dbo].[ClientDelete] 
@Document int
AS
BEGIN
	DELETE FROM [dbo].[CLIENT]
      WHERE Document=@Document
	  
	  Select count(*)
	  from [CLIENT]
	  WHERE Document=@Document
END
GO