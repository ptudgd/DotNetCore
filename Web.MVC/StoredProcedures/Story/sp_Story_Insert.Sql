/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
5. Vi du:

*/

IF object_id('sp_Story_Insert') IS NULL
    EXEC ('create procedure sp_Story_Insert as select 1')
GO
ALTER proc [dbo].sp_Story_Insert
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
