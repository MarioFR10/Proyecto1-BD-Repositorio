ALTER TRIGGER [dbo].UpdateBalance ON [dbo].[Movement CA]
AFTER INSERT
--NOT FOR REPLICATION 
AS
BEGIN
	UPDATE [dbo].[SavingsAccount]
	SET Balance = i.NewBalance,
		InsertAt = GETDATE(),
		InsertBy = 'script',
		InsertIn = '186.176.102.189'
	FROM inserted AS i
	WHERE i.SavingsAccountId = [dbo].[SavingsAccount].Id
END