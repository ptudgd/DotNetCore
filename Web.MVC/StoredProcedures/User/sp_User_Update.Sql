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
@Email nvarchar(max),
@Name nvarchar(max),
@Password nvarchar(max),
@Image nvarchar(max),
@FacebookId nvarchar(max),
@LastLogin bigint,
@Exp bigint,
@Token nvarchar(max),
@Money decimal(18,2)
as
begin
UPDATE [dbo].[User]
   SET [Email] = @Email
      ,[Image] = @Image
      ,[FacebookId] = @FacebookId
      ,[LastLogin] = @LastLogin
      ,[Exp] = @Exp
      ,[Token] = @Token
      ,[Money] = @Money
	  ,[Name] = @Name
	  ,[Password] = @Password
 WHERE [User].UserId = @UserId

end
