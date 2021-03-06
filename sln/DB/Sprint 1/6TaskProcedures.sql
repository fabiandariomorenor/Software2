﻿USE [SistemaTecnicos]
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

CREATE PROCEDURE [dbo].[TaskDelete] 
@ID int
AS
BEGIN
	DELETE FROM [dbo].[TASK]
      WHERE  ID = @ID

	  Select count(*)
	  from [TASK]
	  WHERE ID = @ID
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
	ORDER BY State.ID asc, InitDate desc
	
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
	ORDER BY State.ID asc, InitDate desc
END


GO

CREATE PROCEDURE [dbo].[TaskReviewAgent] 
	@ID int,
	@ID_State int
AS
IF ((SELECT ID_State FROM TASK WHERE ID = @ID) = 1 AND (@ID_State = 2 OR @ID_State = 5)) 
OR ((SELECT ID_State FROM TASK WHERE ID = @ID) = 2 AND (@ID_State = 3 OR @ID_State = 5))
BEGIN
	UPDATE [dbo].[TASK]
   SET [ID_State] = @ID_State
 WHERE ID = @ID
 SELECT ID FROM [TASK] WHERE ID = @ID AND ID_State = @ID_State
END

GO

CREATE PROCEDURE [dbo].[TaskReviewClient] 
	@ID int,
	@ID_State int,
	@Comment varchar(50)
AS
IF (((SELECT ID_State FROM TASK WHERE ID = @ID) = 1 OR (SELECT ID_State FROM TASK WHERE ID = @ID) = 2) AND  @ID_State = 5)
OR ((SELECT ID_State FROM TASK WHERE ID = @ID) = 3 AND @ID_State = 4)
BEGIN
	UPDATE [dbo].[TASK]
   SET [ID_State] = @ID_State
      ,[Comment] = @Comment
 WHERE ID = @ID
 SELECT ID FROM [TASK] WHERE ID = @ID
END

GO

CREATE PROCEDURE [dbo].[TaskByState] 
	@ID_Client int,
	@ID_State int
AS
BEGIN
	SELECT [TASK].* ,
	[User].Name as AgentName ,
	[State].Name as StateName 
	FROM [TASK]
	JOIN Agent on Agent.Document = [TASK].ID_Agent
	JOIN [User] on [User].Document = Agent.Document
	JOIN [State] on [State].Id = Task.ID_State
	WHERE ID_Client = @ID_Client AND ID_State = @ID_State
END

GO

CREATE PROCEDURE [dbo].[AgentPerHour] 
	@Datetime varchar(20)
AS
BEGIN
	SELECT [AGENT].Document, [USER].Name FROM AGENT JOIN [USER] ON AGENT.Document = [USER].Document WHERE [AGENT].Document NOT IN
	(SELECT ID_Agent FROM TASK WHERE InitDate = CONVERT (datetime, @Datetime, 131)) 
END

GO
CREATE PROCEDURE [dbo].[TaskAgentHour] 
	@initdate varchar(20),
	@enddate varchar(20)
AS
BEGIN
SELECT  --CAST(ID_Agent as INT) as 'ID_Agente', 
		InitDate  as 'TaskDate', 
        DATEPART(Hour, InitDate)    as 'Task_Hour', 
        COUNT(*) as 'Task_PerHour'
FROM [dbo].[TASK]												--WHERE InitDate > @initdate AND InitDate < @enddate AND ID_State=0

GROUP BY InitDate , DATEPART(Hour, InitDate)--,CAST(ID_Agent as INT)
ORDER BY CAST(InitDate as DATE) ASC
END

