/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
5. Vi du:

*/

IF object_id('sp_Chapter_Update') IS NULL
    EXEC ('create procedure sp_Chapter_Update as select 1')
GO
ALTER proc [dbo].sp_Chapter_Update
@ChapterId bigint out,
@StoryId bigint,
@Name nvarchar(max),
@WriterDate datetime,
@EditorDate datetime
as
begin
UPDATE [dbo].[Chapter]
   SET [StoryId] = @StoryId
      ,[Name] = @Name
      ,[WriterDate] = @WriterDate
      ,[EditorDate] = @EditorDate
 WHERE [Chapter].ChapterId = @ChapterId

end
