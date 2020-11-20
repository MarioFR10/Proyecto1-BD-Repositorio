
/*

Procedimiento para Login mediante nombre de usuario y pass

*/

ALTER PROCEDURE SP_Login 
(
	@inUserName varchar(50), 
	@inPass varchar(50)
)
AS
BEGIN
	DECLARE @outPutError int = 0
	SET NOCOUNT ON
		IF exists( SELECT US.Id FROM [dbo].[User] US WHERE  US.UserName = @inUserName and US.[Password] = @inPass)
			BEGIN
				SELECT US.Id FROM [dbo].[User] US WHERE US.UserName = @inUserName and US.[Password] = @inPass
			END
		ELSE
			BEGIN
				SET @outPutError = -1
				SELECT @outPutError
			END
	SET NOCOUNT OFF

END
GO


/*

Procedimiento para listar la cuentas eque un usuario puede accesar
mediante su nombre de usuario

*/

ALTER PROCEDURE SP_GetUseCanAccess
(
	@UserId VARCHAR(50)
)
AS
BEGIN
	SET NOCOUNT ON
		DECLARE 
				@Idaccount int

		DECLARE @TempAccount TABLE(Sec int identity(1,1),
									valor int
									)
		INSERT INTO @TempAccount(valor)
		SELECT UC.SavingsAccountId 
		FROM [dbo].[UserCanAccess] UC 
		WHERE UC.UserId = @UserId

		DECLARE
				@lo int,
				@hi int

		SELECT @lo = MIN(Sec), @hi = MAX(Sec)
		FROM @TempAccount

		DECLARE @nuevaTemp TABLE(Sec int identity(1,1),
								 Id int, 
								 NameType varchar(50),
								 NamePerson varchar(50),
								 balance money, 
								 fecha date,
								 accountNum varchar(50))
	
		WHILE @lo <= @hi
		BEGIN
		
			SELECT @Idaccount = A.valor
			FROM @TempAccount A
			WHERE A.Sec = @lo
			INSERT INTO @nuevaTemp(Id, 
								   NameType,
								   NamePerson,
								   balance, 
								   fecha,
								   accountNum)
			SELECT SA.Id,
				   TS.[Name], 
				   PE.[Name], 
				   SA.Balance, 
				   SA.CreationDate, 
				   SA.AccountNumber
			FROM [dbo].[SavingsAccount] SA
			INNER JOIN [dbo].[TypeSavingsAccount] TS ON TS.Id = SA.TypeSavingsAccountId
			INNER JOIN [dbo].[Person] PE ON PE.Id = SA.PersonId
			WHERE SA.Id = @Idaccount

			SET @lo = @lo+1
		END

		SELECT Id,
			   NameType,
			   NamePerson,
			   balance, 
			   fecha,
			   accountNum 
	    FROM @nuevaTemp
	SET NOCOUNT OFF
END 
GO

/*

Procedimiento para obtener los beneficiarios de una cuenta

*/

ALTER PROCEDURE SP_GetBenefactorsbyAccount
(
	@AccountId VARCHAR(50)
)
AS
BEGIN
	SET NOCOUNT ON
		DECLARE @TempBenefactor TABLE(Sec int identity(1,1),
									valor int)

		INSERT INTO @TempBenefactor(valor)
		SELECT BN.Id
		FROM [dbo].[Benefactor] BN
		WHERE BN.SavingsAccountId = @AccountId

			SELECT BN.Id,
				   RL.[Name], 
				   PE.[ValueDocIden], 
				   BN.SavingsAccountId, 
				   BN.[Name], 
				   BN.[Percentage]
			FROM [dbo].[Benefactor] BN
			INNER JOIN [dbo].[Relationship] RL ON RL.Id = BN.RelationshipId
			INNER JOIN [dbo].[Person] PE ON PE.Id = BN.PersonId
			WHERE BN.SavingsAccountId = @AccountId AND BN.Condition = 0

	SET NOCOUNT OFF
END 
GO

exec SP_GetBenefactorsbyAccount 37