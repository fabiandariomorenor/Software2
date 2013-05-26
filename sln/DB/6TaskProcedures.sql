USE [SistemaTecnicos]
GO

/****** Object:  StoredProcedure [dbo].[TaskGet]    Script Date: 04/02/2013 17:21:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[TaskGet] 
	@ID int
AS
BEGIN
	SELECT * FROM [TASK]
	WHERE ID = @ID
END


GO

USE [SistemaTecnicos]
GO

/****** Object:  StoredProcedure [dbo].[TaskInsert]    Script Date: 04/02/2013 17:22:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TaskInsert] 
	@ID int,
	@ID_Client int,
	@ID_Agent int,
	@Description varchar(500),
	@ID_State varchar(50),
	@InitDate datetime,
	@EndDate datetime,
	@ExpectedInitDate datetime,
	@ExpectedEndDate datetime,
	@ProcedureDate datetime,
	@Comment varchar(500),
	@Address varchar(500),
	@ID_Localization int
AS
BEGIN
	INSERT INTO [dbo].[TASK]
           (
            [ID_Client]
           ,[ID_Agent]
           ,[Description]
           ,[ID_State]
           ,[InitDate]
           ,[EndDate]
           ,[ExpectedInitDate]
           ,[ExpectedEndDate]
           ,[ProcedureDate]
           ,[Comment]
           ,[Address]
           ,[ID_Localization])
     VALUES
           (
            @ID_Client
           ,@ID_Agent
           ,@Description
           ,@ID_State
           ,@InitDate
           ,@EndDate
           ,@ExpectedInitDate
           ,@ExpectedEndDate
           ,@ProcedureDate
           ,@Comment
           ,@Address
           ,@ID_Localization)
	SELECT CONVERT(INT,@@IDENTITY )
END



GO

USE [SistemaTecnicos]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TaskUpdate] 
	@ID int,
	@ID_Agent int,
	@Description varchar(500),
	@Address varchar(500),
	@ID_State varchar(50),
	@InitDate datetime,
	@EndDate datetime,
	@ExpectedInitDate datetime,
	@ExpectedEndDate datetime,
	@Comment varchar(500)
AS
BEGIN
	UPDATE [dbo].[TASK]
   SET [ID_State] = @ID_State
      ,[InitDate] = @InitDate
      ,[EndDate] = @EndDate
      ,[Comment] = @Comment
	  ,[ID_Agent] = @ID_Agent
      ,[Description] = @Description
      ,[Address] = @Address

 WHERE ID = @ID
 SELECT ID FROM [TASK] WHERE ID = @ID
END

GO


CREATE PROCEDURE [dbo].[TaskByAgent] 
	@ID_Agent int,
	@Description varchar(50)
AS
BEGIN
	SELECT [TASK].*, 
	[User].Name as ClientName ,
	[State].Name as StateName 
	FROM [TASK]
	JOIN Client on Client.Document = [TASK].ID_Client
	JOIN [User] on [User].Document = Client.Document
	JOIN [State] on [State].Id = Task.ID_State
	WHERE ID_Agent = @ID_Agent 
	AND ([TASK].Address LIKE '%'+@Description+'%'
	OR [TASK].Comment LIKE '%'+@Description+'%'
	OR [TASK].Description LIKE '%'+@Description+'%'
	OR [User].Name LIKE '%'+@Description+'%'
	OR [State].Name LIKE '%'+@Description+'%')
	ORDER BY InitDate
	
END

go



CREATE PROCEDURE [dbo].[TaskByClient] 
	@ID_Client int,
	@Description varchar(50)
AS
BEGIN
	SELECT [TASK].*, 
	[User].Name as AgentName ,
	[State].Name as StateName 
	FROM [TASK]
	JOIN Agent on Agent.Document = [TASK].ID_Agent
	JOIN [User] on [User].Document = Agent.Document
	JOIN [State] on [State].Id = Task.ID_State
	WHERE ID_Client = @ID_Client 
	AND 
	([TASK].Address LIKE '%'+@Description+'%'
	OR [TASK].Comment LIKE '%'+@Description+'%'
	OR [TASK].Description LIKE '%'+@Description+'%'
	OR [User].Name LIKE '%'+@Description+'%'
	OR [State].Name LIKE '%'+@Description+'%')
	ORDER BY InitDate
END


GO


	