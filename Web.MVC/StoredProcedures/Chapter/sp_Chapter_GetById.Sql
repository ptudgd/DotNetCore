
IF object_id('sp_Chapter_GetById') IS NULL
    EXEC ('create procedure sp_Chapter_GetById as select 1')
GO
ALTER proc [dbo].sp_Chapter_GetById
	@StoryId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	SELECT * FROM Chapter WHERE [Chapter].StoryId = @StoryId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO