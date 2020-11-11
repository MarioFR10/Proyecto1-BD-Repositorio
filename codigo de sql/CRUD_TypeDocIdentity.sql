SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create TypeDocIdentity
-- =============================================
CREATE PROCEDURE SP_Create_TypeDocIdentity
(
    @Name varchar(100) = ''
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		INSERT INTO TypeDocIdentity(Name)
		VALUES(@Name)
	SET NOCOUNT OFF
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read TypeDocIdentity
-- =============================================
CREATE PROCEDURE SP_Read_TypeDocIdentity
(
    @inID int = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		SELECT TD.Name
		FROM dbo.TypeDocIdentity TD
		WHERE TD.Id = @inID
	SET NOCOUNT OFF
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update TypeDocIdentity
-- =============================================
CREATE PROCEDURE SP_Update_TypeDocIdentity
(
    @inID int = 0,
	@inName varchar(100) = ''
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		UPDATE dbo.TypeDocIdentity SET Name =  @inName
		WHERE dbo.TypeDocIdentity.Id = @inID
	SET NOCOUNT OFF
END
GO


-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Delete TypeDocIdentity
-- =============================================
CREATE PROCEDURE SP_Delete_TypeDocIdentity
(
    @inID int = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		DELETE FROM dbo.TypeDocIdentity
		WHERE dbo.TypeDocIdentity.Id = @inID
	SET NOCOUNT OFF
END
GO

