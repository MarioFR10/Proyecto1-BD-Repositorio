ALTER PROCEDURE dbo.CerrarEstadoCuenta
	@inCuenta INT,
	@inEstadoCuenta INT,
	@inTipoCuenta INT,
	@inMinimo MONEY,
	@inFecha DATE
AS
BEGIN
SET NOCOUNT ON
	BEGIN TRY
		DECLARE @ATM INT,
				@Humano INT,
				@MaxHumano INT,
				@MaxATM INT,
				@SaldoMinimo INT,
				@MultaHumano INT,
				@MultaATM MONEY,
				@MultaSaldoMinimo MONEY,
				@monto MONEY,
				@Intereses FLOAT,
				@SaldoActual MONEY,
				@Descripcion VARCHAR(50),
				@FechaCreacion DATE,
				@DifMeses INT,
				@outResultCode INT = 0

		-----------------------Contar tramites--------------------------
		SELECT @ATM = COUNT(MCA.[TypeMovId])
		FROM [dbo].[Movement CA] MCA
		WHERE MCA.[SavingsAccountId] = @inCuenta AND MCA.[TypeMovId] = 2 AND MCA.[DateOfMov] <= @inFecha

		SELECT @Humano = COUNT(MCA.[TypeMovId])
		FROM [dbo].[Movement CA] MCA
		WHERE MCA.[SavingsAccountId] = @inCuenta AND MCA.[TypeMovId] = 3 AND MCA.[DateOfMov] <= @inFecha
		-----------------------Contar tramites--------------------------
		--SELECT 'cuentas' AS Contar

		SELECT @SaldoMinimo = TSA.[MinimunBalance]
		FROM [dbo].[TypeSavingsAccount] TSA
		WHERE TSA.Id = @inTipoCuenta

		SET @MultaHumano = 0
		SET @MultaATM = 0

		-----------------------Multa superar retiros ventana--------------------------
		SELECT @MultaHumano = TSA.[ExceedComisionHumanMont],
			   @MaxHumano = TSA.[MaxOpsHuman]
		FROM [dbo].[TypeSavingsAccount] TSA
		WHERE TSA.Id = @inTipoCuenta

		--SELECT @Humano as 'humano'
		--select @MaxHumano as 'maxhumano'
		--select @MultaHumano as 'multa humano'

		IF (@MaxHumano < @Humano)
			BEGIN
				SELECT @SaldoActual = SA.Balance
				FROM [dbo].[SavingsAccount] SA
				WHERE SA.Id = @inCuenta

				--select @SaldoActual as 'saldo actual'

				UPDATE [dbo].[SavingsAccount]
				SET Balance = @SaldoActual - @MultaHumano,
					InsertAt = GETDATE(),
					InsertBy = 'script',
					InsertIn = '186.176.102.189'
				WHERE [dbo].[SavingsAccount].Id = @inCuenta

				SELECT @Descripcion = TM.Name
				FROM [dbo].[TypeMovement CA] TM
				WHERE TM.Id = 8

				--SELECT @inCuenta,8, @inEstadoCuenta, @MultaHumano, @SaldoActual - @MultaHumano, @Descripcion, 1, @inFecha

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

		--SELECT @MultaATM as 'multaATM'

		SELECT @MultaATM = TSA.[ExceedComisionAtmMont],
			   @MaxATM = TSA.[MaxOpsAtm]
		FROM [dbo].[TypeSavingsAccount] TSA
		WHERE TSA.Id = @inTipoCuenta

		IF (@MaxATM < @ATM)
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

				--SELECT @inCuenta,9, @inEstadoCuenta, @MultaATM, @SaldoActual - @MultaATM, @Descripcion, 1, @inFecha

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

				SELECT @Descripcion = TM.Name
				FROM [dbo].[TypeMovement CA] TM
				WHERE TM.Id = 10

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
						@Descripcion,
						1,
						@inFecha)

			END
		-----------------------Multa incumplir saldo minimo--------------------------
		--SELECT 'Multas' AS Multas
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

		SELECT @Descripcion = TM.Name
		FROM [dbo].[TypeMovement CA] TM
		WHERE TM.Id = 11

		--SELECT @inCuenta,11,@inEstadoCuenta,@monto,	@SaldoActual - @monto,@Descripcion,1,@inFecha

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
				@Descripcion,
				1,
				@inFecha)
		-----------------------Cargo mensual--------------------------
		--SELECT 'cargo' as mensual
		-----------------------Intereses--------------------------
		SET @SaldoActual = @SaldoActual - @monto

		SELECT @Descripcion = TM.Name
		FROM [dbo].[TypeMovement CA] TM
		WHERE TM.Id = 7

		--SELECT @Descripcion

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
		--SELECT 'Intereses' as intereses
		-----------------------Cerrar estado de cuenta--------------------------
		SELECT @SaldoActual = SA.Balance
		FROM [dbo].[SavingsAccount] SA
		WHERE SA.Id = @inCuenta

		IF (@SaldoActual < 0)
			BEGIN
				UPDATE [dbo].[AccountStatement]
				SET [FinalBalance] = 0,
					[AtmOps] = @ATM,
					[HumOps] = @Humano
				WHERE [dbo].[AccountStatement].[Id] = @inEstadoCuenta AND [dbo].[AccountStatement].[EndDate] = @inFecha

				UPDATE [dbo].[SavingsAccount]
				SET [Balance] = 0
				WHERE [dbo].[SavingsAccount].Id = @inCuenta
			END
		ELSE
			BEGIN
				UPDATE [dbo].[AccountStatement]
				SET [FinalBalance] = @SaldoActual,
					[AtmOps] = @ATM,
					[HumOps] = @Humano
				WHERE [dbo].[AccountStatement].[Id] = @inEstadoCuenta AND [dbo].[AccountStatement].[EndDate] = @inFecha
			END
		-----------------------Cerrar estado de cuenta--------------------------
		--SELECT 'Cerrar' AS EstadoCuenta
		-----------------------Habrir nuevo estado cuenta--------------------------
		SELECT @FechaCreacion = SA.[CreationDate]
		FROM [dbo].[SavingsAccount] SA
		WHERE SA.Id = @inCuenta

		SET @DifMeses = DATEDIFF(MONTH, @FechaCreacion, @inFecha)

		--SELECT DAY(@inFecha)

		IF(DAY(@FechaCreacion) = 1)
			BEGIN
				SET @DifMeses = @DifMeses + 2
			END
		ELSE
			BEGIN
				SET @DifMeses = @DifMeses + 1
			END

		--SELECT @DifMeses as Diferencia

		INSERT [dbo].[AccountStatement] (SavingsAccountId,
									StartDate,
									EndDate,
									InitialBalance,
									FinalBalance,
									MinBalance,
									AtmOps,
									HumOps,
									InsertAt,
									InsertBy,
									InsertIn)
		VALUES (@inCuenta,
				DATEADD(DAY, 1, @inFecha),
				DATEADD( DAY, -1, DATEADD(MONTH, @DifMeses, @FechaCreacion)),
				@SaldoActual,
				@SaldoActual,
				@SaldoActual,
				0,
				0,
				GETDATE(),
				'Script',
				'186.176.102.189')
		-----------------------Habrir nuevo estado cuenta--------------------------
		--SELECT 'Abrir' AS Estado
	END TRY
	BEGIN CATCH
	END CATCH

SET NOCOUNT OFF
END
GO