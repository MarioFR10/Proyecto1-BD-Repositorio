ALTER PROCEDURE dbo.AdministradorExcesoATM
	@inFechaInicio DATE
AS
BEGIN
SET NOCOUNT ON
	BEGIN TRY
		DECLARE @TempExcesoRetiros TABLE (Sec INT IDENTITY(1,1),
										 CodigoCuenta VARCHAR(50),
										 PromedioRetiros FLOAT,
										 MesMayorRetiro INT,
										 AnioMayorRetiro INT)

		DECLARE @TempEstadosCuenta TABLE (Sec INT IDENTITY(1,1),
										  CuentaId INT,
										  TipoCuentaId INT,
										  RetirosATM INT,
										  EndDate DATE)

		DECLARE @codigoCuenta VARCHAR(50),
				@minimo1 INT,
				@maximo1 INT,
				@minimo2 INT,
				@maximo2 INT,
				@fechaParada DATE,
				@anioRevisado INT,
				@totalOps INT,
				@mesMasOps INT,
				@mesActual INT,
				@anioMasOps INT,
				@anioActual INT,
				@anioEstadoCuenta INT,
				@contadorExceso INT,
				@maxOps INT

		SELECT @minimo1 = MIN(SA.Id),
			   @maximo1 = MAX(SA.Id),
			   @fechaParada = MAX(M.DateOfMov)
		FROM [dbo].[SavingsAccount] SA,
			 [dbo].[Movement CA] M

		SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
		BEGIN TRANSACTION AdministradorB
			WHILE @minimo1 <= @maximo1
				BEGIN
					DELETE @TempEstadosCuenta

					SELECT @contadorExceso = COUNT(MCA.[TypeMovId])
					FROM [dbo].[Movement CA] MCA
					WHERE (MCA.[SavingsAccountId] = @minimo1)
						AND (MCA.[TypeMovId] = 9)
						AND (MCA.[DateOfMov] >= @inFechaInicio)

					SELECT @maxOps = TSA.MaxOpsAtm
					FROM [dbo].[TypeSavingsAccount] TSA,
						 [dbo].[SavingsAccount] SA
					WHERE (SA.Id = @minimo1)
						AND (SA.[TypeSavingsAccountId] = TSA.Id)

					IF(@maxOps >= @contadorExceso)
						BEGIN
							SET @minimo1 = @minimo1+1
						END
					ELSE
						BEGIN
							INSERT INTO @TempEstadosCuenta (CuentaId,
															TipoCuentaId,
															RetirosATM,
															EndDate)
							SELECT SA.Id,
								   SA.[TypeSavingsAccountId],
								   AC.[AtmOps],
								   AC.[EndDate]
							FROM [SavingsAccountId] SA
							INNER JOIN [dbo].[AccountStatement] AC ON AC.[SavingsAccountId] = SA.Id
							WHERE SA.Id = @minimo1

							SELECT @minimo2 = MIN(TEC.Sec),
								   @maximo2 = MAX(TEC.Sec),
								   @mesMasOps = 0,
								   @mesActual = 0,
								   @anioMasOps = 0,
								   @anioActual = 0,
								   @anioRevisado = YEAR(@inFechaInicio)
							FROM @TempEstadosCuenta TEC

							WHILE(@minimo2 <= @maximo2)
								BEGIN
									SELECT @mesActual = TEC.RetirosATM
									FROM @TempEstadosCuenta TEC
									WHERE TEC.Sec = @minimo2

									IF(@mesMasOps < @mesActual)
										BEGIN
											SET @mesMasOps = @mesActual
										END

									SELECT @anioEstadoCuenta = YEAR(TEC.EndDate)
									FROM @TempEstadosCuenta TEC
									WHERE TEC.Sec = @minimo2

									IF(@anioRevisado < @anioEstadoCuenta)
										BEGIN
											SELECT @anioRevisado = YEAR(TEC.EndDate),
												   @anioActual = TEC.RetirosATM
											FROM @TempEstadosCuenta TEC
											WHERE TEC.Sec = @minimo2
										END
									ELSE
										BEGIN
											SET @anioActual = @anioActual + @mesActual
										END

									IF (@anioMasOps < @anioActual)
										BEGIN
											SET @anioMasOps = @anioActual
										END

									SET @totalOps = @totalOps + @mesActual

									SET @minimo2 = @minimo2 + 1
								END
							SELECT @codigoCuenta = SA.[AccountNumber]
							FROM [dbo].[SavingsAccount] SA
							WHERE SA.[Id] = @minimo1

							INSERT @TempExcesoRetiros (CodigoCuenta,
														PromedioRetiros,
														MesMayorRetiro,
														AnioMayorRetiro)
							VALUES(@codigoCuenta,
									@totalOps/(1+DATEDIFF(MONTH,@inFechaInicio,@fechaParada)),
									@mesMasOps,
									@anioMasOps)

							SET @minimo1 = @minimo1+1
						END
				END
		COMMIT TRANSACTION AdministradorB;

		SELECT CodigoCuenta,
			   PromedioRetiros,
			   MesMayorRetiro,
			   AnioMayorRetiro
		FROM @TempExcesoRetiros
	END TRY

	BEGIN CATCH
		IF @@TRANCOUNT>0
			ROLLBACK TRANSACTION AdministradorB;
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
