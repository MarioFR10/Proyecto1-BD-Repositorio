/*
Edicion cuenta obj

Creacion

modificacion descripcion

desactivacion

*/


select * from [dbo].[ObjetiveAccount]

delete from [dbo].[ObjetiveAccount]
DBCC CHECKIDENT(ObjetiveAccount, RESEED, 0)

exec dbo_SP_Create_ObjetiveAccount 4, '2020-11-23', '2020-11-23', 3, 'prueba', '14, 15, 16'

--Read
ALTER PROCEDURE dbo_SP_Read_ObjectiveAccount
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
			SET @outResultCode = 1 -- Codigo de error NO EXISTE LA CUENTA OBJETIVO
		END CATCH
	SET NOCOUNT OFF 
END	
GO

--Create

ALTER PROCEDURE dbo_SP_Create_ObjetiveAccount
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
													 0.0,
													 @inDaysOfDeposit,
													 1)
				SELECT @outResultCode
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

ALTER PROCEDURE dbo_SP_Update_ObjectiveAccount
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
		END CATCH
	SET NOCOUNT OFF 
END	
GO

--Desactivar

ALTER PROCEDURE dbo_SP_Delete_ObjectiveAccount
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
					SET @outResultCode = 1 -- Codigo de error NO EXISTE LA CUENTA OBJETIVO
					SELECT @outResultCode
		END CATCH
	SET NOCOUNT OFF 
END	
GO

--Activar

ALTER PROCEDURE dbo_SP_Activate_ObjectiveAccount
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


select * from [ObjetiveAccount]