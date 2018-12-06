/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
5. Vi du:

*/

IF object_id('sp_Category_GetByName') IS NULL
    EXEC ('create procedure sp_Category_GetByName as select 1')
GO
ALTER proc [dbo].sp_Category_GetByName
@Name nvarchar(max)
as
begin
	
SELECT * FROM [Category] WHERE [Category].Name = @Name

end
