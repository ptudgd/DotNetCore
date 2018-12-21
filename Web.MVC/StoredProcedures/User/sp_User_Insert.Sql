
/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
5. Vi du:

*/

IF object_id('sp_User_Insert') IS NULL
    EXEC ('create procedure sp_User_Insert as select 1')
GO
ALTER proc [dbo].sp_User_Insert
@UserId bigint,
@Name nvarchar(max),
@Email nvarchar(max),
@Image nvarchar(max),
@Password nvarchar(max),
@FacebookId nvarchar(max),
@LastLogin bigint,
@Exp bigint,
@Token nvarchar(max),
@Money decimal(18,2)
as
begin
SELECT @UserId = ISNULL(MAX([User].UserId),0)+1 FROM [User]
INSERT INTO [dbo].[User]
           ([UserId]
		   ,[Name]
           ,[Email]
		   ,[Password]
           ,[Image]
           ,[FacebookId]
           ,[LastLogin]
           ,[Exp]
           ,[Token]
           ,[Money])
     VALUES
           (@UserId 
		   ,@Name
           ,@Email 
		   ,@Password
           ,@Image
           ,@FacebookId
           ,@LastLogin
           ,@Exp
           ,@Token
           ,@Money)

end
