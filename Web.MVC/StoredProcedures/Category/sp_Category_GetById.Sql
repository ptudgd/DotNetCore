
IF object_id('sp_Category_GetById') IS NULL
    EXEC ('create procedure sp_Category_GetById as select 1')
GO
ALTER proc [dbo].sp_Category_GetById
	@CategoryId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	SELECT * FROM Category WHERE [Category].CategoryId = @CategoryId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO