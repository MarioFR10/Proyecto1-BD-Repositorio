SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create Coin
-- =============================================
ALTER PROCEDURE SP_Create_Coin
(
    @Name varchar(50) = ''
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		INSERT INTO Coin(Name)
		VALUES(@Name)
	SET NOCOUNT OFF
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read Coin
-- =============================================
ALTER PROCEDURE SP_Read_Coin
(
	@inIdCoin int = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		SELECT CO.Name
		FROM dbo.Coin CO 
		WHERE CO.Id = @inIdCoin
	SET NOCOUNT OFF
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update Coin
-- =============================================
ALTER PROCEDURE SP_Update_Coin
(
	@inIdCoin int = 0,
	@inName varchar(50) = ''
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		UPDATE dbo.Coin SET Name = @inName
		WHERE dbo.Coin.Id = @inIdCoin
	SET NOCOUNT OFF
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Delete Coin
-- =============================================
ALTER PROCEDURE SP_Delete_Coin
(
	@inIdCoin int = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		DELETE FROM dbo.Coin
		WHERE dbo.Coin.Id = @inIdCoin
	SET NOCOUNT OFF
END
GO

