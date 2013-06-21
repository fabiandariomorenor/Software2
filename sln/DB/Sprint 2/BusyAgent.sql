USE [SistemaTecnicos]
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
  WHERE ID_State=2 AND InitDate>= CONVERT(varchar(20), @Datetime,131)
END
GO

