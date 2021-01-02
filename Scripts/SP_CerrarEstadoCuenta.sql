ALTER PROCEDURE dbo.CerrarEstadoCuenta
	@inCuenta INT,
	@inEstadoCuenta INT,
	@inTipoCuenta INT,
	@inMinimo MONEY,
	@inFechaCreacion DATE,
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
				@DifMeses INT,
				@outResultCode INT = 0

		-----------------------Obtener tramites--------------------------
		SELECT @ATM = AC.[AtmOps],
			   @Humano = AC.[HumOps]
		FROM [dbo].[AccountStatement] AC
		WHERE (AC.SavingsAccountId = @inCuenta) 
			AND (AC.EndDate >= @inFecha)
		-----------------------Obtener tramites--------------------------

		SET @MultaHumano = 0
		SET @MultaATM = 0

		SELECT @SaldoMinimo = TSA.[MinimunBalance],
			   @MultaSaldoMinimo = TSA.[PenaltyForBreach],
			   @MultaHumano = TSA.[ExceedComisionHumanMont],
			   @MaxHumano = TSA.[MaxOpsHuman],
			   @MultaATM = TSA.[ExceedComisionAtmMont],
			   @MaxATM = TSA.[MaxOpsAtm],
			   @monto = TSA.[MensualAccountForService],
			   @Intereses = TSA.[InterestRate]
		FROM [dbo].[TypeSavingsAccount] TSA
		WHERE TSA.Id = @inTipoCuenta

		SELECT @SaldoActual = SA.Balance
		FROM [dbo].[SavingsAccount] SA
		WHERE SA.Id = @inCuenta
		
		SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
		BEGIN TRANSACTION CerrarYAbrir
			-----------------------Intereses--------------------------
			SELECT @Descripcion = TM.Name
			FROM [dbo].[TypeMovement CA] TM
			WHERE TM.Id = 7

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
					@inMinimo * ((@Intereses/100)/12),
					@SaldoActual + (@inMinimo * ((@Intereses/100)/12)),
					@Descripcion,
					1,
					@inFecha)

			UPDATE [dbo].[SavingsAccount]
			SET Balance = @SaldoActual + (@inMinimo * ((@Intereses/100)/12)),
				InsertAt = GETDATE(),
				InsertBy = 'script',
				InsertIn = '186.176.102.189'
			WHERE [dbo].[SavingsAccount].Id = @inCuenta

			SET @SaldoActual = @SaldoActual + (@inMinimo * ((@Intereses/100)/12))
			-----------------------Intereses--------------------------
			-----------------------Multa superar retiros ventana--------------------------
			IF (@MaxHumano < @Humano)
				BEGIN
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

					UPDATE [dbo].[SavingsAccount]
					SET Balance = @SaldoActual - @MultaHumano,
						InsertAt = GETDATE(),
						InsertBy = 'script',
						InsertIn = '186.176.102.189'
					WHERE [dbo].[SavingsAccount].Id = @inCuenta

					SET @SaldoActual = @SaldoActual - @MultaHumano
				END
			-----------------------Multa superar retiros ventana--------------------------
			-----------------------Multa superar retiros ATM--------------------------
			IF (@MaxATM < @ATM)
				BEGIN
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

					UPDATE [dbo].[SavingsAccount]
					SET Balance = @SaldoActual - @MultaATM,
						InsertAt = GETDATE(),
						InsertBy = 'script',
						InsertIn = '186.176.102.189'
					WHERE [dbo].[SavingsAccount].Id = @inCuenta

					SET @SaldoActual = @SaldoActual - @MultaATM
				END
			-----------------------Multa superar retiros ATM--------------------------
			-----------------------Multa incumplir saldo minimo--------------------------
			IF((@SaldoMinimo > @inMinimo)
				OR (@SaldoMinimo > @SaldoActual))
				BEGIN
					--SELECT @MultaSaldoMinimo = TSA.[PenaltyForBreach]
					--FROM [dbo].[TypeSavingsAccount] TSA
					--WHERE TSA.Id = @inTipoCuenta

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

					UPDATE [dbo].[SavingsAccount]
					SET Balance = @SaldoActual - @MultaSaldoMinimo,
						InsertAt = GETDATE(),
						InsertBy = 'script',
						InsertIn = '186.176.102.189'
					WHERE [dbo].[SavingsAccount].Id = @inCuenta

					SET @SaldoActual = @SaldoActual - @MultaSaldoMinimo
				END
			-----------------------Multa incumplir saldo minimo--------------------------
			-----------------------Cargo mensual--------------------------
			SELECT @Descripcion = TM.Name
			FROM [dbo].[TypeMovement CA] TM
			WHERE TM.Id = 11

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

			UPDATE [dbo].[SavingsAccount]
			SET Balance = @SaldoActual - @monto,
				InsertAt = GETDATE(),
				InsertBy = 'script',
				InsertIn = '186.176.102.189'
			WHERE [dbo].[SavingsAccount].Id = @inCuenta

			SET @SaldoActual = @SaldoActual - @monto
			-----------------------Cargo mensual--------------------------
			-----------------------Cerrar estado de cuenta--------------------------
			IF (@SaldoActual < 0)
				BEGIN
					UPDATE [dbo].[AccountStatement]
					SET [FinalBalance] = 0
					WHERE [dbo].[AccountStatement].[Id] = @inEstadoCuenta AND [dbo].[AccountStatement].[EndDate] = @inFecha

					UPDATE [dbo].[SavingsAccount]
					SET [Balance] = 0
					WHERE [dbo].[SavingsAccount].Id = @inCuenta
				END
			ELSE
				BEGIN
					UPDATE [dbo].[AccountStatement]
					SET [FinalBalance] = @SaldoActual
					WHERE [dbo].[AccountStatement].[Id] = @inEstadoCuenta AND [dbo].[AccountStatement].[EndDate] = @inFecha
				END
			-----------------------Cerrar estado de cuenta--------------------------
			-----------------------Habrir nuevo estado cuenta--------------------------
			SET @DifMeses = DATEDIFF(MONTH, @inFechaCreacion, @inFecha)

			IF(DAY(@inFechaCreacion) = 1)
				BEGIN
					SET @DifMeses = @DifMeses + 2
				END
			ELSE
				BEGIN
					SET @DifMeses = @DifMeses + 1
				END

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
					DATEADD(DAY, -1, DATEADD(MONTH, @DifMeses, @inFechaCreacion)),
					@SaldoActual,
					@SaldoActual,
					@SaldoActual,
					0,
					0,
					GETDATE(),
					'Script',
					'186.176.102.189')
			-----------------------Habrir nuevo estado cuenta--------------------------
		COMMIT TRANSACTION CerrarYAbrir;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT>0
			ROLLBACK TRANSACTION CerrarYAbrir
		
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