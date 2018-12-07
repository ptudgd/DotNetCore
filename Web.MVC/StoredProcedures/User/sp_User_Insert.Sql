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
@Email nvarchar(max),
@Image nvarchar(max),
@FacebookId nvarchar(max),
@LastLogin bigint,
@Exp bigint,
@Token nvarchar(max),
@Money decimal(18,2)
as
begin
	SELECT @UserId = isnull(MAX(UserId),0) + 1 from [User];
INSERT INTO [dbo].[User]
           ([UserId]
           ,[Email]
           ,[Image]
           ,[FacebookId]
           ,[LastLogin]
           ,[Exp]
           ,[Token]
           ,[Money])
     VALUES
           (@UserId 
           ,@Email 
           ,@Image
           ,@FacebookId
           ,@LastLogin
           ,@Exp
           ,@Token
           ,@Money)

end
