-- =============================================
-- Author:      Mario
-- Create Date: 2021
-- Description: Deposito de en cuentra objetivo
-- =============================================
ALTER PROCEDURE dbo.depositoObjetivo
(
   @idPrincipal INT,
   @idObjetivo INT,
   @montoTransaccion MONEY,
   @diaTransaccion DATE 
)
AS
BEGIN
    SET NOCOUNT ON
		
		DECLARE 
				@balancePrincipal MONEY 

		SELECT @balancePrincipal = SA.Balance
		FROM [dbo].[SavingsAccount] SA
		WHERE SA.Id = @idPrincipal
		
		IF (@balancePrincipal - @montoTransaccion > 0 )
			BEGIN
				
				DECLARE 
						@nuevoBalancePrincipal MONEY,
						@nuevoBalanceObjetivo MONEY
				
				UPDATE [dbo].[SavingsAccount] SET Balance = [dbo].[SavingsAccount].Balance - @montoTransaccion
				WHERE [dbo].[SavingsAccount].Id = @idPrincipal

				UPDATE [dbo].[ObjetiveAccount] SET [Balance] = [dbo].[ObjetiveAccount].[Balance] + @montoTransaccion
				WHERE [dbo].[ObjetiveAccount].Id = @idObjetivo

				INSERT INTO [dbo].[Mov CO] ([TypeMovCO],
										    [ObjectiveAccountId],
											[DateOfMovCO],
											[Fee])
				VALUES (1,
						@idObjetivo,
						@diaTransaccion,
						@montoTransaccion
						)
			END
		ELSE
			BEGIN
				SELECT 'NO SE PUEDE HACER DEPOSITO BALANCE QUEDARIA NEGATIVO'
			END

	SET NOCOUNT OFF
END
GO
