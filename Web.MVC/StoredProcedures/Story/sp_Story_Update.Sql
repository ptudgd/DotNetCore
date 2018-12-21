/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
5. Vi du:

*/

IF object_id('sp_Story_Update') IS NULL
    EXEC ('create procedure sp_Story_Update as select 1')
GO
ALTER proc [dbo].sp_Story_Update
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
