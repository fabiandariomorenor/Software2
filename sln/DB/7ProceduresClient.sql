CREATE PROCEDURE [dbo].[ClientList] 
@Name varchar(50)
AS
BEGIN
	select * 
	from CLIENT
	join [user] 
	on [USER].document=Client.Document
	where (Name + convert(varchar,CLIENT.Document)) like '%'+@Name +'%'
END
go

CREATE PROCEDURE [dbo].[ClientDelete] 
@Document decimal(12,0)
AS
BEGIN
	DELETE FROM [dbo].[CLIENT]
      WHERE Document=@Document
	  
	  Select count(*)
	  from [CLIENT]
	  WHERE Document=@Document
END
GO

CREATE PROCEDURE [dbo].[ClientInsert] 
	@Document decimal(12,0),
	@Address varchar(50),
	@DateExpDocument datetime
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
	@Document decimal(12,0)
AS
BEGIN
	SELECT * FROM CLIENT
	join [user] 
	on [USER].document=Client.Document
	WHERE client.Document = @Document
END



go

CREATE PROCEDURE [dbo].[ClientUpdate] 
	@Document decimal(12,0),
	@Address varchar(50),
	@DateExpDocument datetime
AS
BEGIN
	
UPDATE [dbo].[CLIENT]
   SET [Address] = @Address
      ,[DateExpDocument] = @DateExpDocument
 WHERE @Document = Document


 SELECT Document FROM [CLIENT] WHERE Document = @Document
END


