ALTER PROCEDURE dbo.AdministradorDefuncion
AS
BEGIN
SET NOCOUNT ON
	BEGIN TRY
		DECLARE @TempDatosBeneficiarios TABLE (Sec INT IDENTITY(1,1),
												BeneficiarioId INT,
												PersonId INT,
												NombrePersona VARCHAR(100),
												NumeroCuenta VARCHAR(50),
												Balance MONEY)

		DECLARE @TempTotales TABLE(Sec INT IDENTITY(1,1),
									PersonId INT,
									NombreBenefactor VARCHAR(100),
									Balance MONEY,
									CuentaMayorBeneficio VARCHAR(50),
									CantCuentasAsociadas INT)

		DECLARE @TempOrdenada TABLE (Sec INT IDENTITY(1,1),
									 NombreBenefactor VARCHAR(100),
									 Balance MONEY,
									 CuentaMayorBeneficio VARCHAR(50),
									 CantCuentasAsociadas INT)

		DECLARE @persona INT,
				@minimo1 INT,
				@maximo1 INT,
				@minimo2 INT,
				@maximo2 INT,
				@balanceActual MONEY,
				@numeroCuentaActual VARCHAR(50),
				@beneficioActual MONEY,
				@nombre VARCHAR(100)

		INSERT INTO @TempDatosBeneficiarios (BeneficiarioId,
												PersonId,
												NombrePersona,
												NumeroCuenta,
												Balance)
		SELECT B.Id,
			   P.Id,
			   P.Name,
			   SA.[AccountNumber],
			   SA.[Balance]*(B.[Percentage]/100)
		FROM [dbo].[Benefactor] B
		INNER JOIN [dbo].[Person] P ON P.Id = B.[PersonId]
		INNER JOIN [dbo].[SavingsAccount] SA ON SA.Id = B.[SavingsAccountId]
		WHERE B.[Condition] = 1

		SELECT @minimo1 = MIN(TDB.Sec),
			   @maximo1 = MAX(TDB.Sec)
		FROM @TempDatosBeneficiarios TDB

		SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
		BEGIN TRANSACTION defuncion
			WHILE @minimo1 < @maximo1
				BEGIN
					SELECT @persona = TDB.PersonId,
						   @nombre = TDB.NombrePersona,
						   @beneficioActual = TDB.Balance
					FROM @TempDatosBeneficiarios TDB
					WHERE TDB.Sec = @minimo1

					IF EXISTS(SELECT * FROM @TempTotales TT WHERE TT.PersonId = @persona)
						BEGIN
							UPDATE @TempTotales
							SET Balance = Balance + @beneficioActual,
								CantCuentasAsociadas = CantCuentasAsociadas + 1
						END
					ELSE
						BEGIN
							SELECT @numeroCuentaActual = MAX(TDB.NumeroCuenta)
							FROM @TempDatosBeneficiarios TDB
							WHERE TDB.PersonId = @persona

							INSERT @TempTotales (PersonId,
												NombreBenefactor,
												Balance,
												CuentaMayorBeneficio,
												CantCuentasAsociadas)
							VALUES(@persona,
								   @nombre,
								   @beneficioActual,
								   @numeroCuentaActual,
								   1)
						END
					SET @minimo1 = @minimo1 + 1
				END
		COMMIT TRANSACTION defuncion;
	END TRY

	BEGIN CATCH
		IF @@TRANCOUNT>0
			ROLLBACK TRANSACTION defuncion;
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