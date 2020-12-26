CREATE TRIGGER [dbo].eventInsertBenefactor ON [dbo].[Benefactor]
AFTER INSERT
--NOT FOR REPLICATION 
AS
BEGIN
	BEGIN TRY
		SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
		BEGIN TRANSACTION insertEvent
			INSERT INTO [dbo].[Event](TypeEventId,
									UserId,
									IP,
									eventDate,
									xmlBefore,
									xmlAfter)
			SELECT 1,
				   1,
				   CONVERT(char(15), CONNECTIONPROPERTY('client_net_address')),
				   GETDATE(),
				   '',
				   (SELECT i.[Id],
					i.[RelationshipId],
					i.[PersonId],
					i.[SavingsAccountId],
					i.[Name],
					i.[Percentage],
					i.[Condition],
					i.[InsertAt],
					i.[InsertBy],
					i.[InsertIn]
					FROM inserted AS i
					FOR XML AUTO)
		COMMIT TRANSACTION insertEvent;
	END TRY

	BEGIN CATCH
		IF @@TRANCOUNT>0
			ROLLBACK TRANSACTION insertEvent;

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