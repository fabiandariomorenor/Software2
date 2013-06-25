USE [SistemaTecnicos]
GO
CREATE PROCEDURE [dbo].[FreeAgent]
@Datetime as varchar(100)
AS
BEGIN
  SELECT [USER].Name, [AGENT].Document
	FROM [USER]
	JOIN [AGENT] ON [AGENT].Document=[USER].Document
	EXCEPT
	(SELECT [USER].Name, [AGENT].Document
		FROM [TASK] 
		JOIN Agent on Agent.Document=[TASK].ID_Agent
		JOIN [USER] on [USER].Document=Agent.Document
		JOIN [STATE] on [STATE].Id=[TASK].ID_State
		WHERE InitDate = CONVERT(varchar(20),@Datetime,131))
END
GO