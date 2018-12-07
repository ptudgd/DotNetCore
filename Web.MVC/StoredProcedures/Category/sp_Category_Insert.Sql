/*
1. Tác giả: Nguyen Hoang Duy
2. Ngày tạo: 2018.12.05
5. Vi du:

*/

IF object_id('sp_Category_Insert') IS NULL
    EXEC ('create procedure sp_Category_Insert as select 1')
GO
ALTER proc [dbo].sp_Category_Insert
@CategoryId bigint out,
@Name nvarchar(max),
@Url varchar(max)
as
begin
	SELECT @CategoryId = isnull(MAX(CategoryId),0) + 1 from [Category];
INSERT INTO [dbo].[Category]
           ([CategoryId]
           ,[Name]
           ,[Url])
     VALUES
           (@CategoryId
           ,@Name
           ,@Url)

end
