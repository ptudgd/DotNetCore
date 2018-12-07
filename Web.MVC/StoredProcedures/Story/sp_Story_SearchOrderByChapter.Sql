
IF object_id('sp_Story_SearchOrderByChapter') IS NULL
    EXEC ('create procedure sp_Story_SearchOrderByChapter as select 1')
GO
ALTER PROCEDURE [dbo].sp_Story_SearchOrderByChapter
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


	
	
	SET @CurrentPage = (@CurrentPage - 1)*@PageSize;
	
	DECLARE @selectSQL NVARCHAR(MAX)
	SET @selectSQL = N'
		SELECT [Chapter].StoryId,
			[Story].Name as StoryName,
			[Status].Name as StatusName,
			[Category].Name as CategoryName
		FROM [Chapter]
			LEFT JOIN [Story] 
				on [Story].StoryId = [Chapter].StoryId
			LEFT JOIN [Status] 
				on [Status].StatusId = [Story].StatusId
			LEFT JOIN [Tag] 
				on [Tag].StoryId= [Story].StoryId
			LEFT JOIN [Category] 
				on [Category].CategoryId = [Tag].CategoryId
			GROUP BY [Chapter].StoryId,[Story].Name,[Status].Name,[Category].Name

			ORDER BY MAX([Chapter].WriterDate) DESC

			OFFSET @CurrentPage ROWS FETCH NEXT @PageSize ROWS ONLY '

	EXECUTE sp_executesql
	@selectSQL,
	N'
	  @CurrentPage INT,
	  @PageSize int  = 20,
	  
	  @QuickSearch nvarchar(500)',
	
	@CurrentPage, @PageSize,@QuickSearch

	declare @countSQL nvarchar(500)
	set @countSQL = N'SELECT @Total = COUNT(*) FROM [Story] with(NoLock, ReadUncommitted)' + @where

	execute sp_executesql
	@countSQL,
	N'@Total INT OUT,
	
	@QuickSearch nvarchar(500)',
	@Total OUT,@QuickSearch

	---------------------------------------------------
	SET NOCOUNT OFF;
End