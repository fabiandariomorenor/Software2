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



CREATE PROCEDURE [dbo].[AgentInsert] 
	@Document decimal(12,0),
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

CREATE PROCEDURE [dbo].[AgentGet] 
	@Document int
AS
BEGIN
	SELECT * FROM AGENT
	JOIN  [User] on [User].Document = Agent.Document
	WHERE Agent.Document = @Document
END

GO


CREATE PROCEDURE [dbo].[AgentUpdate] 
	@Document decimal(12,0),
	@Specialization varchar(200)
AS
BEGIN
	UPDATE [dbo].[AGENT]
   SET [Specialization] = @Specialization
 WHERE Document = @Document


END

GO

CREATE PROCEDURE [dbo].[AgentCount] 
	@num int
AS
BEGIN
	SELECT COUNT(*) FROM AGENT


END

GO