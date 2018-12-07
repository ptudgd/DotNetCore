
IF object_id('sp_Story_GetById') IS NULL
    EXEC ('create procedure sp_Story_GetById as select 1')
GO
ALTER proc [dbo].sp_Story_GetById
	@StoryId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	SELECT [Story].*,Status.Name as StatusName FROM Story 
	LEFT JOIN Status on Status.StatusId = Story.StatusId
	WHERE [Story].StoryId = @StoryId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO