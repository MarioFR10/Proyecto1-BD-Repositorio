


ALTER PROCEDURE dbo.interesDiarioCO(
	@inCOID INT,
	@inBalance MONEY,
	@inAcumInterest FLOAT
)
AS
BEGIN
SET NOCOUNT ON
	BEGIN TRY
		SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
		BEGIN TRANSACTION interesDiario
			UPDATE [dbo].[ObjetiveAccount]
			SET [Balance] = (@inBalance + (@inBalance*@inAcumInterest))
			WHERE [dbo].[ObjetiveAccount].[Id] = @inCOID

		COMMIT TRANSACTION interesDiario;
	END TRY

	BEGIN CATCH
			IF @@TRANCOUNT>0
				ROLLBACK TRANSACTION interesDiario

		INSERT INTO [dbo].[BE_Errors] VALUES (
            SUSER_SNAME(),
            ERROR_NUMBER(),
            ERROR_STATE(),
            ERROR_SEVERITY(),
            ERROR_LINE(),
            ERROR_PROCEDURE(),
            ERROR_MESSAGE(),
            GETDATE()
        );
	END CATCH
SET NOCOUNT OFF
END
GO