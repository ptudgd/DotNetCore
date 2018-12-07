/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
5. Vi du:

*/

IF object_id('sp_Content_Update') IS NULL
    EXEC ('create procedure sp_Content_Update as select 1')
GO
ALTER proc [dbo].sp_Content_Update
@ContentId bigint out,
@StoryId bigint,
@Content nvarchar(max)
as
begin
UPDATE [dbo].[Content]
   SET [@StoryId] = @StoryId
      ,[Content] = @Content
 WHERE [Content].ContentId = @ContentId

end
