﻿

IF object_id('sp_Category_Search') IS NULL
    EXEC ('create procedure sp_Category_Search as select 1')
GO
ALTER PROCEDURE [dbo].sp_Category_Search
(
@Total int out,
@CurrentPage int = 1,
@PageSize int = 20,

@QuickSearch nvarchar(500)
)
As
Begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------


	
	DECLARE @where NVARCHAR(MAX);
	set @where = ' WHERE 1=1 ';
	
	
	if(@QuickSearch is not null)
	BEGIN
		SET @QuickSearch = '%' + @QuickSearch+'%'
		SET @where = @where + 'AND (';
		SET @where = @where + '[Category].Name like @QuickSearch'
		SET @where = @where + ')'
	END

	SET @CurrentPage = (@CurrentPage - 1)*@PageSize;
	
	DECLARE @selectSQL NVARCHAR(MAX)
	SET @selectSQL = N'
		SELECT * FROM Category
	'
	+ @where + '  ORDER BY [Category].CategoryId desc OFFSET @CurrentPage ROWS FETCH NEXT @PageSize ROWS ONLY '

	EXECUTE sp_executesql
	@selectSQL,
	N'
	  @CurrentPage INT,
	  @PageSize int  = 20,
	  
	  @QuickSearch nvarchar(500)',
	
	@CurrentPage, @PageSize,@QuickSearch

	declare @countSQL nvarchar(500)
	set @countSQL = N'SELECT @Total = COUNT(*) FROM [Category] with(NoLock, ReadUncommitted)' + @where

	execute sp_executesql
	@countSQL,
	N'@Total INT OUT,
	
	@QuickSearch nvarchar(500)',
	@Total OUT,@QuickSearch

	---------------------------------------------------
	SET NOCOUNT OFF;
End