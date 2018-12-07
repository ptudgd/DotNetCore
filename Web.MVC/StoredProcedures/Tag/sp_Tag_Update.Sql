/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
5. Vi du:

*/

IF object_id('sp_Tag_Update') IS NULL
    EXEC ('create procedure sp_Tag_Update as select 1')
GO
ALTER proc [dbo].sp_Tag_Update
@TagId bigint,
@CategoryId bigint
as
begin
UPDATE [dbo].[Tag]
   SET [CategoryId] = @CategoryId
      ,[StoryId] = @StoryId
 WHERE [Tag].TagId = @TagId

end
