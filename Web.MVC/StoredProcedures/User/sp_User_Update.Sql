/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
5. Vi du:

*/

IF object_id('sp_User_Update') IS NULL
    EXEC ('create procedure sp_User_Update as select 1')
GO
ALTER proc [dbo].sp_User_Update
@UserId bigint,
@Name nvarchar(max),
@Password nvarchar(max)
as
begin
UPDATE [dbo].[User]
   SET [Name] = @Name
	  ,[Password] = @Password
 WHERE [User].UserId = @UserId

end
