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
				@balancePrincipal MONEY,
				@Descripcion VARCHAR(50),
				@nuevoBalancePrincipal MONEY,
				@nuevoBalanceObjetivo MONEY,
				@balanceQuery MONEY

		SELECT @balancePrincipal = SA.Balance
		FROM [dbo].[SavingsAccount] SA
		WHERE SA.Id = @idPrincipal
		
		IF (@balancePrincipal - @montoTransaccion > 0 )
			BEGIN
				IF EXISTS( SELECT 1 FROM [dbo].[AdminQueryA] AA WHERE AA.ObjetiveAccountId = @idObjetivo )
					BEGIN 
					
						UPDATE [dbo].[SavingsAccount] SET Balance = [dbo].[SavingsAccount].Balance - @montoTransaccion
						WHERE [dbo].[SavingsAccount].Id = @idPrincipal

						UPDATE [dbo].[ObjetiveAccount] SET [Balance] = [dbo].[ObjetiveAccount].[Balance] + @montoTransaccion
						WHERE [dbo].[ObjetiveAccount].Id = @idObjetivo

						SELECT @balanceQuery = OA.Balance
						FROM [dbo].[ObjetiveAccount] OA
						WHERE OA.Id = @idObjetivo

						UPDATE [dbo].[AdminQueryA] SET [succesfullBalance] = @balanceQuery + @montoTransaccion, 
													   [succesfullDeposits] = [succesfullDeposits] + 1
						WHERE [dbo].[AdminQueryA].[ObjetiveAccountId] = @idObjetivo

						UPDATE [dbo].[AdminQueryA] SET [Balance] = @balanceQuery + @montoTransaccion, 
													   [Deposits] = [Deposits] + 1
						WHERE [dbo].[AdminQueryA].[ObjetiveAccountId] = @idObjetivo


				

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

						SELECT @Descripcion = OA.Objective
							   FROM [dbo].[ObjetiveAccount] OA
							   WHERE OA.Id = @idObjetivo

						INSERT INTO [dbo].[AdminQueryA]([ObjetiveAccountId], 
													    [Description],
														[succesfullDeposits],
														[Deposits],
														[succesfullBalance],
														[Balance])
						VALUES(@idObjetivo,
							   @Descripcion,
							   1,
							   1,
							   @montoTransaccion,
							   @montoTransaccion)
					END
			END
		ELSE
			BEGIN
				IF EXISTS( SELECT 1 FROM [dbo].[AdminQueryA] AA WHERE AA.ObjetiveAccountId = @idObjetivo)
					BEGIN
						SELECT @balanceQuery = OA.Balance
						FROM [dbo].[ObjetiveAccount] OA
						WHERE OA.Id = @idObjetivo

						UPDATE [dbo].[AdminQueryA] SET [Balance] = @balanceQuery + @montoTransaccion, 
													   [Deposits] = [Deposits] + 1
						WHERE [dbo].[AdminQueryA].[ObjetiveAccountId] = @idObjetivo

					END
				ELSE
					BEGIN

						SELECT @Descripcion = OA.Objective
							   FROM [dbo].[ObjetiveAccount] OA
							   WHERE OA.Id = @idObjetivo

						INSERT INTO [dbo].[AdminQueryA]([ObjetiveAccountId], 
													    [Description],
														[succesfullDeposits],
														[Deposits],
														[succesfullBalance],
														[Balance])
						VALUES(@idObjetivo,
							   @Descripcion,
							   0,
							   1,
							   0,
							   @montoTransaccion)
					END
			END
	SET NOCOUNT OFF
END
GO


--stored procedure que accede a la vista
ALTER PROCEDURE dbo.sp_queryA
AS
BEGIN
	SELECT Id,
		   OANumber,
		   ObjetiveAccountId,
		   [Description],
		   succesfullDeposits,
		   Deposits,
		   succesfullBalance,
		   Balance
	FROM view_consulta_admin_a 
END
GO

--vista 
ALTER VIEW view_consulta_admin_a
AS
SELECT     AA.Id,
		   OA.OANumber,
		   AA.ObjetiveAccountId,
		   AA.[Description],
		   AA.succesfullDeposits,
		   AA.Deposits,
		   AA.succesfullBalance,
		   AA.Balance
	FROM [dbo].[AdminQueryA] AA
	INNER JOIN [dbo].[ObjetiveAccount] OA ON AA.ObjetiveAccountId = OA.Id

exec dbo.sp_queryA