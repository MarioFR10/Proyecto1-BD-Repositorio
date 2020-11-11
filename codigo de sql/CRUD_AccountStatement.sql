SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create AccountStatement
-- =============================================
CREATE PROCEDURE SP_Create_AccountStatement
(
    @inSavingsAccountNumber int = 0,
	@SavingsAccountId int,
	@inStartDate date = '', 
	@inEndDate date = '',
	@inInitialBalance money = 0,
	@inFinalBalance money = 0, 
	@outResultCode INT OUTPUT
)
AS
BEGIN

	IF exists( SELECT SA.Id FROM [dbo].[SavingsAccount] SA WHERE SA.AccountNumber = @inSavingsAccountNumber)
	BEGIN
		-- SET NOCOUNT ON added to prevent extra result sets from
		-- interfering with SELECT statements.
		SET NOCOUNT ON
			SET @SavingsAccountId = (SELECT SA.Id FROM [dbo].[SavingsAccount] SA WHERE SA.AccountNumber = @inSavingsAccountNumber)
			INSERT INTO [dbo].[AccountStatement]([SavingsAccountId],
												[StartDate], 
												[EndDate], 
												[InitialBalance], 
												[FinalBalance] )
					VALUES	(@SavingsAccountId, 
							@inStartDate, 
							@inEndDate, 
							@inInitialBalance, 
							@inFinalBalance)
		SET NOCOUNT OFF
	END;
	ELSE
		SET @outResultCode = 1 -- Codigo de error NO EXISTE EL ID DE LA CUENTA ASOCIADA
		SELECT @outResultCode
END	
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read AccountStatement
-- =============================================
CREATE PROCEDURE SP_Read_AccountStatement
(
    @inSavingsAccountNumber int,
	@SavingsAccountId int,
	@outResultCode INT OUTPUT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		IF exists( SELECT SA.Id FROM [dbo].[SavingsAccount] SA WHERE SA.AccountNumber = @inSavingsAccountNumber )
			BEGIN
				SET @SavingsAccountId = (SELECT SA.Id FROM [dbo].[SavingsAccount] SA WHERE SA.AccountNumber = @inSavingsAccountNumber)
				SELECT ACS.SavingsAccountId, ACS.StartDate, ACS.EndDate, ACS.InitialBalance, ACS.FinalBalance
				FROM [dbo].[AccountStatement] ACS
				WHERE ACS.Id = @SavingsAccountId
			END
		ELSE
			SET @outResultCode = 1 --Error algo salio mal
			SELECT @outResultCode
	SET NOCOUNT OFF
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update AccountStatement
-- =============================================
CREATE PROCEDURE SP_Update_AccountStatement
(
    @inId int = 0

)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		SELECT ACS.SavingsAccountId, ACS.StartDate, ACS.EndDate, ACS.InitialBalance, ACS.FinalBalance
		FROM [dbo].[AccountStatement] ACS
		WHERE ACS.Id = @inId
	SET NOCOUNT OFF
END
GO