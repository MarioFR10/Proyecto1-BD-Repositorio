SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create Relationship
-- =============================================
CREATE PROCEDURE SP_Create_Relationship
(
	@inName varchar(100) = ''
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		INSERT INTO Relationship(Name)
		VALUES (@inName)
	SET NOCOUNT OFF
    
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read Relationship
-- =============================================
CREATE PROCEDURE SP_Read_Relationship
(
	@inId int = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		SELECT RL.Name
		FROM dbo.Relationship RL
		WHERE RL.Id = @inId
	SET NOCOUNT OFF
    
END
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update Relationship
-- =============================================
CREATE PROCEDURE SP_Update_Relationship
(
	@inId int = 0,
	@inName varchar(100) = ''
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		UPDATE dbo.Relationship SET Name = @inName
		WHERE dbo.Relationship.Id = @inId
	SET NOCOUNT OFF
    
END

GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Delete Relationship
-- =============================================
CREATE PROCEDURE SP_Delete_Relationship
(
	@inId int = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		DELETE FROM dbo.Relationship
		WHERE dbo.Relationship.Id = @inId
	SET NOCOUNT OFF
    
END
GO

