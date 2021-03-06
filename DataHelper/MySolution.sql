USE [MySolution]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [bigint] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Url] [varchar](max) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chapter]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapter](
	[ChapterId] [bigint] NOT NULL,
	[StoryId] [bigint] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[WriterDate] [datetime] NULL,
	[EditorDate] [datetime] NULL,
 CONSTRAINT [PK_Chapter] PRIMARY KEY CLUSTERED 
(
	[ChapterId] ASC,
	[StoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ChapterId] [bigint] NOT NULL,
	[StoryId] [bigint] NOT NULL,
	[Text] [nvarchar](max) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ChapterId] ASC,
	[StoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [bigint] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Story]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Story](
	[StoryId] [bigint] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[AuthorId] [bigint] NULL,
	[WriteDate] [datetime] NULL,
	[EditDate] [datetime] NULL,
	[Image] [varchar](max) NULL,
	[Decription] [nvarchar](max) NULL,
	[StatusId] [bigint] NULL,
	[isPublic] [bit] NULL,
	[View] [bigint] NULL,
 CONSTRAINT [PK_Story] PRIMARY KEY CLUSTERED 
(
	[StoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[CategoryId] [bigint] NOT NULL,
	[StoryId] [bigint] NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[StoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [bigint] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [varchar](500) NULL,
	[Image] [varchar](max) NULL,
	[FacebookId] [varchar](max) NULL,
	[LastLogin] [bigint] NULL,
	[Exp] [bigint] NULL,
	[Token] [varchar](max) NULL,
	[Money] [decimal](18, 2) NULL,
	[IsAdmin] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetByName]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Category_GetByName]
@Name nvarchar(max)
as
begin
	
SELECT * FROM [Category] WHERE [Category].Name = @Name

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Category_Insert]
@CategoryId bigint out,
@Name nvarchar(max),
@Url varchar(max)
as
begin
	SELECT @CategoryId = isnull(MAX(CategoryId),0) + 1 from [Category];
INSERT INTO [dbo].[Category]
           ([CategoryId]
           ,[Name]
           ,[Url])
     VALUES
           (@CategoryId
           ,@Name
           ,@Url)

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Search]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_Search]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_Chapter_GetById]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Chapter_GetById]
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
/****** Object:  StoredProcedure [dbo].[sp_Chapter_Insert]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Chapter_Insert]
@ChapterId bigint out,
@StoryId bigint,
@Name nvarchar(max),
@WriteDate datetime,
@EditDate datetime
as
begin
	SELECT @ChapterId = isnull(MAX(ChapterId),0) + 1 from [Chapter] WHERE [Chapter].StoryId = @StoryId;
INSERT INTO [dbo].[Chapter]
           ([ChapterId]
           ,[StoryId]
           ,[Name]
           ,[WriterDate]
           ,[EditorDate])
     VALUES
           (@ChapterId
           ,@StoryId
           ,@Name
           ,@WriteDate
           ,@EditDate)

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Content_GetById]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Content_GetById]
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
/****** Object:  StoredProcedure [dbo].[sp_Content_Insert]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Content_Insert]
@ChapterId bigint out,
@StoryId bigint,
@Text nvarchar(max)
as
begin
INSERT INTO [dbo].[Content]
           ([ChapterId]
           ,[StoryId]
           ,[Text])
     VALUES
           (@ChapterId
           ,@StoryId
           ,@Text)

end
GO
/****** Object:  StoredProcedure [dbo].[sp_Home_Search]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Home_Search]
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
/****** Object:  StoredProcedure [dbo].[sp_Home_View]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Home_View]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_Status_GetById]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Status_GetById]
@StatusId bigint
as
begin
	SELECT @StatusId = isnull(MAX(StatusId),0) + 1 from [Status];
SELECT * FROM [Status] WHERE [Status].StatusId = @StatusId

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Status_GetByName]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Status_GetByName]
@Name nvarchar(max)
as
begin
	
SELECT * FROM [Status] WHERE [Status].Name = @Name

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Status_Insert]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Status_Insert]
@StatusId bigint out,
@Name nvarchar(max)
as
begin
	SELECT @StatusId = isnull(MAX(StatusId),0) + 1 from [Status];
INSERT INTO [dbo].[Status]
           ([StatusId]
           ,[Name])
     VALUES
           (@StatusId
           ,@Name)

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Story_DeleteById]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Story_DeleteById]
	@StoryId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	DELETE  FROM Story WHERE [Story].StoryId = @StoryId

	---------------------------------------------------
	SET NOCOUNT OFF;
end

GO
/****** Object:  StoredProcedure [dbo].[sp_Story_GetById]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Story_GetById]
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
/****** Object:  StoredProcedure [dbo].[sp_Story_GetByName]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Story_GetByName]
@Name nvarchar(max)
as
begin
SET @Name = '%' + @Name +'%';
SELECT * FROM [Story] WHERE Name like @Name

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Story_Insert]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Story_Insert]
@StoryId bigint out,
@Name nvarchar(max),
@AuthorId bigint,
@WriteDate datetime,
@EditDate datetime,
@Image varchar(max),
@isPublic bit,
@StatusId bigint,
@Decription nvarchar(max),
@View bigint
as
begin
	SELECT @StoryId = isnull(MAX(StoryId),0) + 1 from [Story];
INSERT INTO [dbo].[Story]
           ([StoryId]
           ,[Name]
           ,[AuthorId]
           ,[WriteDate]
           ,[EditDate]
           ,[Image]
           ,[Decription]
           ,[StatusId]
           ,[isPublic]
           ,[View])
     VALUES
           (@StoryId
           ,@Name
           ,@AuthorId
           ,@WriteDate
           ,@EditDate
           ,@Image
           ,@Decription
           ,@StatusId
           ,@isPublic
           ,@View)

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Story_Search]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Story_Search]
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
		SET @where = @where + '[Story].Name like @QuickSearch'
		SET @where = @where + ')'
	END

	SET @CurrentPage = (@CurrentPage - 1)*@PageSize;
	
	DECLARE @selectSQL NVARCHAR(MAX)
	SET @selectSQL = N'
		SELECT [Story].*,[Status].Name as StatusName,[User].Name as AuthorName,(
			SELECT COUNT(*) FROM Chapter WHERE Chapter.StoryId = Story.StoryId
		) as TotalChapter FROM Story
		LEFT JOIN [Status] on [Status].StatusId = [Story].StatusId
		LEFT JOIN [User] on [User].UserId = Story.AuthorId
	'
	+ @where + '  ORDER BY [Story].WriteDate,[Story].[View] desc OFFSET @CurrentPage ROWS FETCH NEXT @PageSize ROWS ONLY '
	print @selectSQL;
	EXECUTE sp_executesql
	@selectSQL,
	N'
	  @CurrentPage INT,
	  @PageSize int  = 20,
	  
	  @QuickSearch nvarchar(500)',
	
	@CurrentPage, @PageSize,@QuickSearch

	declare @countSQL nvarchar(500)
	set @countSQL = N'SELECT @Total = COUNT(1) FROM [Story]' + @where
	execute sp_executesql
	@countSQL,
	N'@Total INT OUT,
	
	@QuickSearch nvarchar(500)',
	@Total OUT,@QuickSearch
	---------------------------------------------------
	SET NOCOUNT OFF;
End
GO
/****** Object:  StoredProcedure [dbo].[sp_Story_Update]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Story_Update]
@StoryId bigint out,
@Name nvarchar(max),
@AuthorId bigint,
@WriteDate datetime,
@EditDate datetime,
@Image varchar(max),
@isPublic bit,
@StatusId bigint,
@Decription nvarchar(max),
@View bigint
as
begin
UPDATE [dbo].[Story]
   SET [Name] = @Name
      ,[Image] = @Image
 WHERE [Story].StoryId = @StoryId

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Tag_GetById]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Tag_GetById]
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
/****** Object:  StoredProcedure [dbo].[sp_Tag_Insert]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Tag_Insert]
@StoryId bigint,
@CategoryId bigint
as
begin
INSERT INTO [dbo].Tag
           ([StoryId],
		   [CategoryId])
     VALUES
           (@StoryId
           ,@CategoryId
           )

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Type_Insert]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Type_Insert]
@TypeId bigint out,
@Name nvarchar(max),
@Url varchar(max)
as
begin
	SELECT @TypeId = isnull(MAX(TypeId),0) + 1 from [Type];
INSERT INTO [dbo].[Type]
           ([TypeId]
           ,[Name]
           ,[Url])
     VALUES
           (@TypeId
           ,@Name
           ,@Url)

end

GO
/****** Object:  StoredProcedure [dbo].[sp_User_DeleteById]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_User_DeleteById]
	@UserId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	DELETE  FROM [User] WHERE [User].UserId = @UserId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_User_GetById]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_User_GetById]
	@UserId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	SELECT * FROM [User] WHERE [User].UserId = @UserId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_User_Insert]
@UserId bigint,
@Name nvarchar(max),
@Email nvarchar(max),
@Image nvarchar(max),
@Password nvarchar(max),
@FacebookId nvarchar(max),
@LastLogin bigint,
@Exp bigint,
@Token nvarchar(max),
@Money decimal(18,2)
as
begin
SELECT @UserId = ISNULL(MAX([User].UserId),0)+1 FROM [User]
INSERT INTO [dbo].[User]
           ([UserId]
		   ,[Name]
           ,[Email]
		   ,[Password]
           ,[Image]
           ,[FacebookId]
           ,[LastLogin]
           ,[Exp]
           ,[Token]
           ,[Money])
     VALUES
           (@UserId 
		   ,@Name
           ,@Email 
		   ,@Password
           ,@Image
           ,@FacebookId
           ,@LastLogin
           ,@Exp
           ,@Token
           ,@Money)

end
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Search]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_User_Search]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Update]    Script Date: 12/22/2018 3:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_User_Update]
@UserId bigint,
@Name nvarchar(max),
@Password nvarchar(max)
as
begin
UPDATE [dbo].[User]
   SET [Name] = @Name
	  ,[Password] = @Password
 WHERE [User].UserId = @UserId

end
GO
