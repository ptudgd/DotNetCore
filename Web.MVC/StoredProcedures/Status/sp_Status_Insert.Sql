IF object_id('sp_Status_Insert') IS NULL
    EXEC ('create procedure sp_Status_Insert as select 1')
GO
ALTER proc [dbo].sp_Status_Insert
@StatusId bigint out,
@Name nvarchar(max)
as
begin
	SELECT @StatusId = isnull(MAX(StatusId),0) + 1 from [Status];
INSERT INTO [dbo].[Status]
           ([StatusId]
           ,[Name])
     VALUES
           (@StatusId
           ,@Name)

end
