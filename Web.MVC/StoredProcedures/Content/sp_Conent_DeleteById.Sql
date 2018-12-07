
IF object_id('sp_Content_DeleteById') IS NULL
    EXEC ('create procedure sp_Content_DeleteById as select 1')
GO
ALTER proc [dbo].sp_Content_DeleteById
	@ContentId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	DELETE  FROM Content WHERE [Content].ContentId = @ContentId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO