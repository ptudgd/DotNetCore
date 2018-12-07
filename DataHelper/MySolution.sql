
USE [MySolution]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/6/2018 3:12:47 PM ******/
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
/****** Object:  Table [dbo].[Chapter]    Script Date: 12/6/2018 3:12:48 PM ******/
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
/****** Object:  Table [dbo].[Content]    Script Date: 12/6/2018 3:12:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ContentId] [bigint] NULL,
	[StoryId] [bigint] NULL,
	[Content] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 12/6/2018 3:12:48 PM ******/
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
/****** Object:  Table [dbo].[Story]    Script Date: 12/6/2018 3:12:48 PM ******/
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
/****** Object:  Table [dbo].[Tag]    Script Date: 12/6/2018 3:12:48 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 12/6/2018 3:12:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [bigint] NOT NULL,
	[Email] [varchar](500) NULL,
	[Image] [varchar](max) NULL,
	[FacebookId] [varchar](max) NULL,
	[LastLogin] [bigint] NULL,
	[Exp] [bigint] NULL,
	[Token] [varchar](max) NULL,
	[Money] [decimal](18, 2) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetByName]    Script Date: 12/6/2018 3:12:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 12/6/2018 3:12:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Chapter_Insert]    Script Date: 12/6/2018 3:12:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Content_Insert]    Script Date: 12/6/2018 3:12:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Content_Insert]
@ContentId bigint out,
@StoryId bigint,
@Content nvarchar(max)
as
begin
	SELECT @ContentId = isnull(MAX(ContentId),0) + 1 from [Content] WHERE [Content].StoryId = @StoryId;
INSERT INTO [dbo].[Content]
           ([ContentId]
           ,[StoryId]
           ,[Content])
     VALUES
           (@ContentId
           ,@StoryId
           ,@Content)

end
GO
/****** Object:  StoredProcedure [dbo].[sp_Status_GetById]    Script Date: 12/6/2018 3:12:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Status_GetByName]    Script Date: 12/6/2018 3:12:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Status_Insert]    Script Date: 12/6/2018 3:12:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Story_GetByName]    Script Date: 12/6/2018 3:12:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Story_Insert]    Script Date: 12/6/2018 3:12:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Tag_Insert]    Script Date: 12/6/2018 3:12:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Type_Insert]    Script Date: 12/6/2018 3:12:48 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_GetById]    Script Date: 12/6/2018 3:12:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_User_GetById]
    @UserId bigint,
	@Email varchar(MAX),
	@Token varchar(MAX)
AS
BEGIN
    SET NOCOUNT ON;
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    ---------------------------------------------------

    SELECT
        *
    FROM [dbo].[User] WITH(NOLOCK, READUNCOMMITTED)
    WHERE
			UserId = @UserId
		AND	Email = @Email
		AND Token = @Token

    ---------------------------------------------------
    SET NOCOUNT OFF;
END
GO
