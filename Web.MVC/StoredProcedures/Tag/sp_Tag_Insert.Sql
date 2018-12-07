/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
5. Vi du:

*/

IF object_id('sp_Tag_Insert') IS NULL
    EXEC ('create procedure sp_Tag_Insert as select 1')
GO
ALTER proc [dbo].sp_Tag_Insert
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