SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create AccountStatement
-- =============================================
ALTER PROCEDURE SP_Create_AccountStatement
(
    @SavingsAccountId int = 0,
	@inStartDate date = '', 
	@inEndDate date = '',
	@inInitialBalance money = 0,
	@inFinalBalance money = 0
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @outResultCode INT = 0
	IF exists( SELECT SA.Id FROM [dbo].[SavingsAccount] SA WHERE SA.Id = @SavingsAccountId)
	BEGIN
		-- SET NOCOUNT ON added to prevent extra result sets from
		-- interfering with SELECT statements.
		
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
		
	END;
	ELSE
		BEGIN
			SET @outResultCode = 1 -- Codigo de error NO EXISTE EL ID DE LA CUENTA ASOCIADA
			SELECT @outResultCode
		END
	SET NOCOUNT OFF
END	
GO



-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read AccountStatement
-- =============================================

ALTER PROCEDURE SP_Read_AccountStatement
(
    @SavingsAccountId int
)
AS
BEGIN
	DECLARE @outResultCode INT = 0

    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		IF exists( SELECT SA.Id FROM [dbo].[SavingsAccount] SA WHERE SA.Id = @SavingsAccountId )
			BEGIN
				SELECT TOP(8) 
					   ACS.SavingsAccountId,
					   ACS.StartDate,
					   ACS.EndDate,
					   ACS.InitialBalance,
					   ACS.FinalBalance
				FROM [dbo].[AccountStatement] ACS
				WHERE ACS.SavingsAccountId = @SavingsAccountId ORDER BY StartDate DESC
			END
		ELSE
			BEGIN
				SET @outResultCode = 1 --Error algo salio mal
				SELECT @outResultCode
			END
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
    @inId int
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
