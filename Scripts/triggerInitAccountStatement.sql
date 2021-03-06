ALTER TRIGGER [dbo].initAccountStatement ON [dbo].[SavingsAccount]
AFTER INSERT
--NOT FOR REPLICATION 
AS
BEGIN
	BEGIN TRY
		SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
		BEGIN TRANSACTION insertAccountStatement
			INSERT INTO [dbo].[AccountStatement](SavingsAccountId,
										StartDate,
										EndDate,
										InitialBalance,
										FinalBalance,
										MinBalance,
										ATMOps,
										HumOps,
										InsertAt,
										InsertBy,
										InsertIn)
			SELECT i.Id,
				   i.CreationDate,
				   DATEADD( DAY, -1, DATEADD(MONTH, 1, i.CreationDate)),
				   0,
				   0,
				   0,
				   0,
				   0,
				   GETDATE(),
				   'Script',
				   '186.176.102.189'

			FROM inserted AS i
		COMMIT TRANSACTION insertAccountStatement;
	END TRY

	BEGIN CATCH
		IF @@TRANCOUNT>0
			ROLLBACK TRANSACTION insertAccountStatement;

		INSERT INTO dbo.BE_DBErrors  VALUES (
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