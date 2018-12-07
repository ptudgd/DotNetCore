
IF object_id('sp_Status_DeleteById') IS NULL
    EXEC ('create procedure sp_Status_DeleteById as select 1')
GO
ALTER proc [dbo].sp_Status_DeleteById
	@StatusId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	DELETE  FROM Status WHERE [Status].StatusId = @StatusId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO