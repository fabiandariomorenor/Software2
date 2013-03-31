CREATE PROCEDURE [dbo].[UserInsert] 
	@Document int,
	@Name varchar(50),
	@Password varchar(50),
	@ID_Rol int,
	@ID_Localization int
AS
BEGIN
	INSERT INTO [dbo].[User]
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

CREATE PROCEDURE [dbo].[AgentInsert] 
	@Document int,
	@Specialization varchar(50),
	@ID_Manager int
AS
BEGIN
	INSERT INTO [dbo].[AGENT]
           ([Document]
           ,[Specialization]
           ,[ID_Manager])
           
	VALUES
           (@Document
           ,@Specialization
           ,@ID_Manager)

	SELECT Document FROM [AGENT] WHERE Document = @Document
END

GO

CREATE PROCEDURE [dbo].[ClientInsert] 
	@Document int,
	@Address varchar(50),
	@DateExpDocument int
AS
BEGIN
	INSERT INTO [dbo].[CLIENT]
           ([Document]
           ,[Address]
           ,[DateExpDocument])
     VALUES
           (@Document
           ,@Address
           ,@DateExpDocument)
GO



	SELECT Document FROM [AGENT] WHERE Document = @Document
END

GO
CREATE PROCEDURE [dbo].[ClientInsert] 
	@Document int,
	@Address varchar(50),
	@DateExpDocument int
AS
BEGIN
	INSERT INTO [dbo].[CLIENT]
           ([Document]
           ,[Address]
           ,[DateExpDocument])
     VALUES
           (@Document
           ,@Address
           ,@DateExpDocument)
GO



	SELECT Document FROM [AGENT] WHERE Document = @Document
END

GO