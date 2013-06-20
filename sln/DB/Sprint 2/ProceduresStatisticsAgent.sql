USE [SistemaTecnicos]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BusyAgent]
	@Datetime varchar(20)
AS
BEGIN
	SELECT [USER].Name, [AGENT].Document
	FROM [TASK] 
	JOIN Agent on Agent.Document=[TASK].ID_Agent
	JOIN [USER] on [USER].Document=Agent.Document
	JOIN [STATE] on [STATE].Id=[TASK].ID_State
	WHERE ID_State=2 AND InitDate>= CONVERT(datetime, @Datetime,131)
END
GO

