/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
*/

IF object_id('sp_Chapter_Insert') IS NULL
    EXEC ('create procedure sp_Chapter_Insert as select 1')
GO
ALTER proc [dbo].sp_Chapter_Insert
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
