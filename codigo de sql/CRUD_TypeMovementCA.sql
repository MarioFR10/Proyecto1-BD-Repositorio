SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create TypeMovementCA
-- =============================================
CREATE PROCEDURE SP_Create_TypeMovementCA
(
    @inName varchar(100) = '',
	@inTypeOP varchar(5) = ''
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		INSERT INTO [dbo].[TypeMovement CA](Name, TypeOP)
		VALUES(@inName, @inTypeOP)
	SET NOCOUNT OFF
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read TypeMovementCA
-- =============================================
CREATE PROCEDURE SP_Read_TypeMovementCA
(
    @inID int = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		SELECT TMCA.Name, TMCA.TypeOP
		FROM [dbo].[TypeMovement CA] TMCA
		WHERE TMCA.Id = @inID
	SET NOCOUNT OFF
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update TypeMovementCA
-- =============================================
CREATE PROCEDURE SP_Update_TypeMovementCA
(
    @inID int = 0,
	@inName varchar(100) = '',
	@inTypeOP varchar(5) = ''
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		UPDATE [dbo].[TypeMovement CA] SET Name =  @inName, TypeOP = @inTypeOP
		WHERE [dbo].[TypeMovement CA].Id = @inID
	SET NOCOUNT OFF
END
GO


-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Delete TypeMovementCA
-- =============================================
CREATE PROCEDURE SP_Delete_TypeMovementCA
(
    @inID int = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		DELETE FROM [dbo].[TypeMovement CA]
		WHERE [dbo].[TypeMovement CA].Id = @inID
	SET NOCOUNT OFF
END
GO
