
IF object_id('sp_Story_GetById') IS NULL
    EXEC ('create procedure sp_Story_GetById as select 1')
GO
ALTER proc [dbo].sp_Story_GetById
	@ContentId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	SELECT * FROM Content WHERE [Content].ContentId = @ContentId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO