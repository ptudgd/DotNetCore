/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
*/

IF object_id('sp_Content_Insert') IS NULL
    EXEC ('create procedure sp_Content_Insert as select 1')
GO
ALTER proc [dbo].sp_Content_Insert
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
