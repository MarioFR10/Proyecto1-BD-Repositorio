ALTER PROCEDURE dbo.interesDiarioCO(
	@inCOID INT,
	@inBalance MONEY,
	@inAcumInterest FLOAT,
	@inOperationDay DATE
)
AS
BEGIN
SET NOCOUNT ON
	BEGIN TRY

		SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
		BEGIN TRANSACTION interesDiario
		IF EXISTS(SELECT 1 FROM [dbo].[Mov CO Interest] MI WHERE MI.[ObjectiveAccountId] = @inCOID)
			BEGIN
				UPDATE [dbo].[Mov CO Interest]
				SET [NewAcumInterest] = [NewAcumInterest] + (@inBalance*(@inAcumInterest/365)),
					[Fee] = (@inBalance*(@inAcumInterest/365))
				WHERE [dbo].[Mov CO Interest].[ObjectiveAccountId] = @inCOID
			END
		ELSE
			BEGIN
				DECLARE @cuota FLOAT
				SET @cuota = (@inBalance*(@inAcumInterest/365))

				INSERT INTO [dbo].[Mov CO Interest]([ObjectiveAccountId],
													[DateOfMovCOinterest],
													[Fee],
													[NewAcumInterest])
				VALUES(@inCOID,
					   @inOperationDay,
					   @cuota,
					   @cuota)
			END

		COMMIT TRANSACTION interesDiario;
	END TRY

	BEGIN CATCH
		IF @@TRANCOUNT>0
				ROLLBACK TRANSACTION interesDiario

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


--EXEC dbo.interesDiarioCO 

--SELECT * FROM [dbo].[BE_Errors]
--SELECT * FROM [dbo].[Mov CO Interest]
--SELECT * FROM [dbo].[ObjetiveAccount]
