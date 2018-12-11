
IF object_id('sp_Tag_GetById') IS NULL
    EXEC ('create procedure sp_Tag_GetById as select 1')
GO
ALTER proc [dbo].sp_Tag_GetById
	@StoryId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	SELECT Category.*,Tag.StoryId FROM Tag
	LEFT JOIN [Category] on Category.CategoryId = Tag.CategoryId
	WHERE [Tag].StoryId = @StoryId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO