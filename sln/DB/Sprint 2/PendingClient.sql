CREATE PROCEDURE [dbo].[PendingClientList] 
AS
BEGIN
	
	select distinct [USER].Name,client.* 
	from 
	client
	JOIN [USER] on [USER].Document=client.Document
	join task on task.ID_Client = client.document
	where task.id_state = 3
	
END
go


