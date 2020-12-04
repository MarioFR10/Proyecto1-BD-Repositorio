CREATE PROCEDURE dbo.CerrarEstadoCuenta
	@inCuenta INT,
	@inEstadoCuenta INT,
	@inTipoCuenta INT,
	@inMinimo MONEY,
	@inFecha DATE,
	@outResultCode INT OUTPUT
AS
BEGIN
SET NOCOUNT ON
	BEGIN TRY
		DECLARE @ATM INT,
				@Humano INT,
				@SaldoMinimo INT,
				@MultaHumano INT,
				@MultaATM INT,
				@MultaSaldoMinimo INT,
				@monto INT,
				@Intereses FLOAT,
				@SaldoActual MONEY,
				@Descripcion VARCHAR(50),
				@FechaCreacion DATE,
				@DifMeses INT

		-----------------------Contar tramites--------------------------
		SELECT @ATM = COUNT(MCA.[TypeMovId])
		FROM [dbo].[Movement CA] MCA
		WHERE MCA.[SavingsAccountId] = @inCuenta AND MCA.[TypeMovId] = 2 AND MCA.[DateOfMov] <= @inFecha

		SELECT @Humano = COUNT(MCA.[TypeMovId])
		FROM [dbo].[Movement CA] MCA
		WHERE MCA.[SavingsAccountId] = @inCuenta AND MCA.[TypeMovId] = 3 AND MCA.[DateOfMov] <= @inFecha
		-----------------------Contar tramites--------------------------


		SELECT @SaldoMinimo = TSA.[MinimunBalance]
		FROM [dbo].[TypeSavingsAccount] TSA
		WHERE TSA.Id = @inTipoCuenta

		SET @MultaHumano = 0
		SET @MultaATM = 0

		-----------------------Multa superar retiros ventana--------------------------
		SELECT @MultaHumano = TSA.[ExceedComisionHumanMont]
		FROM [dbo].[TypeSavingsAccount] TSA
		WHERE TSA.[MaxOpsHuman] < @Humano AND TSA.Id = @inTipoCuenta

		IF (@MultaHumano != 0)
			BEGIN
				SELECT @SaldoActual = SA.Balance
				FROM [dbo].[SavingsAccount] SA
				WHERE SA.Id = @inCuenta

				UPDATE [dbo].[SavingsAccount]
				SET Balance = @SaldoActual - @MultaHumano,
					InsertAt = GETDATE(),
					InsertBy = 'script',
					InsertIn = '186.176.102.189'
				WHERE [dbo].[SavingsAccount].Id = @inCuenta

				SELECT @Descripcion = TM.Name
				FROM [dbo].[TypeMovement CA] TM
				WHERE TM.Id = 8

				INSERT [dbo].[Movement CA] (SavingsAccountId,
									TypeMovId,
									AccountStatementId,
									Amount,
									NewBalance,
									Description,
									Visible,
									DateOfMov)
				VALUES(@inCuenta,
						8,
						@inEstadoCuenta,
						@MultaHumano,
						@SaldoActual - @MultaHumano,
						@Descripcion,
						1,
						@inFecha)
			END
		-----------------------Multa superar retiros ventana--------------------------

		-----------------------Multa superar retiros ATM--------------------------
		SELECT @MultaATM = TSA.[ExceedComisionAtmMont]
		FROM [dbo].[TypeSavingsAccount] TSA
		WHERE TSA.[MaxOpsATM] < @ATM AND TSA.Id = @inTipoCuenta

		IF (@MultaATM != 0)
			BEGIN
				SELECT @SaldoActual = SA.Balance
				FROM [dbo].[SavingsAccount] SA
				WHERE SA.Id = @inCuenta

				UPDATE [dbo].[SavingsAccount]
				SET Balance = @SaldoActual - @MultaATM,
					InsertAt = GETDATE(),
					InsertBy = 'script',
					InsertIn = '186.176.102.189'
				WHERE [dbo].[SavingsAccount].Id = @inCuenta

				SELECT @Descripcion = TM.Name
				FROM [dbo].[TypeMovement CA] TM
				WHERE TM.Id = 9

				INSERT [dbo].[Movement CA] (SavingsAccountId,
									TypeMovId,
									AccountStatementId,
									Amount,
									NewBalance,
									Description,
									Visible,
									DateOfMov)
				VALUES(@inCuenta,
						9,
						@inEstadoCuenta,
						@MultaHumano,
						@SaldoActual - @MultaATM,
						@Descripcion,
						1,
						@inFecha)
			END
		-----------------------Multa superar retiros ATM--------------------------

		-----------------------Multa incumplir saldo minimo--------------------------
		IF(@SaldoMinimo > @inMinimo)
			BEGIN
				SELECT @SaldoActual = SA.Balance
				FROM [dbo].[SavingsAccount] SA
				WHERE SA.Id = @inCuenta

				SELECT @MultaSaldoMinimo = TSA.[PenaltyForBreach]
				FROM [dbo].[TypeSavingsAccount] TSA
				WHERE TSA.Id = @inTipoCuenta

				UPDATE [dbo].[SavingsAccount]
				SET Balance = @SaldoActual - @MultaSaldoMinimo,
					InsertAt = GETDATE(),
					InsertBy = 'script',
					InsertIn = '186.176.102.189'
				WHERE [dbo].[SavingsAccount].Id = @inCuenta

				INSERT [dbo].[Movement CA] (SavingsAccountId,
									TypeMovId,
									AccountStatementId,
									Amount,
									NewBalance,
									Description,
									Visible,
									DateOfMov)
				VALUES(@inCuenta,
						10,
						@inEstadoCuenta,
						@MultaHumano,
						@SaldoActual - @MultaSaldoMinimo,
						'Multa Saldo Minimo',
						1,
						@inFecha)

			END
		-----------------------Multa incumplir saldo minimo--------------------------

		-----------------------Cargo mensual--------------------------
		SELECT @SaldoActual = SA.Balance
		FROM [dbo].[SavingsAccount] SA
		WHERE SA.Id = @inCuenta

		SELECT @monto = TSA.[MensualAccountForService]
		FROM [dbo].[TypeSavingsAccount] TSA
		WHERE TSA.[Id] = @inTipoCuenta

		UPDATE [dbo].[SavingsAccount]
		SET Balance = @SaldoActual - @monto,
			InsertAt = GETDATE(),
			InsertBy = 'script',
			InsertIn = '186.176.102.189'
		WHERE [dbo].[SavingsAccount].Id = @inCuenta

		INSERT [dbo].[Movement CA] (SavingsAccountId,
									TypeMovId,
									AccountStatementId,
									Amount,
									NewBalance,
									Description,
									Visible,
									DateOfMov)
		VALUES(@inCuenta,
				11,
				@inEstadoCuenta,
				@monto,
				@SaldoActual - @monto,
				'Cargo Mensual',
				1,
				@inFecha)
		-----------------------Cargo mensual--------------------------

		-----------------------Intereses--------------------------
		SET @SaldoActual = @SaldoActual - @monto

		SELECT @Descripcion = TM.Name
		FROM [dbo].[TypeMovement CA] TM
		WHERE TM.Id = 7

		SELECT @Intereses = TSA.[InterestRate]
		FROM [dbo].[TypeSavingsAccount] TSA
		WHERE TSA.[Id] = @inTipoCuenta

		UPDATE [dbo].[SavingsAccount]
		SET Balance = @SaldoActual + (@SaldoActual * (@Intereses/100)),
			InsertAt = GETDATE(),
			InsertBy = 'script',
			InsertIn = '186.176.102.189'
		WHERE [dbo].[SavingsAccount].Id = @inCuenta

		INSERT [dbo].[Movement CA] (SavingsAccountId,
									TypeMovId,
									AccountStatementId,
									Amount,
									NewBalance,
									Description,
									Visible,
									DateOfMov)
		VALUES(@inCuenta,
				7,
				@inEstadoCuenta,
				@SaldoActual * (@Intereses/100),
				@SaldoActual + (@SaldoActual * (@Intereses/100)),
				@Descripcion,
				1,
				@inFecha)
		-----------------------Intereses--------------------------

		-----------------------Cerrar estado de cuenta--------------------------
		SELECT @SaldoActual = SA.Balance
		FROM [dbo].[SavingsAccount] SA
		WHERE SA.Id = @inCuenta

		UPDATE [dbo].[AccountStatement]
		SET [FinalBalance] = @SaldoActual
		WHERE [dbo].[AccountStatement].[Id] = @inEstadoCuenta AND [dbo].[AccountStatement].[EndDate] = @inFecha
		-----------------------Cerrar estado de cuenta--------------------------

		-----------------------Habrir nuevo estado cuenta--------------------------
		SELECT @FechaCreacion = SA.[CreationDate]
		FROM [dbo].[SavingsAccount] SA
		WHERE SA.Id = @inCuenta

		SET @DifMeses = DATEDIFF(MONTH, @FechaCreacion, @inFecha)

		INSERT [dbo].[AccountStatement] (SavingsAccountId,
									StartDate,
									EndDate,
									InitialBalance,
									FinalBalance,
									InsertAt,
									InsertBy,
									InsertIn)
		VALUES (@inCuenta,
				DATEADD(DAY, 1, @inFecha),
				DATEADD( DAY, -1, DATEADD(MONTH, @DifMeses, @FechaCreacion)),
				@SaldoActual,
				@SaldoActual,
				GETDATE(),
				'Script',
				'186.176.102.189')
		-----------------------Habrir nuevo estado cuenta--------------------------
	END TRY
	BEGIN CATCH
	END CATCH

SET NOCOUNT OFF
END
GO