
IF object_id('sp_User_DeleteById') IS NULL
    EXEC ('create procedure sp_User_DeleteById as select 1')
GO
ALTER proc [dbo].sp_User_DeleteById
	@UserId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	DELETE  FROM User WHERE [User].UserId = @UserId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO