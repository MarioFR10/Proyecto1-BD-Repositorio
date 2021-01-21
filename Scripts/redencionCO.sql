-- =============================================
-- Author:      Mario
-- Create Date: 2021
-- Description: Redencion de CO
-- =============================================
ALTER PROCEDURE [dbo].[redencionCO]
(
	@inIdPrincipal INT,
	@inIdObjetivo INT,
	@fecha DATE
)
AS
BEGIN
    SET NOCOUNT ON
	BEGIN TRY
		SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
		BEGIN TRANSACTION redencionCuentaObjetivo

			DECLARE @montoTransaccion MONEY,
					@interesesAcumulados FLOAT	

			SELECT @interesesAcumulados = MI.NewAcumInterest
			FROM [dbo].[Mov CO Interest] MI
			WHERE MI.ObjectiveAccountId = @inIdObjetivo

			UPDATE [dbo].[ObjetiveAccount] SET [Balance] = [Balance] + @interesesAcumulados
			WHERE [dbo].[ObjetiveAccount].Id = @inIdObjetivo

			SELECT @montoTransaccion = CO.Balance
			FROM [dbo].[ObjetiveAccount] CO
			WHERE CO.Id = @inIdObjetivo

			UPDATE [dbo].[ObjetiveAccount] SET [Balance] = 0, [Active] = 0
			WHERE [dbo].[ObjetiveAccount].Id = @inIdObjetivo

			UPDATE [dbo].[SavingsAccount] SET [Balance] = [Balance] + @montoTransaccion
			WHERE [dbo].[SavingsAccount].Id = @inIdPrincipal

			--movimiento por redencion de cuenta objetivo
			INSERT INTO [dbo].[Mov CO] ([TypeMovCO],
												[ObjectiveAccountId],
												[DateOfMovCO],
												[Fee])
			VALUES (3,
					@inIdObjetivo,
					@fecha,
					@montoTransaccion
					)
		COMMIT TRANSACTION redencionCuentaObjetivo;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT>0
			ROLLBACK TRANSACTION redencionCuentaObjetivo;

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

