
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
	
	SELECT Content.*,Story.Name as StoryName,Chapter.Name as ChapterName FROM Story 
	LEFT JOIN Content on Content.StoryId = Story.StoryId
	LEFT JOIN Chapter on Chapter.ChapterId = @ChapterId AND Chapter.StoryId = Story.StoryId
	WHERE Story.StoryId = @StoryId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO