
IF object_id('sp_Home_Search') IS NULL
    EXEC ('create procedure sp_Home_Search as select 1')
GO
ALTER proc [dbo].sp_Home_Search
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	SELECT TOP 20 Story.*,(
		SELECT COUNT(*) FROM Chapter WHERE Chapter.StoryId = Story.StoryId
	) as TotalChapter FROM Story
	
	ORDER BY Story.EditDate DESC

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO