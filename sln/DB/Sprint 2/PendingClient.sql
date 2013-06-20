CREATE PROCEDURE [dbo].[PendingClientList] 
AS
BEGIN
	select * 
	from CLIENT	
	WHERE ID_State = 3 
END
go



