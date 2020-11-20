SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create TypeMovCOInt
-- =============================================
CREATE PROCEDURE SP_Create_TypeMovCOInt
(
    @inName varchar(100) = ''
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		INSERT INTO TypeMovCOInt(Name)
		VALUES(@inName)
	SET NOCOUNT OFF
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read TypeMovCOInt
-- =============================================
CREATE PROCEDURE SP_Read_TypeMovCOInt
(
    @inID int = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		SELECT TMI.Name
		FROM dbo.TypeMovCOInt TMI
		WHERE TMI.Id = @inID
	SET NOCOUNT OFF
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update TypeMovCOInt
-- =============================================
CREATE PROCEDURE SP_Update_TypeMovCOInt
(
    @inID int = 0,
	@inName varchar(100) = ''
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		UPDATE dbo.TypeMovCOInt SET Name =  @inName
		WHERE dbo.TypeMovCOInt.Id = @inID
	SET NOCOUNT OFF
END
GO


-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Delete TypeMovCOInt
-- =============================================
CREATE PROCEDURE SP_Delete_TypeMovCOInt
(
    @inID int = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		DELETE FROM dbo.TypeMovCOInt
		WHERE dbo.TypeMovCOInt.Id = @inID
	SET NOCOUNT OFF
END
GO
