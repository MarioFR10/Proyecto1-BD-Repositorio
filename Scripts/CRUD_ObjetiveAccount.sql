

/*
Edicion cuenta obj

Creacion

modificacion descripcion

desactivacion
*/

--Create

CREATE PROCEDURE dbo_SP_Create_ObjetiveAccount
(
    @AccountId INT,   --Mapeado en capa logica
	@inStartDate DATE,	--ingresa usuario
	@inEndDate DATE,	--ingresa usuario
	@inFee MONEY,		--ingresa usuario
	@inObjetive VARCHAR(50),   --ingresa usuario
	@inDaysOfDeposit VARCHAR(50)  --ingresa usuario  
)
AS
BEGIN
	SET NOCOUNT ON				--set nocount 
	BEGIN TRY
		DECLARE @outResultCode INT = 0
		IF exists( SELECT SA.Id FROM [dbo].[SavingsAccount] SA WHERE SA.Id = @AccountId )
		BEGIN	
				INSERT INTO [dbo].[ObjetiveAccount] ([SavingsAccountId],
													 [StartDate],
													 [EndDate],
													 [Fee],
													 [Objective],
													 [Balance],
													 [AcumInterest],
													 [DaysOfDeposit],
													 [Active])

											VALUES	(@AccountId, 
													 @inStartDate,
													 @inEndDate,
													 @inFee,
													 @inObjetive,
													 0,
													 0,
													 @inDaysOfDeposit,
													 1)
		END
		ELSE
			BEGIN 
				SET @outResultCode = 1 -- Codigo de error NO EXISTE EL ID DE LA CUENTA ASOCIADA
				SELECT @outResultCode
			END
	END TRY
	BEGIN CATCH
		SET @outResultCode = 1 -- Codigo de error NO EXISTE EL ID DE LA CUENTA ASOCIADA
		SELECT @outResultCode
	END CATCH
	SET NOCOUNT OFF				--set nocount 
END	
GO

--Update

CREATE PROCEDURE dbo_SP_Update_ObjectiveAccount
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
			END;
			ELSE
				BEGIN 
					SET @outResultCode = 1 -- Codigo de error NO EXISTE EL VALOR DE NUMERO DE IDENTIDAD
					SELECT @outResultCode
				END
		END TRY
		BEGIN CATCH
		END CATCH
	SET NOCOUNT OFF 
END	
GO

--Desactivar

CREATE PROCEDURE dbo_SP_Delete_ObjectiveAccount
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
			END;
			ELSE
				BEGIN 
					SET @outResultCode = 1 -- Codigo de error NO EXISTE LA CUENTA	
					SELECT @outResultCode
				END
		END TRY
		BEGIN CATCH
		END CATCH
	SET NOCOUNT OFF 
END	
GO

--Activar

CREATE PROCEDURE dbo_SP_Activate_ObjectiveAccount
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
				UPDATE [dbo].[ObjetiveAccount] SET [Active] = 1
				WHERE [dbo].[ObjetiveAccount].Id = @ObjectiveAccountId
			END;
			ELSE
				BEGIN 
					SET @outResultCode = 1 -- Codigo de error NO EXISTE LA CUENTA
					SELECT @outResultCode
				END
		END TRY
		BEGIN CATCH
		END CATCH
	SET NOCOUNT OFF 
END	
GO