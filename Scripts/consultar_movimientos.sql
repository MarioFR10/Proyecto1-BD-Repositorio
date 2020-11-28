
CREATE PROCEDURE dbo_SP_Read_Movements
(
    @AccountStatementId INT   --Mapeado en capa logica
)
AS
BEGIN
	SET NOCOUNT ON				--set nocount 
	BEGIN TRY
		DECLARE @outResultCode INT = 0
		IF exists( SELECT MV.Id FROM [dbo].[Movement CA] MV WHERE MV.AccountStatementId = @AccountStatementId )
		BEGIN	
				SELECT MV.Id, 
					   MV.TypeMovId, 
					   MV.Amount, 
					   MV.NewBalance, 
					   MV.[Description]
				FROM [dbo].[Movement CA] MV
				WHERE MV.AccountStatementId = @AccountStatementId
		END
		ELSE
			BEGIN 
				SET @outResultCode = 1 -- Codigo de error NO EXISTE EL ID DE LA CUENTA ASOCIADA
				SELECT @outResultCode
			END
	END TRY

	BEGIN CATCH
		SET @outResultCode = 1 -- Codigo de error NO EXISTE EL ID DE LA CUENTA ASOCIADA
		SELECT @outResultCode
	END CATCH

	SET NOCOUNT OFF				--set nocount 
END	
GO