
IF object_id('sp_Home_View') IS NULL
    EXEC ('create procedure sp_Home_View as select 1')
GO
ALTER PROCEDURE [dbo].sp_Home_View
(
@Total int out,
@CurrentPage int = 1,
@PageSize int = 20
)
As
Begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------


	
	DECLARE @where NVARCHAR(MAX);
	set @where = ' WHERE 1=1 ';
	
	

	SET @CurrentPage = (@CurrentPage - 1)*@PageSize;
	
	DECLARE @selectSQL NVARCHAR(MAX)
	SET @selectSQL = N'
		SELECT Story.*,Status.Name as StatusName,(
			SELECT COUNT(*) FROM Chapter WHERE Chapter.StoryId = Story.StoryId
		) as TotalChapter FROM Story
		LEFT JOIN Status on Status.StatusId = Story.StatusId
	'
	+ @where + '  ORDER BY [Story].[View] desc OFFSET @CurrentPage ROWS FETCH NEXT @PageSize ROWS ONLY '

	EXECUTE sp_executesql
	@selectSQL,
	N'
	  @CurrentPage INT,
	  @PageSize int  = 20',
	
	@CurrentPage, @PageSize

	declare @countSQL nvarchar(500)
	set @countSQL = N'SELECT @Total = COUNT(*) FROM [Story] with(NoLock, ReadUncommitted)' + @where

	execute sp_executesql
	@countSQL,
	N'@Total INT OUT',
	@Total OUT

	---------------------------------------------------
	SET NOCOUNT OFF;
End