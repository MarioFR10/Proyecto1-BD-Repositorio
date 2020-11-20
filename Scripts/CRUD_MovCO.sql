SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create MovCO
-- =============================================
CREATE PROCEDURE SP_Create_MovCO
(
    @inTypeMovCO int = 0,
	@inObjetiveAccountId int = 0, 
	@inDateOfMovCO date = '', 
	@inFee money = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		INSERT INTO [dbo].[Mov CO](TypeMovCO, 
								   ObjectiveAccountId, 
								   DateOfMovCO, 
								   Fee)
		VALUES (@inTypeMovCO, 
				@inObjetiveAccountId,
				@inDateOfMovCO,
				@inFee)
	SET NOCOUNT OFF
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read MovCO
-- =============================================
CREATE PROCEDURE SP_Read_MovCO
(
    @inId int = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		SELECT MO.TypeMovCO, MO.ObjectiveAccountId, MO.DateOfMovCO, MO.Fee
		FROM [dbo].[Mov CO] MO
		WHERE MO.Id = @inId
	SET NOCOUNT OFF
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update MovCO
-- =============================================
CREATE PROCEDURE SP_Update_MovCO
(
    @inId int = 0, 
	@inDateOfMov date = '',
	@inFee money = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		UPDATE [dbo].[Mov CO] SET DateOfMovCO = @inDateOfMov, Fee = @inFee
		WHERE [dbo].[Mov CO].Id = @inId
	SET NOCOUNT OFF
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Delete MovCO
-- =============================================
CREATE PROCEDURE SP_Delete_MovCO
(
    @inId int = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		DELETE FROM [dbo].[Mov CO]
		WHERE [dbo].[Mov CO].Id = @inId
	SET NOCOUNT OFF
END
GO


