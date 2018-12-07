/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
5. Vi du:

*/

IF object_id('sp_Status_Update') IS NULL
    EXEC ('create procedure sp_Status_Update as select 1')
GO
ALTER proc [dbo].sp_Status_Update
@StatusId bigint out,
@Name nvarchar(max)
as
begin
UPDATE [dbo].[Status]
   SET [StatusId] = @StatusId
      ,[Name] = @Name
 WHERE [Status].StatusId = @StatusId

end
