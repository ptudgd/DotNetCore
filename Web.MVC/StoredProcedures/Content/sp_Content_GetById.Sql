
IF object_id('sp_Content_GetById') IS NULL
    EXEC ('create procedure sp_Content_GetById as select 1')
GO
ALTER proc [dbo].sp_Content_GetById
	@StoryId bigint,
	@ChapterId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------
	
	SELECT Content.*,Story.Name as StoryName,Story.AuthorId,Story.StoryId,Chapter.ChapterId,Chapter.Name as ChapterName,[User].Name as AuthorName FROM Story 
	LEFT JOIN Content on Content.StoryId = Story.StoryId
	LEFT JOIN Chapter on Chapter.ChapterId = @ChapterId AND Chapter.StoryId = Story.StoryId
	LEFT JOIN [User] on [User].UserId = Story.AuthorId
	WHERE Story.StoryId = @StoryId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO