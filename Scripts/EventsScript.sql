--------------------------------Benefactor--------------------------------------

----------------------Insert-------------------------

CREATE PROCEDURE insertBenefactor
(
	@inUsuario INT
)
AS
BEGIN
BEGIN TRY
		SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
		BEGIN TRANSACTION insertBenefactor
			INSERT INTO [dbo].[Event](TypeEventId,
									UserId,
									IP,
									eventDate,
									xmlBefore,
									xmlAfter)
			SELECT 1,
				   @inUsuario,
				   CONVERT(char(15), CONNECTIONPROPERTY('client_net_address')),
				   GETDATE(),
				   '',
				   (SELECT B.[Id],
					B.[RelationshipId],
					B.[PersonId],
					B.[SavingsAccountId],
					B.[Name],
					B.[Percentage],
					B.[Condition],
					B.[InsertAt],
					B.[InsertBy],
					B.[InsertIn]
					FROM Benefactor AS B
					WHERE B.Id = SCOPE_IDENTITY()
					FOR XML AUTO)
		COMMIT TRANSACTION insertBenefactor;
	END TRY

	BEGIN CATCH
		IF @@TRANCOUNT>0
			ROLLBACK TRANSACTION insertBenefactor;

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
END
GO
----------------------Insert-------------------------

----------------------Update-------------------------

CREATE PROCEDURE updateBenefactor(
	@inId INT,
	@inUsuario INT,
	@inPercentage INT
)
AS
BEGIN
	BEGIN TRY
		DECLARE @XMLAntes XML,
				@XMLDespues XML

		SET @XMLAntes = (SELECT B.[Id],
						B.[RelationshipId],
						B.[PersonId],
						B.[SavingsAccountId],
						B.[Name],
						B.[Percentage],
						B.[Condition],
						B.[InsertAt],
						B.[InsertBy],
						B.[InsertIn]
						FROM Benefactor AS B
						WHERE B.Id = @inId
						FOR XML AUTO)

		BEGIN TRANSACTION updateBenefactor
			EXEC  SP_Update_Benefactor @inId, @inPercentage       -- se hace el update
			--UpdateBenefactor
			SET @XMLDespues = (SELECT B.[Id],
								B.[RelationshipId],
								B.[PersonId],
								B.[SavingsAccountId],
								B.[Name],
								B.[Percentage],
								B.[Condition],
								B.[InsertAt],
								B.[InsertBy],
								B.[InsertIn]
								FROM Benefactor AS B
								WHERE B.Id = @inId
								FOR XML AUTO)

			INSERT INTO [dbo].[Event](TypeEventId,
									UserId,
									IP,
									eventDate,
									xmlBefore,
									xmlAfter)
			SELECT 2,
				   @inUsuario,
				   CONVERT(char(15), CONNECTIONPROPERTY('client_net_address')),
				   GETDATE(),
				   @XMLAntes,
				   @XMLDespues
		COMMIT TRANSACTION updateBenefactor;
	END TRY

	BEGIN CATCH
		IF @@TRANCOUNT>0
			ROLLBACK TRANSACTION updateBenefactor;

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

END
GO
----------------------Update-------------------------

----------------------Delete-------------------------

CREATE PROCEDURE deleteBenefactor(
	@inId INT,
	@inUsuario INT
)
AS 
BEGIN
	BEGIN TRY
		DECLARE @XMLAntes XML,
				@XMLDespues XML

		SET @XMLAntes = (SELECT B.[Id],
						B.[RelationshipId],
						B.[PersonId],
						B.[SavingsAccountId],
						B.[Name],
						B.[Percentage],
						B.[Condition],
						B.[InsertAt],
						B.[InsertBy],
						B.[InsertIn]
						FROM Benefactor AS B
						WHERE B.Id = @inId
						FOR XML AUTO)

		BEGIN TRANSACTION deleteBenefactor
			EXEC SP_Delete_Benefactor @inId
			--DeleteBenefactor(UpdateBenefactor)
			SET @XMLDespues = (SELECT B.[Id],
								B.[RelationshipId],
								B.[PersonId],
								B.[SavingsAccountId],
								B.[Name],
								B.[Percentage],
								B.[Condition],
								B.[InsertAt],
								B.[InsertBy],
								B.[InsertIn]
								FROM Benefactor AS B
								WHERE B.Id = @inId
								FOR XML AUTO)

			INSERT INTO [dbo].[Event](TypeEventId,
									UserId,
									IP,
									eventDate,
									xmlBefore,
									xmlAfter)
			SELECT 3,
				   @inUsuario,
				   CONVERT(char(15), CONNECTIONPROPERTY('client_net_address')),
				   GETDATE(),
				   @XMLAntes,
				   @XMLDespues
		COMMIT TRANSACTION deleteBenefactor;
	END TRY

	BEGIN CATCH
		IF @@TRANCOUNT>0
			ROLLBACK TRANSACTION deleteBenefactor;

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
END
GO
----------------------Delete-------------------------

--------------------------------Benefactor--------------------------------------




--------------------------------Cuenta objetivo--------------------------------------
----------------------Insert-------------------------
CREATE PROCEDURE insertCO
(
	@inUsuario INT
)
AS
BEGIN
	BEGIN TRY
		SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
		BEGIN TRANSACTION insertCO
			INSERT INTO [dbo].[Event](TypeEventId,
									UserId,
									IP,
									eventDate,
									xmlBefore,
									xmlAfter)
			SELECT 4,
				   @inUsuario,
				   CONVERT(char(15), CONNECTIONPROPERTY('client_net_address')),
				   GETDATE(),
				   '',
				   (SELECT CO.[Id],
					CO.[SavingsAccountId],
					CO.[StartDate],
					CO.[EndDate],
					CO.[Fee],
					CO.[Objective],
					CO.[Balance],
					CO.[AcumInterest],
					CO.[DaysOfDeposit],
					CO.[Active]
					FROM ObjetiveAccount AS CO
					WHERE CO.Id = SCOPE_IDENTITY()
					FOR XML AUTO)
		COMMIT TRANSACTION insertCO;
	END TRY

	BEGIN CATCH
		IF @@TRANCOUNT>0
			ROLLBACK TRANSACTION insertCO;

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

END
GO
----------------------Insert-------------------------

----------------------Update-------------------------

CREATE PROCEDURE updateCO
(
@inId INT,
@inUsuario INT,
@inDescripcion VARCHAR(50)
)
AS
BEGIN
	BEGIN TRY
		DECLARE @XMLAntes XML,
				@XMLDespues XML

		SET @XMLAntes = (SELECT CO.[Id],
					CO.[SavingsAccountId],
					CO.[StartDate],
					CO.[EndDate],
					CO.[Fee],
					CO.[Objective],
					CO.[Balance],
					CO.[AcumInterest],
					CO.[DaysOfDeposit],
					CO.[Active]
					FROM ObjetiveAccount AS CO
					WHERE CO.Id = @inId
					FOR XML AUTO)

		BEGIN TRANSACTION updateCO
			EXEC dbo_SP_Update_ObjectiveAccount @inId, @inDescripcion
			--UpdateCO
			SET @XMLDespues = (SELECT B.[Id],
								B.[RelationshipId],
								B.[PersonId],
								B.[SavingsAccountId],
								B.[Name],
								B.[Percentage],
								B.[Condition],
								B.[InsertAt],
								B.[InsertBy],
								B.[InsertIn]
								FROM Benefactor AS B
								WHERE B.Id = @inId
								FOR XML AUTO)

			INSERT INTO [dbo].[Event](TypeEventId,
									UserId,
									IP,
									eventDate,
									xmlBefore,
									xmlAfter)
			SELECT 5,
				   @inUsuario,
				   CONVERT(char(15), CONNECTIONPROPERTY('client_net_address')),
				   GETDATE(),
				   @XMLAntes,
				   @XMLDespues
		COMMIT TRANSACTION updateBenefactor;
	END TRY

	BEGIN CATCH
		IF @@TRANCOUNT>0
			ROLLBACK TRANSACTION updateBenefactor;

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

END
GO

----------------------Update-------------------------

----------------------Delete-------------------------
CREATE PROCEDURE deleteCO
(
@inId INT,
@inUsuario INT
)
AS 
BEGIN
	BEGIN TRY
		DECLARE @XMLAntes XML,
				@XMLDespues XML

		SET @XMLAntes = (SELECT CO.[Id],
						CO.[SavingsAccountId],
						CO.[StartDate],
						CO.[EndDate],
						CO.[Fee],
						CO.[Objective],
						CO.[Balance],
						CO.[AcumInterest],
						CO.[DaysOfDeposit],
						CO.[Active]
						FROM ObjetiveAccount AS CO
						WHERE CO.Id = @inId
						FOR XML AUTO)

		BEGIN TRANSACTION deleteCO
			EXEC dbo_SP_Delete_ObjectiveAccount @inId
			--DeleteCO
			SET @XMLDespues = (SELECT CO.[Id],
							CO.[SavingsAccountId],
							CO.[StartDate],
							CO.[EndDate],
							CO.[Fee],
							CO.[Objective],
							CO.[Balance],
							CO.[AcumInterest],
							CO.[DaysOfDeposit],
							CO.[Active]
							FROM ObjetiveAccount AS CO
							WHERE CO.Id = @inId
							FOR XML AUTO)

			INSERT INTO [dbo].[Event](TypeEventId,
									UserId,
									IP,
									eventDate,
									xmlBefore,
									xmlAfter)
			SELECT 6,
				   @inUsuario,
				   CONVERT(char(15), CONNECTIONPROPERTY('client_net_address')),
				   GETDATE(),
				   @XMLAntes,
				   @XMLDespues
		COMMIT TRANSACTION deleteBenefactor;
	END TRY

	BEGIN CATCH
		IF @@TRANCOUNT>0
			ROLLBACK TRANSACTION deleteBenefactor;

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
END
GO
----------------------Delete-------------------------
--------------------------------Cuenta objetivo--------------------------------------