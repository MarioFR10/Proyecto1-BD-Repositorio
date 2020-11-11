/*
Depuracion de tablas


DELETE FROM [dbo].[Benefactor];
DBCC CHECKIDENT(Benefactor, RESEED, 0)
SELECT * FROM [dbo].[Benefactor]


DELETE FROM [dbo].[AccountStatement];
DBCC CHECKIDENT(AccountStatement, RESEED, 0)
SELECT * FROM [dbo].[AccountStatement]

DELETE FROM [dbo].[UserCanAccess];
DBCC CHECKIDENT([UserCanAccess], RESEED, 0)
SELECT * FROM [dbo].[UserCanAccess]


DELETE FROM [dbo].[User];
DBCC CHECKIDENT([User], RESEED, 0)
SELECT * FROM [dbo].[User]

DELETE FROM [dbo].[SavingsAccount];
DBCC CHECKIDENT(SavingsAccount, RESEED, 0)
SELECT * FROM [dbo].[SavingsAccount]


DELETE FROM [dbo].[TypeSavingsAccount];
SELECT * FROM [dbo].[TypeSavingsAccount]


DELETE FROM [dbo].[Coin];
SELECT * FROM [dbo].[Coin]

DELETE FROM [dbo].[Person];
DBCC CHECKIDENT(Person, RESEED, 0)
SELECT * FROM [dbo].[Person]

DELETE FROM [dbo].[Relationship];
SELECT * FROM [dbo].[Relationship]

DELETE FROM [dbo].[TypeDocIdentity];
SELECT * FROM [dbo].[TypeDocIdentity]

*/