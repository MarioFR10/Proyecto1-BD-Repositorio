SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create Person
-- =============================================

ALTER PROCEDURE SP_Create_Person
(
    @inTypeDocId int,
	@inName varchar(100), 
	@inValueDocIden int,
	@inDateOfBirth date, 
	@inEmail varchar(100),
	@inPhone1 varchar(20),
	@inPhone2 varchar(20)
)
AS
BEGIN
	DECLARE @outResultCode INT = 0 

	IF exists( SELECT TD.Id FROM [dbo].[TypeDocIdentity] TD WHERE TD.Id = @inTypeDocId)
	BEGIN
		-- SET NOCOUNT ON added to prevent extra result sets from
		-- interfering with SELECT statements.
		SET NOCOUNT ON
			DECLARE @TypeDocId INT 
			SET @TypeDocId = (SELECT TD.Id FROM [dbo].[TypeDocIdentity] TD WHERE TD.Id = @inTypeDocId)
			INSERT INTO [dbo].[Person] ( TypeDocId, Name, ValueDocIden, DateOfBirth, Email, Phone1, Phone2)
					VALUES	(@TypeDocId,
							 @inName, 
							 @inValueDocIden,
							 @inDateOfBirth, 
							 @inEmail,
							 @inPhone1,
							 @inPhone2)
		SET NOCOUNT OFF
	END;
	ELSE
		SET @outResultCode = 1 -- Codigo de error NO EXISTE EL ID DEL TIPO ASOCIADO
		SELECT @outResultCode
END	
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read Person
-- =============================================


ALTER PROCEDURE SP_Read_Person
(
    @inValueDocId int
)
AS
BEGIN
	DECLARE @outResultCode INT = 0 

	IF exists( SELECT PR.ValueDocIden FROM Person PR WHERE PR.ValueDocIden = @inValueDocId)
	BEGIN
		-- SET NOCOUNT ON added to prevent extra result sets from
		-- interfering with SELECT statements.
		SET NOCOUNT ON
			SELECT PR.Id, PR.TypeDocId, PR.Name, PR.ValueDocIden, PR.DateOfBirth, PR.Email, PR.Phone1, PR.Phone2
			FROM Person PR 
			WHERE PR.ValueDocIden = @inValueDocId
		SET NOCOUNT OFF
	END;
	ELSE
		BEGIN
			SET @outResultCode = 1 -- Codigo de error NO EXISTE EL NUMERO DE PERSONA ASOCIADO
			SELECT @outResultCode
		END
END	
GO


-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update Person
-- =============================================


ALTER PROCEDURE SP_Update_Person
(
    @inValueDocId int,
	@inNewEmail varchar(100), 
	@inNewPhone1 varchar(20),
	@inNewPhone2 varchar(20)
)
AS
BEGIN
	DECLARE @outResultCode INT = 0

	IF exists( SELECT PR.ValueDocIden FROM Person PR WHERE PR.ValueDocIden = @inValueDocId)
	BEGIN
		-- SET NOCOUNT ON added to prevent extra result sets from
		-- interfering with SELECT statements.
		SET NOCOUNT ON
			UPDATE Person SET Email = @inNewEmail, Phone1 = @inNewPhone1, Phone2 = @inNewPhone2
			WHERE ValueDocIden = @inValueDocId
		SET NOCOUNT OFF
	END;
	ELSE
		BEGIN
			SET @outResultCode = 1 -- Codigo de error NO EXISTE EL NUMERO DE PERSONA ASOCIADO
			SELECT @outResultCode
		END
END	
GO
