
IF object_id('sp_Status_GetById') IS NULL
    EXEC ('create procedure sp_Status_GetById as select 1')
GO
ALTER proc [dbo].sp_Status_GetById
	@StatusId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	SELECT * FROM Status WHERE [Status].StatusId = @StatusId

	---------------------------------------------------
	SET NOCOUNT OFF;
end
GO