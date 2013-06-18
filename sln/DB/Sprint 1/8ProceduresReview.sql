CREATE PROCEDURE [dbo].[TaskReviewClient] 
	@ID int,
	@ID_State int,
	@Comment varchar(50)
AS
IF (SELECT ID_State FROM TASK WHERE ID = @ID) = 2 AND (@ID_State = 3 OR @ID_State = 4)
BEGIN
	UPDATE [dbo].[TASK]
   SET [ID_State] = @ID_State
      ,[Comment] = @Comment
 WHERE ID = @ID
 SELECT ID FROM [TASK] WHERE ID = @ID AND ID_State = @ID_State
END