CREATE TRIGGER [dbo].initAccountStatement ON [dbo].[SavingsAccount]
AFTER INSERT
--NOT FOR REPLICATION 
AS
BEGIN
	INSERT INTO [dbo].[AccountStatement](SavingsAccountId,
										StartDate,
										EndDate,
										InitialBalance,
										FinalBalance,
										InsertAt,
										InsertBy,
										InsertIn)
	SELECT I.SavingAccountId,
		   I.CreationDate,
		   DATEADD( DAY, -1, DATEADD(MONTH, 1, I.CreationDate)),
		   0,
		   0,
		   GETDATE(),
		   'Script',
		   '186.176.102.189'

	FROM inserted I
END