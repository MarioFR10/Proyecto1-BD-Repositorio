SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create TypeMovCO
-- =============================================
CREATE PROCEDURE SP_Create_TypeMovCO
(
    @inName varchar(100) = ''
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		INSERT INTO TypeMovCO(Name)
		VALUES(@inName)
	SET NOCOUNT OFF
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read TypeMovCO
-- =============================================
CREATE PROCEDURE SP_Read_TypeMovCO
(
    @inID int = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		SELECT TM.Name
		FROM dbo.TypeMovCO TM
		WHERE TM.Id = @inID
	SET NOCOUNT OFF
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update TypeMovCO
-- =============================================
CREATE PROCEDURE SP_Update_TypeMovCO
(
    @inID int = 0,
	@inName varchar(100) = ''
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		UPDATE dbo.TypeMovCO SET Name =  @inName
		WHERE dbo.TypeMovCO.Id = @inID
	SET NOCOUNT OFF
END
GO


-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Delete TypeMovCO
-- =============================================
CREATE PROCEDURE SP_Delete_TypeMovCO
(
    @inID int = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		DELETE FROM dbo.TypeMovCO
		WHERE dbo.TypeMovCO.Id = @inID
	SET NOCOUNT OFF
END
GO
