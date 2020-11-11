SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create Benefactor 
-- =============================================

ALTER PROCEDURE SP_Create_Benefactor
(
    @inAccountNumber int, 
	@inValueId int, 
	@inRelationshipId int, 
	@inPercentaje int,
	@outResultCode INT OUTPUT
)
AS
BEGIN

	IF exists( SELECT RL.Id FROM [dbo].[Relationship] RL WHERE RL.Id = @inRelationshipId )
	BEGIN
		IF exists ( SELECT PR.Id FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueId )
			BEGIN
				IF exists (SELECT SA.Id FROM [dbo].[SavingsAccount] SA WHERE SA.AccountNumber = @inAccountNumber)
					BEGIN
					-- SET NOCOUNT ON added to prevent extra result sets from
					-- interfering with SELECT statements.
					SET NOCOUNT ON
						DECLARE @PersonId INT 
						DECLARE @BenefactorName varchar(100)
						DECLARE @AccountId INT 
						SET @PersonId = (SELECT PR.Id FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueId)
						SET @BenefactorName = (SELECT PR.Name FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueId )
						SET @AccountId = ( SELECT SA.Id FROM [dbo].[SavingsAccount] SA WHERE SA.AccountNumber = @inAccountNumber ) 
						INSERT INTO [dbo].[Benefactor] ( RelationshipId, PersonId, SavingsAccountId, Name, Percentage, Condition)
								VALUES	(@inRelationshipId,
										 @PersonId,
										 @AccountId, 
										 @BenefactorName,
										 @inPercentaje,
										 0)
					SET NOCOUNT OFF
					END;
					ELSE
						BEGIN 
							SET @outResultCode = 3 -- Codigo de error NO EXISTE EL NUMERO DE CUENTA ASOCIADO
							SELECT @outResultCode
						END
			END;
			ELSE
				BEGIN 
					SET @outResultCode = 2 -- Codigo de error NO EXISTE EL NUMERO DE PERSONA ASOCIADO
					SELECT @outResultCode
				END
	END;
	ELSE
		BEGIN 
			SET @outResultCode = 1 -- Codigo de error NO EXISTE EL ID DEL TIPO DE PARENTEZCO ASOCIADO
			SELECT @outResultCode
		END
END	
GO


-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read Benefactor 
-- =============================================

ALTER PROCEDURE SP_Read_Benefactor
(
	@inValueId int
)
AS
BEGIN
	DECLARE @PersonId int
	DECLARE @outResultCode INT = 0

	IF exists( SELECT PR.Id FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueId )
	BEGIN
		SELECT @PersonId = PR.Id FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueId

		SELECT PR.Name, PR.TypeDocId, PR.DateOfBirth, PR.Email, PR.Phone1, PR.Phone2
		FROM [dbo].[Person] PR
		WHERE PR.Id = @PersonId
	END;
	ELSE
		BEGIN 
			SET @outResultCode = 1 -- Codigo de error NO EXISTE EL VALOR DE NUMERO DE IDENTIDAD
			SELECT @outResultCode
		END
END	
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update Benefactor 
-- =============================================

ALTER PROCEDURE SP_Update_Benefactor
(
	@inValueId int,
	@inPercentaje int
)
AS
BEGIN
	DECLARE @PersonId int 
	DECLARE @outResultCode INT = 0
	IF exists( SELECT PR.Id FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueId )
	BEGIN
		SELECT @PersonId = PR.Id FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueId
		
		UPDATE [dbo].[Benefactor] SET [Percentage] = @inPercentaje
		WHERE [dbo].[Benefactor].PersonId = @PersonId
	END;
	ELSE
		BEGIN 
			SET @outResultCode = 1 -- Codigo de error NO EXISTE EL VALOR DE NUMERO DE IDENTIDAD
			SELECT @outResultCode
		END
END	
GO


-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Delete Benefactor 
-- =============================================

ALTER PROCEDURE SP_Delete_Benefactor
(
	@inValueId int
)
AS
BEGIN
	DECLARE @PersonId int
	DECLARE @outResultCode INT = 0 

	IF exists( SELECT PR.Id FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueId )
	BEGIN
		SELECT @PersonId = PR.Id FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueId
		
		UPDATE [dbo].[Benefactor] SET [Condition] = 1
		WHERE [dbo].[Benefactor].PersonId = @PersonId
	END;
	ELSE
		BEGIN 
			SET @outResultCode = 1 -- Codigo de error NO EXISTE EL VALOR DE NUMERO DE IDENTIDAD
			SELECT @outResultCode
		END
END	
GO
