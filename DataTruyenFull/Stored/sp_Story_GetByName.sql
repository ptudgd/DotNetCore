/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
5. Vi du:

*/

IF object_id('sp_Story_GetByName') IS NULL
    EXEC ('create procedure sp_Story_GetByName as select 1')
GO
ALTER proc [dbo].sp_Story_GetByName
@Name nvarchar(max)
as
begin
SET @Name = '%' + @Name +'%';
SELECT * FROM [Story] WHERE Name like @Name

end
