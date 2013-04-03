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

CREATE PROCEDURE [dbo].[ClientInsert] 
	@Document int,
	@Address varchar(50),
	@DateExpDocument varchar(50)
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

	SELECT Document FROM [CLIENT] WHERE Document = @Document
END

GO


GO

CREATE PROCEDURE [dbo].[ClientGet] 
	@Document int
AS
BEGIN
	SELECT * FROM CLIENT
	WHERE Document = @Document
END