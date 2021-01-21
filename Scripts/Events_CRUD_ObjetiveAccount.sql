--Create objetive Account con Events

ALTER PROCEDURE [dbo].[dbo_SP_Create_ObjetiveAccount]
(
    @AccountId INT,   --Mapeado en capa logica
	@inStartDate DATE,	--ingresa usuario
	@inEndDate DATE,	--ingresa usuario
	@inFee MONEY,		--ingresa usuario
	@inObjetive VARCHAR(50),   --ingresa usuario
	@inDaysOfDeposit INT,  --ingresa usuario 
	@inUser INT
)
AS
BEGIN
	SET NOCOUNT ON 
	BEGIN TRY
		DECLARE @outResultCode INT = 0
		IF exists( SELECT SA.Id FROM [dbo].[SavingsAccount] SA WHERE SA.Id = @AccountId )
			BEGIN
				DECLARE 
						@numeroCuenta INT

					SELECT @numeroCuenta = MAX([dbo].[ObjetiveAccount].OANumber) + 1
					FROM [dbo].[ObjetiveAccount] 

				INSERT INTO [dbo].[ObjetiveAccount] ([SavingsAccountId],
													 [StartDate],
													 [EndDate],
													 [Fee],
													 [Objective],
													 [Balance],
													 [AcumInterest],
													 [DaysOfDeposit],
													 [OANumber],
													 [Active])

											VALUES	(@AccountId, 
													 @inStartDate,
													 @inEndDate,
													 @inFee,
													 @inObjetive,
													 0,
													 0.0,
													 @inDaysOfDeposit,
													 @numeroCuenta,
													 1)
				SELECT @outResultCode
				EXECUTE insertarCO @inUser
			END

		ELSE
			BEGIN 
				SET @outResultCode = 1 -- Codigo de error NO EXISTE EL ID DE LA CUENTA ASOCIADA
				SELECT @outResultCode AS ERROR
			END
	END TRY
	BEGIN CATCH
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
	SET NOCOUNT OFF				--set nocount 
END	


--Update
ALTER PROCEDURE [dbo].[dbo_SP_Update_ObjectiveAccount]
(
	@ObjectiveAccountId INT,
	@inDescription VARCHAR(50)
)
AS
BEGIN
	SET NOCOUNT ON
		BEGIN TRY
			DECLARE @outResultCode INT = 0
			IF exists( SELECT OA.Id FROM [dbo].[ObjetiveAccount] OA WHERE OA.Id = @ObjectiveAccountId )
			BEGIN
				UPDATE [dbo].[ObjetiveAccount] SET [Objective] = @inDescription
				WHERE [dbo].[ObjetiveAccount].Id = @ObjectiveAccountId
				SELECT @outResultCode
			END;
			ELSE
				BEGIN 
					SET @outResultCode = 1 -- Codigo de error NO EXISTE EL VALOR DE NUMERO DE IDENTIDAD
					SELECT @outResultCode
				END
		END TRY
		BEGIN CATCH
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


--Desactivar

ALTER PROCEDURE [dbo].[dbo_SP_Delete_ObjectiveAccount]
(
	@ObjectiveAccountId INT
)
AS
BEGIN
	SET NOCOUNT ON
		BEGIN TRY
			DECLARE @outResultCode INT = 0
			IF exists( SELECT OA.Id FROM [dbo].[ObjetiveAccount] OA WHERE OA.Id = @ObjectiveAccountId )
			BEGIN
				UPDATE [dbo].[ObjetiveAccount] SET [Active] = 0
				WHERE [dbo].[ObjetiveAccount].Id = @ObjectiveAccountId
				SELECT @outResultCode
			END;
			ELSE
				BEGIN 
					SET @outResultCode = 1 -- Codigo de error NO EXISTE LA CUENTA OBJETIVO
					SELECT @outResultCode
				END
		END TRY
		BEGIN CATCH
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


--Read
ALTER PROCEDURE [dbo].[dbo_SP_Read_ObjectiveAccount]
(
	@SavingsAccountId INT
)
AS
BEGIN
	SET NOCOUNT ON
		BEGIN TRY
			DECLARE @outResultCode INT = 0
			IF exists( SELECT OA.Id FROM [dbo].[ObjetiveAccount] OA WHERE OA.SavingsAccountId = @SavingsAccountId )
			BEGIN
				SELECT OA.Id, 
					   OA.SavingsAccountId,
					   OA.StartDate,
					   OA.EndDate,
					   OA.Fee,
					   OA.Objective,
					   OA.Balance,
					   OA.AcumInterest,
					   OA.DaysOfDeposit
				FROM [dbo].[ObjetiveAccount] OA
				WHERE OA.SavingsAccountId = @SavingsAccountId AND OA.Active = 1
			END;
			ELSE
				BEGIN 
					SET @outResultCode = 1 -- Codigo de error NO EXISTE LA CUENTA OBJETIVO
				END
		END TRY
		BEGIN CATCH
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