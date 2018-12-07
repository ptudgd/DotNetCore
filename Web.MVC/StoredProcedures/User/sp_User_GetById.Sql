
IF object_id('sp_User_GetById') IS NULL
    EXEC ('create procedure sp_User_GetById as select 1')
GO
ALTER proc [dbo].sp_User_GetById
	@UserId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	SELECT * FROM User WHERE [User].UserId = @UserId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO