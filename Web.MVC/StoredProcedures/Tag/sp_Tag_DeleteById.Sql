
IF object_id('sp_Tag_DeleteById') IS NULL
    EXEC ('create procedure sp_Tag_DeleteById as select 1')
GO
ALTER proc [dbo].sp_Tag_DeleteById
	@TagId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	DELETE  FROM Tag WHERE [Tag].TagId = @TagId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO