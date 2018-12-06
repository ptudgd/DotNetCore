
IF object_id('sp_Story_DeleteById') IS NULL
    EXEC ('create procedure sp_Story_DeleteById as select 1')
GO
ALTER proc [dbo].sp_Story_DeleteById
	@StoryId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	DELETE  FROM Story WHERE [Story].StoryId = @StoryId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO