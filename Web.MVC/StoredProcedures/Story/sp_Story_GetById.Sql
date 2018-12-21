
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

	SELECT [Story].*,Status.Name as StatusName,(
		SELECT COUNT(*) FROM Chapter WHERE Chapter.StoryId = Story.StoryId
	) as TotalChapter, [User].Name FROM Story 
	LEFT JOIN Status on Status.StatusId = Story.StatusId
	LEFT JOIN [User] On [User].UserId = Story.AuthorId
	WHERE [Story].StoryId = @StoryId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO