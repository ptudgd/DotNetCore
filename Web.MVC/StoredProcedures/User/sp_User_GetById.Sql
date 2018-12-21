
IF object_id('sp_User_GetById') IS NULL
    EXEC ('create procedure sp_User_GetById as select 1')
GO
ALTER proc [dbo].sp_User_GetById
	@Email nvarchar(max),
	@Password nvarchar(max)
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	SELECT * FROM [User] WHERE [User].Email = @Email AND [User].Password = @Password

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO