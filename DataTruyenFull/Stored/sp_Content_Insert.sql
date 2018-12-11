/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
*/

IF object_id('sp_Content_Insert') IS NULL
    EXEC ('create procedure sp_Content_Insert as select 1')
GO
ALTER proc [dbo].sp_Content_Insert
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
