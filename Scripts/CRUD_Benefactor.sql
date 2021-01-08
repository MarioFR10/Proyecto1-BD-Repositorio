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
    @AccountId VARCHAR, 
	@inValueDocIden VARCHAR(50), 
	@inRelationshipId INT, 
	@inPercentaje INT,
	@inUsuario INT
)
AS
BEGIN
	DECLARE @outResultCode INT = 0

	IF exists( SELECT RL.Id FROM [dbo].[Relationship] RL WHERE RL.Id = @inRelationshipId )
	BEGIN
		IF exists ( SELECT PR.Id FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueDocIden )
			BEGIN
					-- SET NOCOUNT ON added to prevent extra result sets from
					-- interfering with SELECT statements.
					SET NOCOUNT ON
						DECLARE @PersonId INT
						DECLARE @BenefactorName varchar(100)
						SET @PersonId = (SELECT PR.Id FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueDocIden)
						SET @BenefactorName = (SELECT PR.Name FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueDocIden )
						INSERT INTO [dbo].[Benefactor] ( RelationshipId, PersonId, SavingsAccountId, [Name], [Percentage], Condition)
								VALUES	(@inRelationshipId,
										 @PersonId,
										 @AccountId, 
										 @BenefactorName,
										 @inPercentaje,
										 1)
						SELECT @outResultCode

						EXECUTE insertarBenefactor @inUsuario

					SET NOCOUNT OFF
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
	@beneId INT,
	@inPercentaje INT
)
AS
BEGIN
	DECLARE @outResultCode INT = 0
	IF exists( SELECT BN.Id FROM [dbo].[Benefactor] BN WHERE BN.Id = @beneId )
	BEGIN
		UPDATE [dbo].[Benefactor] SET [Percentage] = @inPercentaje
		WHERE [dbo].[Benefactor].Id = @beneId
		--hacer verificacion de los porcentajes
		SELECT @outResultCode
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
	@beneId int
)
AS
BEGIN
	DECLARE @outResultCode INT = 0 

	IF exists( SELECT BN.Id FROM [dbo].[Benefactor] BN WHERE BN.Id = @beneId )
	BEGIN
	
		UPDATE [dbo].[Benefactor] SET [Condition] = 0
		WHERE [dbo].[Benefactor].Id = @beneId

		SELECT @outResultCode
	END;
	ELSE
		BEGIN 
			SET @outResultCode = 2 -- Codigo de error NO EXISTE EL VALOR DE NUMERO DE IDENTIDAD
			SELECT @outResultCode
		END
END	
GO


