
IF object_id('sp_Chapter_DeleteById') IS NULL
    EXEC ('create procedure sp_Chapter_DeleteById as select 1')
GO
ALTER proc [dbo].sp_Chapter_DeleteById
	@ChapterId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	DELETE  FROM Chapter WHERE [Chapter].ChapterId = @ChapterId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO