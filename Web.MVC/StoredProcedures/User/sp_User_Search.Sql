﻿
IF object_id('sp_User_Search') IS NULL
    EXEC ('create procedure sp_User_Search as select 1')
GO
ALTER PROCEDURE [dbo].sp_User_Search
(
@Total int out,
@PageSize bigint,
@CurrentPage bigint,
@Email nvarchar(max),
@QuickSearch nvarchar(500)
)
As
Begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------


	
	DECLARE @where NVARCHAR(MAX);
	set @where = ' WHERE 1=1 ';
	
	IF(@Email IS NOT NULL)
	BEGIN
		SET @where = @where + ' AND [User].Email = @Email '
	END
	
	if(@QuickSearch is not null)
	BEGIN
		SET @QuickSearch = '%' + @QuickSearch+'%'
		SET @where = @where + 'AND (';
		SET @where = @where + '[User].Name like @QuickSearch'
		SET @where = @where + ')'
	END

	SET @CurrentPage = (@CurrentPage - 1)*@PageSize;
	
	DECLARE @selectSQL NVARCHAR(MAX)
	SET @selectSQL = N'
		SELECT * FROM [User]
	'
	+ @where + '  ORDER BY [User].UserId desc OFFSET @CurrentPage ROWS FETCH NEXT @PageSize ROWS ONLY '

	EXECUTE sp_executesql
	@selectSQL,
	N'
	  @CurrentPage INT,
	  @PageSize int  = 20,
	  @Email nvarchar(max),
	  @QuickSearch nvarchar(500)',
	
	@CurrentPage, @PageSize,@Email,@QuickSearch

	declare @countSQL nvarchar(500)
	set @countSQL = N'SELECT @Total = COUNT(*) FROM [User] with(NoLock, ReadUncommitted)' + @where

	execute sp_executesql
	@countSQL,
	N'@Total INT OUT,
	@Email nvarchar(max),
	@QuickSearch nvarchar(500)',
	@Total OUT,@Email,@QuickSearch

	---------------------------------------------------
	SET NOCOUNT OFF;
End