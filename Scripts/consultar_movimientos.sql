
ALTER PROCEDURE dbo_SP_Read_Movements
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



CREATE PROCEDURE dbo_SP_Read_Movements_Word
(
    @AccountStatementId INT,   --Mapeado en capa logica 
	@Description VARCHAR(50)

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
				WHERE MV.AccountStatementId = @AccountStatementId AND MV.[Description] LIKE @Description
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


DECLARE @SearchWord VARCHAR(100)
SET @SearchWord ='%wallmart%'   --La palabra o frase a buscar tiene que ir entre '%' esto lo podemos arreglar en capa logica

SELECT MV.[Description]
FROM [dbo].[Movement CA] MV
WHERE MV.[Description] LIKE @SearchWord

select * from [dbo].[Movement CA]
