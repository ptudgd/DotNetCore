/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
5. Vi du:

*/

IF object_id('sp_Category_Update') IS NULL
    EXEC ('create procedure sp_Category_Update as select 1')
GO
ALTER proc [dbo].sp_Category_Update
@CategoryId bigint out,
@Name nvarchar(max),
@Url varchar(max)
as
begin
UPDATE [dbo].[Category]
   SET [Name] = @Name
      ,[Url] = @Url
 WHERE [Category].CategoryId = @CategoryId

end
