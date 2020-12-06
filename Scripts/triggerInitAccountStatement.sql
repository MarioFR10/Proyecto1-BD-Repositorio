ALTER TRIGGER [dbo].initAccountStatement ON [dbo].[SavingsAccount]
AFTER INSERT
--NOT FOR REPLICATION 
AS
BEGIN
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
END