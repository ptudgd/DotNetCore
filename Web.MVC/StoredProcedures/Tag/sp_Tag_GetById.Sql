
IF object_id('sp_Tag_GetById') IS NULL
    EXEC ('create procedure sp_Tag_GetById as select 1')
GO
ALTER proc [dbo].sp_Tag_GetById
	@TagId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	SELECT * FROM Tag WHERE [Tag].TagId = @TagId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO