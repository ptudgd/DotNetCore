/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
*/

IF object_id('sp_Status_GetByName') IS NULL
    EXEC ('create procedure sp_Status_GetByName as select 1')
GO
ALTER proc [dbo].sp_Status_GetByName
@Name nvarchar(max)
as
begin
	
SELECT * FROM [Status] WHERE [Status].Name = @Name

end
