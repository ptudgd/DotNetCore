
IF object_id('sp_Category_DeleteById') IS NULL
    EXEC ('create procedure sp_Category_DeleteById as select 1')
GO
ALTER proc [dbo].sp_Category_DeleteById
	@CategoryId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	DELETE  FROM Category WHERE [Category].CategoryId = @CategoryId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO