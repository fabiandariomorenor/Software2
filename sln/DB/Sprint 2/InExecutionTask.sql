﻿CREATE PROCEDURE [dbo].[InExecutionTask] 
AS
BEGIN
	SELECT COUNT(DISTINCT [ID])
	FROM [TASK]
	WHERE [ID_State] = 2	
END