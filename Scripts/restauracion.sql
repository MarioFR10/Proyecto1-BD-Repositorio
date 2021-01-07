/****** Object:  Database [proyecto1-database]    Script Date: 12/7/2020 5:21:08 PM ******/
CREATE DATABASE [proyecto1-database]  (EDITION = 'Basic', SERVICE_OBJECTIVE = 'Basic', MAXSIZE = 2 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS;
GO
ALTER DATABASE [proyecto1-database] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [proyecto1-database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [proyecto1-database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [proyecto1-database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [proyecto1-database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [proyecto1-database] SET ARITHABORT OFF 
GO
ALTER DATABASE [proyecto1-database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [proyecto1-database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [proyecto1-database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [proyecto1-database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [proyecto1-database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [proyecto1-database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [proyecto1-database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [proyecto1-database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [proyecto1-database] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [proyecto1-database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [proyecto1-database] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [proyecto1-database] SET  MULTI_USER 
GO
ALTER DATABASE [proyecto1-database] SET ENCRYPTION ON
GO
ALTER DATABASE [proyecto1-database] SET QUERY_STORE = ON
GO
ALTER DATABASE [proyecto1-database] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 7), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 10, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
/****** Object:  UserDefinedFunction [dbo].[fn_diagramobjects]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
	
GO
/****** Object:  Table [dbo].[AccountStatement]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountStatement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SavingsAccountId] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[InitialBalance] [money] NOT NULL,
	[FinalBalance] [money] NOT NULL,
	[MinBalance] [money] NOT NULL,
	[AtmOps] [int] NOT NULL,
	[HumOps] [int] NOT NULL,
	[InsertAt] [datetime] NULL,
	[InsertBy] [varchar](50) NULL,
	[InsertIn] [varchar](50) NULL,
 CONSTRAINT [PK_AccountStatement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Benefactor]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Benefactor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RelationshipId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[SavingsAccountId] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Percentage] [int] NOT NULL,
	[Condition] [bit] NOT NULL,
	[InsertAt] [datetime] NULL,
	[InsertBy] [varchar](50) NULL,
	[InsertIn] [varchar](50) NULL,
 CONSTRAINT [PK_Benefactor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coin]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coin](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Symbol] [varchar](1) NOT NULL,
 CONSTRAINT [PK_Coin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mov CO]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mov CO](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeMovCO] [int] NOT NULL,
	[ObjectiveAccountId] [int] NOT NULL,
	[DateOfMovCO] [date] NOT NULL,
	[Fee] [money] NOT NULL,
 CONSTRAINT [PK_Mov CO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mov CO Interest]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mov CO Interest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeMovCOinterestId] [int] NOT NULL,
	[ObjectiveAccountId] [int] NOT NULL,
	[DateOfMovCOinterest] [date] NOT NULL,
	[Fee] [money] NOT NULL,
	[NewAcumInterest] [float] NOT NULL,
 CONSTRAINT [PK_Mov CO Interest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movement CA]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movement CA](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SavingsAccountId] [int] NOT NULL,
	[TypeMovId] [int] NOT NULL,
	[AccountStatementId] [int] NOT NULL,
	[Amount] [money] NOT NULL,
	[NewBalance] [money] NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[Visible] [bit] NOT NULL,
	[DateOfMov] [date] NOT NULL,
 CONSTRAINT [PK_Movement CA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ObjetiveAccount]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ObjetiveAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SavingsAccountId] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Fee] [money] NOT NULL,
	[Objective] [varchar](50) NOT NULL,
	[Balance] [money] NOT NULL,
	[AcumInterest] [float] NOT NULL,
	[DaysOfDeposit] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_ObjetiveAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeDocId] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[ValueDocIden] [varchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Phone1] [varchar](20) NOT NULL,
	[Phone2] [varchar](20) NOT NULL,
	[InsertAt] [datetime] NULL,
	[InsertBy] [varchar](50) NULL,
	[InsertIn] [varchar](50) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relationship]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relationship](
	[Id] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Relationship] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SavingsAccount]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SavingsAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeSavingsAccountId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[Balance] [money] NOT NULL,
	[CreationDate] [date] NOT NULL,
	[AccountNumber] [varchar](50) NOT NULL,
	[InsertAt] [datetime] NULL,
	[InsertBy] [varchar](50) NULL,
	[InsertIn] [varchar](50) NULL,
 CONSTRAINT [PK_SavingsAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [sysname] NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeDocIdentity]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeDocIdentity](
	[Id] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TypeDocIdentity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeMovCO]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeMovCO](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](10) NULL,
 CONSTRAINT [PK_TypeMovCO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeMovCOInt]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeMovCOInt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](10) NOT NULL,
 CONSTRAINT [PK_TypeMovCOInt] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeMovement CA]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeMovement CA](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[TypeOP] [varchar](10) NOT NULL,
 CONSTRAINT [PK_TypeMovement CA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeSavingsAccount]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeSavingsAccount](
	[Id] [int] NOT NULL,
	[CoinId] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[InterestRate] [float] NOT NULL,
	[PenaltyForBreach] [money] NOT NULL,
	[MinimunBalance] [money] NOT NULL,
	[MensualAccountForService] [money] NOT NULL,
	[MaxOpsHuman] [int] NOT NULL,
	[MaxOpsAtm] [int] NOT NULL,
	[ExceedComisionHumanMont] [float] NOT NULL,
	[ExceedComisionAtmMont] [float] NOT NULL,
 CONSTRAINT [PK_TypeSavingsAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[IsAdministrator] [bit] NOT NULL,
	[InsertAt] [datetime] NULL,
	[InsertBy] [varchar](50) NULL,
	[InsertIn] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCanAccess]    Script Date: 12/7/2020 5:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCanAccess](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[SavingsAccountId] [int] NOT NULL,
	[Condition] [bit] NOT NULL,
	[InsertAt] [datetime] NULL,
	[UpdateAt] [datetime] NULL,
 CONSTRAINT [PK_usercanaccess] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AccountStatement] ON 
GO
INSERT [dbo].[AccountStatement] ([Id], [SavingsAccountId], [StartDate], [EndDate], [InitialBalance], [FinalBalance], [MinBalance], [AtmOps], [HumOps], [InsertAt], [InsertBy], [InsertIn]) VALUES (1, 1, CAST(N'2020-07-01' AS Date), CAST(N'2020-07-31' AS Date), 0.0000, 3330376.8000, 2806314.0000, 9, 0, CAST(N'2020-12-07T22:21:39.987' AS DateTime), N'script', N'186.176.102.189')
GO
INSERT [dbo].[AccountStatement] ([Id], [SavingsAccountId], [StartDate], [EndDate], [InitialBalance], [FinalBalance], [MinBalance], [AtmOps], [HumOps], [InsertAt], [InsertBy], [InsertIn]) VALUES (2, 2, CAST(N'2020-07-02' AS Date), CAST(N'2020-08-01' AS Date), 0.0000, 278572.8000, 258248.0000, 6, 0, CAST(N'2020-12-07T22:21:40.257' AS DateTime), N'script', N'186.176.102.189')
GO
INSERT [dbo].[AccountStatement] ([Id], [SavingsAccountId], [StartDate], [EndDate], [InitialBalance], [FinalBalance], [MinBalance], [AtmOps], [HumOps], [InsertAt], [InsertBy], [InsertIn]) VALUES (3, 3, CAST(N'2020-07-04' AS Date), CAST(N'2020-08-03' AS Date), 0.0000, 34137794.9000, 20926619.0000, 8, 0, CAST(N'2020-12-07T22:21:40.587' AS DateTime), N'script', N'186.176.102.189')
GO
INSERT [dbo].[AccountStatement] ([Id], [SavingsAccountId], [StartDate], [EndDate], [InitialBalance], [FinalBalance], [MinBalance], [AtmOps], [HumOps], [InsertAt], [InsertBy], [InsertIn]) VALUES (4, 1, CAST(N'2020-08-01' AS Date), CAST(N'2020-08-31' AS Date), 3330376.8000, 3959252.1600, 3330376.8000, 9, 0, CAST(N'2020-12-07T22:21:44.687' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[AccountStatement] ([Id], [SavingsAccountId], [StartDate], [EndDate], [InitialBalance], [FinalBalance], [MinBalance], [AtmOps], [HumOps], [InsertAt], [InsertBy], [InsertIn]) VALUES (5, 2, CAST(N'2020-08-02' AS Date), CAST(N'2020-09-01' AS Date), 278572.8000, 300930.0800, 278572.8000, 6, 0, CAST(N'2020-12-07T22:21:44.840' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[AccountStatement] ([Id], [SavingsAccountId], [StartDate], [EndDate], [InitialBalance], [FinalBalance], [MinBalance], [AtmOps], [HumOps], [InsertAt], [InsertBy], [InsertIn]) VALUES (6, 3, CAST(N'2020-08-04' AS Date), CAST(N'2020-09-03' AS Date), 34137794.9000, 37546074.3900, 34137794.9000, 8, 0, CAST(N'2020-12-07T22:21:45.073' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[AccountStatement] ([Id], [SavingsAccountId], [StartDate], [EndDate], [InitialBalance], [FinalBalance], [MinBalance], [AtmOps], [HumOps], [InsertAt], [InsertBy], [InsertIn]) VALUES (7, 1, CAST(N'2020-09-01' AS Date), CAST(N'2020-09-30' AS Date), 3959252.1600, 3959252.1600, 3959252.1600, 0, 0, CAST(N'2020-12-07T22:21:48.120' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[AccountStatement] ([Id], [SavingsAccountId], [StartDate], [EndDate], [InitialBalance], [FinalBalance], [MinBalance], [AtmOps], [HumOps], [InsertAt], [InsertBy], [InsertIn]) VALUES (8, 2, CAST(N'2020-09-02' AS Date), CAST(N'2020-10-01' AS Date), 300930.0800, 300930.0800, 300930.0800, 0, 0, CAST(N'2020-12-07T22:21:48.217' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[AccountStatement] ([Id], [SavingsAccountId], [StartDate], [EndDate], [InitialBalance], [FinalBalance], [MinBalance], [AtmOps], [HumOps], [InsertAt], [InsertBy], [InsertIn]) VALUES (9, 4, CAST(N'2020-09-03' AS Date), CAST(N'2020-10-02' AS Date), 0.0000, 0.0000, 9130494.0000, 0, 0, CAST(N'2020-12-07T22:21:48.563' AS DateTime), N'script', N'186.176.102.189')
GO
INSERT [dbo].[AccountStatement] ([Id], [SavingsAccountId], [StartDate], [EndDate], [InitialBalance], [FinalBalance], [MinBalance], [AtmOps], [HumOps], [InsertAt], [InsertBy], [InsertIn]) VALUES (10, 3, CAST(N'2020-09-04' AS Date), CAST(N'2020-10-03' AS Date), 37546074.3900, 37546074.3900, 37546074.3900, 0, 0, CAST(N'2020-12-07T22:21:48.890' AS DateTime), N'Script', N'186.176.102.189')
GO
SET IDENTITY_INSERT [dbo].[AccountStatement] OFF
GO
SET IDENTITY_INSERT [dbo].[Benefactor] ON 
GO
INSERT [dbo].[Benefactor] ([Id], [RelationshipId], [PersonId], [SavingsAccountId], [Name], [Percentage], [Condition], [InsertAt], [InsertBy], [InsertIn]) VALUES (1, 9, 2, 1, N'Marco Umaña Serrano', 23, 1, CAST(N'2020-12-07T22:21:39.690' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[Benefactor] ([Id], [RelationshipId], [PersonId], [SavingsAccountId], [Name], [Percentage], [Condition], [InsertAt], [InsertBy], [InsertIn]) VALUES (2, 9, 4, 2, N'oscar Muñoz Arroyo', 79, 1, CAST(N'2020-12-07T22:21:40.020' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[Benefactor] ([Id], [RelationshipId], [PersonId], [SavingsAccountId], [Name], [Percentage], [Condition], [InsertAt], [InsertBy], [InsertIn]) VALUES (3, 9, 6, 3, N'Rosario Elizondo Aguilar', 59, 1, CAST(N'2020-12-07T22:21:40.500' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[Benefactor] ([Id], [RelationshipId], [PersonId], [SavingsAccountId], [Name], [Percentage], [Condition], [InsertAt], [InsertBy], [InsertIn]) VALUES (4, 9, 8, 4, N'Gabriel Arrieta Oviedo', 52, 1, CAST(N'2020-12-07T22:21:48.487' AS DateTime), N'Script', N'186.176.102.189')
GO
SET IDENTITY_INSERT [dbo].[Benefactor] OFF
GO
INSERT [dbo].[Coin] ([Id], [Name], [Symbol]) VALUES (1, N'Colones', N'¢')
GO
INSERT [dbo].[Coin] ([Id], [Name], [Symbol]) VALUES (2, N'Dolares', N'$')
GO
INSERT [dbo].[Coin] ([Id], [Name], [Symbol]) VALUES (3, N'Euros', N'€')
GO
SET IDENTITY_INSERT [dbo].[Movement CA] ON 
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (1, 1, 5, 1, 4129304.0000, 4129304.0000, N'Banco Central', 1, CAST(N'2020-07-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (2, 1, 1, 1, 436026.0000, 3693278.0000, N'ESTABLISHMENT LAB', 1, CAST(N'2020-07-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (3, 1, 4, 1, 1396981.0000, 5090259.0000, N'ATM CENTRAL', 1, CAST(N'2020-07-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (4, 1, 1, 1, 1248332.0000, 3841927.0000, N'CORPORACIoN PIPASA-CARGILL', 1, CAST(N'2020-07-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (5, 1, 4, 1, 5983.0000, 3847910.0000, N'ATM CARTAGO', 1, CAST(N'2020-07-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (6, 1, 1, 1, 391369.0000, 3456541.0000, N'GRUPO PROMERICA', 1, CAST(N'2020-07-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (7, 1, 5, 1, 6684.0000, 3463225.0000, N'ATM SAN JOSE', 1, CAST(N'2020-07-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (8, 1, 1, 1, 116556.0000, 3346669.0000, N'BRITISH AMERICAN TOBACCO (BATCA)', 1, CAST(N'2020-07-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (9, 1, 1, 1, 23353.0000, 3323316.0000, N'HEWLETT-PACKARD', 1, CAST(N'2020-07-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (10, 1, 5, 1, 44244.0000, 3367560.0000, N'ATM CENTRAL', 1, CAST(N'2020-07-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (11, 1, 1, 1, 526433.0000, 2841127.0000, N'GRUPO BIMBO', 1, CAST(N'2020-07-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (12, 1, 1, 1, 29400.0000, 2811727.0000, N'GRUPO EL aNGEL', 1, CAST(N'2020-07-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (13, 1, 1, 1, 3341.0000, 2808386.0000, N'CLARO COSTA RICA', 1, CAST(N'2020-07-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (14, 1, 1, 1, 2072.0000, 2806314.0000, N'INTEL COSTA RICA', 1, CAST(N'2020-07-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (15, 2, 5, 2, 80673703.0000, 80673703.0000, N'Banco Central', 1, CAST(N'2020-07-02' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (16, 2, 1, 2, 75884062.0000, 4789641.0000, N'AMAZON', 1, CAST(N'2020-07-02' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (17, 2, 1, 2, 3743489.0000, 1046152.0000, N'KÖLBI', 1, CAST(N'2020-07-02' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (18, 2, 4, 2, 73847.0000, 1119999.0000, N'ATM PUNTARENAS', 1, CAST(N'2020-07-02' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (19, 2, 1, 2, 306569.0000, 813430.0000, N'APM TERMINALS', 1, CAST(N'2020-07-02' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (20, 2, 5, 2, 459311.0000, 1272741.0000, N'ATM CARTAGO', 1, CAST(N'2020-07-02' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (21, 2, 1, 2, 73546.0000, 1199195.0000, N'HOSPITAL CIMA SAN JOSe', 1, CAST(N'2020-07-02' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (22, 2, 5, 2, 213308.0000, 1412503.0000, N'ATM PUNTARENAS', 1, CAST(N'2020-07-02' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (23, 2, 1, 2, 883656.0000, 528847.0000, N'SODA LA ESQUINA', 1, CAST(N'2020-07-02' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (24, 2, 1, 2, 270599.0000, 258248.0000, N'DHL', 1, CAST(N'2020-07-02' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (25, 3, 5, 3, 37007838.0000, 37007838.0000, N'Banco Central', 1, CAST(N'2020-07-04' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (26, 3, 1, 3, 16081219.0000, 20926619.0000, N'GRUPO IREX', 1, CAST(N'2020-07-04' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (27, 3, 4, 3, 15459390.0000, 36386009.0000, N'ATM CARTAGO', 1, CAST(N'2020-07-04' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (28, 3, 5, 3, 542855.0000, 36928864.0000, N'ATM CARTAGO', 1, CAST(N'2020-07-04' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (29, 3, 1, 3, 1605964.0000, 35322900.0000, N'GRUPO PRO GPP', 1, CAST(N'2020-07-04' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (30, 3, 1, 3, 1498650.0000, 33824250.0000, N'ESTABLISHMENT LAB', 1, CAST(N'2020-07-04' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (31, 3, 1, 3, 942823.0000, 32881427.0000, N'SODA LA IGLESIA', 1, CAST(N'2020-07-04' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (32, 3, 1, 3, 467763.0000, 32413664.0000, N'MONDELEZ', 1, CAST(N'2020-07-04' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (33, 3, 1, 3, 1426833.0000, 30986831.0000, N'GRUPO UNICOMER', 1, CAST(N'2020-07-04' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (34, 3, 4, 3, 59846.0000, 31046677.0000, N'ATM PUNTARENAS', 1, CAST(N'2020-07-04' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (35, 3, 1, 3, 5589.0000, 31041088.0000, N'INCAE BUSINESS SCHOOL', 1, CAST(N'2020-07-04' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (36, 3, 1, 3, 1729.0000, 31039359.0000, N'MCDONALDS', 1, CAST(N'2020-07-04' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (37, 1, 9, 1, 1000.0000, 2805314.0000, N'Comision exceso de operacion en CA', 1, CAST(N'2020-07-31' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (38, 1, 11, 1, 30000.0000, 2775314.0000, N'Cargo Mensual', 1, CAST(N'2020-07-31' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (39, 1, 7, 1, 555062.8000, 3330376.8000, N'Intereses del mes sobre saldo MInimo', 1, CAST(N'2020-07-31' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (40, 2, 11, 2, 5000.0000, 253248.0000, N'Cargo Mensual', 1, CAST(N'2020-08-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (41, 2, 7, 2, 25324.8000, 278572.8000, N'Intereses del mes sobre saldo MInimo', 1, CAST(N'2020-08-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (42, 3, 11, 3, 5000.0000, 31034359.0000, N'Cargo Mensual', 1, CAST(N'2020-08-03' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (43, 3, 7, 3, 3103435.9000, 34137794.9000, N'Intereses del mes sobre saldo MInimo', 1, CAST(N'2020-08-03' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (44, 1, 9, 4, 1000.0000, 3329376.8000, N'Comision exceso de operacion en CA', 1, CAST(N'2020-08-31' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (45, 1, 11, 4, 30000.0000, 3299376.8000, N'Cargo Mensual', 1, CAST(N'2020-08-31' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (46, 1, 7, 4, 659875.3600, 3959252.1600, N'Intereses del mes sobre saldo MInimo', 1, CAST(N'2020-08-31' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (47, 2, 11, 5, 5000.0000, 273572.8000, N'Cargo Mensual', 1, CAST(N'2020-09-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (48, 2, 7, 5, 27357.2800, 300930.0800, N'Intereses del mes sobre saldo MInimo', 1, CAST(N'2020-09-01' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (49, 4, 5, 9, 21090247.0000, 21090247.0000, N'Banco Central', 1, CAST(N'2020-09-03' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (50, 4, 1, 9, 11959753.0000, 9130494.0000, N'TIENDAS UNIVERSAL', 1, CAST(N'2020-09-03' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (51, 4, 4, 9, 1207270.0000, 10337764.0000, N'ATM SAN JOSE', 1, CAST(N'2020-09-03' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (52, 4, 5, 9, 434951.0000, 10772715.0000, N'ATM SAN JOSE', 1, CAST(N'2020-09-03' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (53, 4, 1, 9, 1266577.0000, 9506138.0000, N'GRUPO PRO GPP', 1, CAST(N'2020-09-03' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (54, 4, 4, 9, 6905806.0000, 16411944.0000, N'ATM PUNTARENAS', 1, CAST(N'2020-09-03' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (55, 4, 5, 9, 410598.0000, 16822542.0000, N'ATM SAN JOSE', 1, CAST(N'2020-09-03' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (56, 4, 1, 9, 542107.0000, 16280435.0000, N'BAR RESTAURANTE LA NAVE', 1, CAST(N'2020-09-03' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (57, 4, 1, 9, 28055.0000, 16252380.0000, N'UNIVERSIDAD LATINA DE COSTA RICA', 1, CAST(N'2020-09-03' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (58, 4, 1, 9, 22961.0000, 16229419.0000, N'HOSPITAL CLiNICA BiBLICA', 1, CAST(N'2020-09-03' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (59, 4, 1, 9, 832.0000, 16228587.0000, N'ABBOTT', 1, CAST(N'2020-09-03' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (60, 4, 1, 9, 1289.0000, 16227298.0000, N'GRUPO DEMASA-GRUMA', 1, CAST(N'2020-09-03' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (61, 3, 11, 6, 5000.0000, 34132794.9000, N'Cargo Mensual', 1, CAST(N'2020-09-03' AS Date))
GO
INSERT [dbo].[Movement CA] ([Id], [SavingsAccountId], [TypeMovId], [AccountStatementId], [Amount], [NewBalance], [Description], [Visible], [DateOfMov]) VALUES (62, 3, 7, 6, 3413279.4900, 37546074.3900, N'Intereses del mes sobre saldo MInimo', 1, CAST(N'2020-09-03' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Movement CA] OFF
GO
SET IDENTITY_INSERT [dbo].[Person] ON 
GO
INSERT [dbo].[Person] ([Id], [TypeDocId], [Name], [ValueDocIden], [DateOfBirth], [Email], [Phone1], [Phone2], [InsertAt], [InsertBy], [InsertIn]) VALUES (1, 1, N'David Arroyo Mesen', N'117171162', CAST(N'1976-08-14' AS Date), N'arroyodavid736@outlook.com', N'73562984', N'22816530', CAST(N'2020-12-07T22:21:39.670' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[Person] ([Id], [TypeDocId], [Name], [ValueDocIden], [DateOfBirth], [Email], [Phone1], [Phone2], [InsertAt], [InsertBy], [InsertIn]) VALUES (2, 1, N'Marco Umaña Serrano', N'106129872', CAST(N'1982-12-09' AS Date), N'umañamarco8093@hotmail.com', N'66035188', N'28350149', CAST(N'2020-12-07T22:21:39.670' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[Person] ([Id], [TypeDocId], [Name], [ValueDocIden], [DateOfBirth], [Email], [Phone1], [Phone2], [InsertAt], [InsertBy], [InsertIn]) VALUES (3, 1, N'Jose Artavia Rivera', N'149892757', CAST(N'1986-08-05' AS Date), N'artaviajose8871@hotmail.com', N'62803162', N'21907897', CAST(N'2020-12-07T22:21:40.000' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[Person] ([Id], [TypeDocId], [Name], [ValueDocIden], [DateOfBirth], [Email], [Phone1], [Phone2], [InsertAt], [InsertBy], [InsertIn]) VALUES (4, 1, N'oscar Muñoz Arroyo', N'132200129', CAST(N'1981-12-15' AS Date), N'muñozoscar6143@hotmail.com', N'83071212', N'26995983', CAST(N'2020-12-07T22:21:40.000' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[Person] ([Id], [TypeDocId], [Name], [ValueDocIden], [DateOfBirth], [Email], [Phone1], [Phone2], [InsertAt], [InsertBy], [InsertIn]) VALUES (5, 1, N'Guadalupe Mesen Retana', N'121434173', CAST(N'1971-12-13' AS Date), N'mesenguadalupe5550@hotmail.com', N'71031055', N'26208224', CAST(N'2020-12-07T22:21:40.277' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[Person] ([Id], [TypeDocId], [Name], [ValueDocIden], [DateOfBirth], [Email], [Phone1], [Phone2], [InsertAt], [InsertBy], [InsertIn]) VALUES (6, 1, N'Rosario Elizondo Aguilar', N'178375881', CAST(N'1979-12-20' AS Date), N'elizondorosario1517@outlook.com', N'79797444', N'26580785', CAST(N'2020-12-07T22:21:40.277' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[Person] ([Id], [TypeDocId], [Name], [ValueDocIden], [DateOfBirth], [Email], [Phone1], [Phone2], [InsertAt], [InsertBy], [InsertIn]) VALUES (7, 1, N'Guadalupe Serrano Roman', N'117359964', CAST(N'1979-12-15' AS Date), N'serranoguadalupe2842@outlook.com', N'84668763', N'29893862', CAST(N'2020-12-07T22:21:48.300' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[Person] ([Id], [TypeDocId], [Name], [ValueDocIden], [DateOfBirth], [Email], [Phone1], [Phone2], [InsertAt], [InsertBy], [InsertIn]) VALUES (8, 1, N'Gabriel Arrieta Oviedo', N'110498718', CAST(N'1986-03-22' AS Date), N'arrietagabriel4673@yahoo.com', N'76024920', N'22224247', CAST(N'2020-12-07T22:21:48.300' AS DateTime), N'Script', N'186.176.102.189')
GO
SET IDENTITY_INSERT [dbo].[Person] OFF
GO
INSERT [dbo].[Relationship] ([Id], [Name]) VALUES (1, N'Padre')
GO
INSERT [dbo].[Relationship] ([Id], [Name]) VALUES (2, N'Madre')
GO
INSERT [dbo].[Relationship] ([Id], [Name]) VALUES (3, N'Hijo')
GO
INSERT [dbo].[Relationship] ([Id], [Name]) VALUES (4, N'Hija')
GO
INSERT [dbo].[Relationship] ([Id], [Name]) VALUES (5, N'Hermano')
GO
INSERT [dbo].[Relationship] ([Id], [Name]) VALUES (6, N'Hermana')
GO
INSERT [dbo].[Relationship] ([Id], [Name]) VALUES (7, N'amigo')
GO
INSERT [dbo].[Relationship] ([Id], [Name]) VALUES (8, N'amiga')
GO
INSERT [dbo].[Relationship] ([Id], [Name]) VALUES (9, N'Pareja')
GO
SET IDENTITY_INSERT [dbo].[SavingsAccount] ON 
GO
INSERT [dbo].[SavingsAccount] ([Id], [TypeSavingsAccountId], [PersonId], [Balance], [CreationDate], [AccountNumber], [InsertAt], [InsertBy], [InsertIn]) VALUES (1, 3, 1, 3959252.1600, CAST(N'2020-07-01' AS Date), N'11887777', CAST(N'2020-12-07T22:21:48.100' AS DateTime), N'script', N'186.176.102.189')
GO
INSERT [dbo].[SavingsAccount] ([Id], [TypeSavingsAccountId], [PersonId], [Balance], [CreationDate], [AccountNumber], [InsertAt], [InsertBy], [InsertIn]) VALUES (2, 1, 3, 300930.0800, CAST(N'2020-07-02' AS Date), N'11834714', CAST(N'2020-12-07T22:21:48.197' AS DateTime), N'script', N'186.176.102.189')
GO
INSERT [dbo].[SavingsAccount] ([Id], [TypeSavingsAccountId], [PersonId], [Balance], [CreationDate], [AccountNumber], [InsertAt], [InsertBy], [InsertIn]) VALUES (3, 1, 5, 37546074.3900, CAST(N'2020-07-04' AS Date), N'11435357', CAST(N'2020-12-07T22:21:48.870' AS DateTime), N'script', N'186.176.102.189')
GO
INSERT [dbo].[SavingsAccount] ([Id], [TypeSavingsAccountId], [PersonId], [Balance], [CreationDate], [AccountNumber], [InsertAt], [InsertBy], [InsertIn]) VALUES (4, 1, 7, 16227298.0000, CAST(N'2020-09-03' AS Date), N'11047353', CAST(N'2020-12-07T22:21:48.827' AS DateTime), N'script', N'186.176.102.189')
GO
SET IDENTITY_INSERT [dbo].[SavingsAccount] OFF
GO
SET IDENTITY_INSERT [dbo].[sysdiagrams] ON 
GO
INSERT [dbo].[sysdiagrams] ([name], [principal_id], [diagram_id], [version], [definition]) VALUES (N'Diagram_Final', 1, 2, 1, 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF090006000000000000000000000002000000010000000000000000100000AC00000001000000FEFFFFFF000000000000000002000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFB1000000FDFFFFFF0400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F000000300000003100000032000000330000003400000035000000360000003700000038000000390000003A0000003B0000003C0000003D0000003E0000003F000000400000004100000042000000430000004400000045000000460000004700000048000000490000004A0000004B0000004C0000004D0000004E0000004F000000500000005100000052000000530000005400000055000000560000005700000058000000590000005A0000005B0000005C0000005D0000005E0000005F000000600000006100000062000000630000006400000065000000660000006700000068000000690000006A0000006B0000006C0000006D0000006E0000006F000000700000007100000072000000730000007400000075000000760000007700000078000000790000007A0000007B0000007C0000007D0000007E0000007F0000008000000052006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF0200000000000000000000000000000000000000000000000000000000000000F0F55FE16BCBD601AD000000000700000000000044006400730058004D004C00530074007200650061006D00000000000000000000000000000000000000000000000000000000000000000000000000000000001A000201FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000003000000A75101000000000053006300680065006D00610020005500440056002000440065006600610075006C00740000000000000000000000000000000000000000000000000000000000260002010100000003000000FFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000001600000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C000201FFFFFFFF04000000FFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000010000004C060000000000008100000082000000830000008400000085000000860000008700000088000000890000008A0000008B0000008C0000008D0000008E0000008F000000900000009100000092000000930000009400000095000000960000009700000098000000990000009A0000009B0000009C0000009D0000009E0000009F000000A0000000A1000000A2000000A3000000A4000000A5000000A6000000A7000000A8000000A9000000AA000000AB000000FEFFFFFFFEFFFFFFAE000000AF000000B0000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C6464733E3C6469616772616D20666F6E74636C7369643D227B37374432433932442D373737392D313144382D393037302D3030303635423834304439437D22206D6F75736569636F6E636C7369643D227B30424533353230342D384639312D313143452D394445332D3030414130303442423835317D222064656661756C746C61796F75743D224D534444532E52656374696C696E656172222064656661756C746C696E65726F7574653D224D534444532E52656374696C696E656172222076657273696F6E3D223722206E6578746F626A6563743D22373222207363616C653D22313030222070616765627265616B616E63686F72783D2230222070616765627265616B616E63686F72793D2230222070616765627265616B73697A65783D2230222070616765627265616B73697A65793D223022207363726F6C6C6C6566743D222D3330303922207363726F6C6C746F703D223239313131222067726964783D22313530222067726964793D2231353022206D617267696E783D223530303022206D617267696E793D223530303022207A6F6F6D3D223130302220783D2232373531372220793D22313530323822206261636B636F6C6F723D222D32313437343833363433222064656661756C7470657273697374656E63653D223322205072696E74506167654E756D626572734D6F64653D223322205072696E744D617267696E546F703D223022205072696E744D617267696E426F74746F6D3D2236333522205072696E744D617267696E4C6566743D223022205072696E744D617267696E52696768743D223022206D61727175656573656C656374696F6E6D6F64653D223122206D6F757365706F696E7465723D22302220736E6170746F677269643D223122206175746F74797065616E6E6F746174696F6E3D2231222073686F777363726F6C6C626172733D223122207669657770616765627265616B733D22302220646F6E6F74666F726365636F6E6E6563746F7273626568696E647368617065733D2231223E3C666F6E743E3C646473786D6C6F626A65637473747265616D777261707065722062696E6172793D22303030303038303033303030303030303030303230303030222F3E3C2F666F6E743E3C6D6F75736569636F6E3E3C646473786D6C6F626A65637473747265616D777261707065722062696E6172793D2236633734303030303030303030303030222F3E3C2F6D6F75736569636F6E3E3C2F6469616772616D3E3C6C61796F75746D616E616765723E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D227363685F6C6162656C735F76697369626C65222076616C75653D22302220766172747970653D223131222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746D616E616765723E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D2242656E65666163746F72202864626F2922206C6566743D2231363530302220746F703D223832353022206C6F676963616C69643D22312220636F6E74726F6C69643D223122206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223537363822206865696768743D223735343122206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D22323134333334313230383030303030303838313630303030373531643030303037383536333431323037303030303030313430313030303034323030363530303665303036353030363630303631303036333030373430303666303037323030323030303238303036343030363230303666303032393030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303130303030303030353030303030303534303030303030326330303030303032633030303030303263303030303030333430303030303030303030303030303030303030303030353433353030303064633236303030303030303030303030326430313030303030373030303030303063303030303030303730303030303031633031303030303036303930303030363230373030303034383033303030303161303430303030646630323030303065633034303030303237303630303030623130333030303032373036303030306362303730303030353530353030303030303030303030303031303030303030383831363030303037353164303030303030303030303030303530303030303030353030303030303032303030303030303230303030303031633031303030306635306130303030303030303030303030313030303030303339313330303030633030373030303030303030303030303032303030303030303230303030303030323030303030303032303030303030316330313030303030363039303030303031303030303030303030303030303033393133303030303334303330303030303030303030303030303030303030303030303030303030303230303030303030323030303030303163303130303030303630393030303030303030303030303030303030303030643133313030303030393233303030303030303030303030303030303030303030643030303030303034303030303030303430303030303031633031303030303036303930303030616130613030303039303036303030303738353633343132303430303030303035653030303030303031303030303030303130303030303030623030303030303030303030303030303130303030303030323030303030303033303030303030303430303030303030353030303030303036303030303030303730303030303030383030303030303039303030303030306130303030303030343030303030303634303036323030366630303030303030623030303030303432303036353030366530303635303036363030363130303633303037343030366630303732303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323830352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D22436F696E202864626F2922206C6566743D223135302220746F703D22333036303022206C6F676963616C69643D22352220636F6E74726F6C69643D223222206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223537363822206865696768743D223234363122206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D22323134333334313230383030303030303838313630303030396430393030303037383536333431323037303030303030313430313030303034333030366630303639303036653030323030303238303036343030363230303666303032393030303030303030363936653733373436313665363336353230373636663639363432383639366537343333333232393030363936653733373436313665363336353230363336633631373337333230346436393633373236663733366636363734326535333731366335333635373237363635373232653464363136653631363736353664363536653734326535353439326534373732363936343265343737323639363434333666366337353664366534393665363636663238363936653734333333323239303037343438363136653634366336353732323930303639366537333734363136653633363532303736366636393634323836333663363137333733323034643639363337323666373337323030303037326131323233353030623839613165303863306266376231653665363136373635366436353665373432653535343932653437373236393634326534373732363936343533373036353633363936313663343537363635366537343438363136653634366336353732323930303639366537333734363136653633363532303736366636393634323836333663363137333733323034643639363337323030303030303030303030303030303030303030303130303030303030353030303030303534303030303030326330303030303032633030303030303263303030303030333430303030303030303030303030303030303030303030323232393030303036353135303030303030303030303030326430313030303030373030303030303063303030303030303730303030303031633031303030303036303930303030363230373030303034383033303030303161303430303030646630323030303065633034303030303237303630303030623130333030303032373036303030306362303730303030353530353030303030303030303030303031303030303030383831363030303039643039303030303030303030303030303230303030303030323030303030303032303030303030303230303030303031633031303030306636303930303030303030303030303030313030303030303339313330303030376130353030303030303030303030303031303030303030303130303030303030323030303030303032303030303030316330313030303030363039303030303031303030303030303030303030303033393133303030303334303330303030303030303030303030303030303030303030303030303030303230303030303030323030303030303163303130303030303630393030303030303030303030303030303030303030643133313030303030393233303030303030303030303030303030303030303030643030303030303034303030303030303430303030303031633031303030303036303930303030616130613030303039303036303030303738353633343132303430303030303035323030303030303031303030303030303130303030303030623030303030303030303030303030303130303030303030323030303030303033303030303030303430303030303030353030303030303036303030303030303730303030303030383030303030303039303030303030306130303030303030343030303030303634303036323030366630303030303030353030303030303433303036663030363930303665303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323535302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D22506572736F6E202864626F2922206C6566743D2231383435302220746F703D22323230353022206C6F676963616C69643D22362220636F6E74726F6C69643D223322206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223537363822206865696768743D223831373622206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D223231343333343132303830303030303038383136303030306630316630303030373835363334313230373030303030303134303130303030353030303635303037323030373330303666303036653030323030303238303036343030363230303666303032393030303030303030303039303031303030303030303030303030363030303030303036303030303030303230303066646666316630303230303030303030303032373030303030303030303030323062303630343033303530343034303230343234343030303030303030383030303030303031303030303030303030303030303030303030303030303030303830303030303830303030303066656666666666663030303030303030303630303030303030333030303030306639666666666666306230303030303031343030303030306662666666666666306230303030303066656666666666663030303030303030303930303030303030383030303030303037303030303030303030303030303030323030303030303038303030303030303730303030303030303030303030303035303030303030303130303030303030343030303030303031303030303030666666666666666664383030303030306536303030303030663430303030303030323031303030303534303036313030363830303666303036643030363130303030303035343030363130303638303036663030366430303631303030303030303030303030303030303030303030303031303030303030303530303030303035343030303030303263303030303030326330303030303032633030303030303334303030303030303030303030303030303030303030303232323930303030353032323030303030303030303030303264303130303030306430303030303030633030303030303037303030303030316330313030303030363039303030303632303730303030343830333030303031613034303030306466303230303030656330343030303032373036303030306231303330303030323730363030303063623037303030303535303530303030303030303030303030313030303030303838313630303030663031663030303030303030303030303062303030303030306230303030303030323030303030303032303030303030316330313030303066353061303030303030303030303030303130303030303033393133303030303036306130303030303030303030303030333030303030303033303030303030303230303030303030323030303030303163303130303030303630393030303030313030303030303030303030303030333931333030303033343033303030303030303030303030303030303030303030303030303030303032303030303030303230303030303031633031303030303036303930303030303030303030303030303030303030306431333130303030303932333030303030303030303030303030303030303030306430303030303030343030303030303034303030303030316330313030303030363039303030306161306130303030393030363030303037383536333431323034303030303030353630303030303030313030303030303031303030303030306230303030303030303030303030303031303030303030303230303030303030333030303030303034303030303030303530303030303030363030303030303037303030303030303830303030303030393030303030303061303030303030303430303030303036343030363230303666303030303030303730303030303035303030363530303732303037333030366630303665303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323830352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D2252656C6174696F6E73686970202864626F2922206C6566743D2231333935302220746F703D22313834353022206C6F676963616C69643D2231322220636F6E74726F6C69643D223422206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223537363822206865696768743D223234363122206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D223231343333343132303830303030303038383136303030303964303930303030373835363334313230373030303030303134303130303030353230303635303036633030363130303734303036393030366630303665303037333030363830303639303037303030323030303238303036343030363230303666303032393030303030303030303030303030303030303137666530303030303030303239303530303030643866643030303063303034303030306236303762343037623330376232303766333038303030306430666363626663303030303030303030303030373130373030303030303030303030306637303466623033663430323333663630303030313066376438656430303030613265656638656530303030316365383030303062646533383065343030303062306537616565376163653761616537613965376138653761376537613665373433376530353134613230643030383039666537396465373963653730303030303030303030303030303030303030303134656535336563303030303166656630303030313465643032656439366465613264653862646530303030393665633030303030303030383465633731646566396565356664653030303033306465616365623966656239306562623265396231653961386539663665626633656266306562656465626536656264666562643865626431656262656562373365623730656230303030303030303030303030303030303030303031303030303030303530303030303035343030303030303263303030303030326330303030303032633030303030303334303030303030303030303030303030303030303030303232323930303030363531353030303030303030303030303264303130303030303730303030303030633030303030303037303030303030316330313030303030363039303030303632303730303030343830333030303031613034303030306466303230303030656330343030303032373036303030306231303330303030323730363030303063623037303030303535303530303030303030303030303030313030303030303838313630303030396430393030303030303030303030303032303030303030303230303030303030323030303030303032303030303030316330313030303066353061303030303030303030303030303130303030303033393133303030303761303530303030303030303030303030313030303030303031303030303030303230303030303030323030303030303163303130303030303630393030303030313030303030303030303030303030333931333030303033343033303030303030303030303030303030303030303030303030303030303032303030303030303230303030303031633031303030303036303930303030303030303030303030303030303030306431333130303030303932333030303030303030303030303030303030303030306430303030303030343030303030303034303030303030316330313030303030363039303030306161306130303030393030363030303037383536333431323034303030303030363230303030303030313030303030303031303030303030306230303030303030303030303030303031303030303030303230303030303030333030303030303034303030303030303530303030303030363030303030303037303030303030303830303030303030393030303030303061303030303030303430303030303036343030363230303666303030303030306430303030303035323030363530303663303036313030373430303639303036663030366530303733303036383030363930303730303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323830352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D2230313438353636393031303030303030363430303632303036663030303030303436303034623030356630303432303036353030366530303635303036363030363130303633303037343030366630303732303035663030353230303635303036633030363130303734303036393030366630303665303037333030363830303639303037303030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F42656E65666163746F725F52656C6174696F6E73686970202864626F2927206265747765656E202752656C6174696F6E73686970202864626F292720616E64202742656E65666163746F72202864626F292722206C6566743D2231363234332220746F703D22313530393222206C6F676963616C69643D2231332220636F6E74726F6C69643D223522206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D2238313522206865696768743D223430353422206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2236312E343337393731373433373538352220636F6E74726F6C69643D2236222077696474683D223338393322206865696768743D223334342220736964653D223122206265686176696F723D2233222068696D65747269633D223136333322206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D2231323538322220793D223136363834222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D223422206465737469643D22312220736F75726365617474616368706F696E743D223334222064657374617474616368706F696E743D223122207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D2231363635302220793D223138343530222F3E3C706F696E7420783D2231363635302220793D223135373931222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303138663262323264383866326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D2231323538322220746F703D22313636383422206C6F676963616C69643D2231342220636F6E74726F6C69643D223622206D617374657269643D2235222068696E74313D2230222068696E74323D2230222077696474683D223338393322206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D2230303032303030303335306630303030353830313030303030333030303030303030303030353030303038303038303030303830303130303030303031353030303130303030303039303031343434323031303030363534363136383666366436313161303034363030346230303566303034323030363530303665303036353030363630303631303036333030373430303666303037323030356630303532303036353030366330303631303037343030363930303666303036653030373330303638303036393030373030303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D22536176696E67734163636F756E74202864626F2922206C6566743D22383130302220746F703D22323235303022206C6F676963616C69643D2231352220636F6E74726F6C69643D223722206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223537363822206865696768743D223639303622206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D2232313433333431323038303030303030383831363030303066613161303030303738353633343132303730303030303031343031303030303533303036313030373630303639303036653030363730303733303034313030363330303633303036663030373530303665303037343030323030303238303036343030363230303666303032393030303030303030383036303036303030303763303630303030303030303030303030303030303030306332303730303030303030303261303836323038323430613030303038303061613830616236306130303030303030303030303030303030303430623030303030303030333830623030303030303030333430623030303033343062303030303030303036653062303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030393630623565306337343063366437653562313430303130303038306661306330303030623430643030303030303030303030303030303030303030623830643030303062383064626130643030303030303030303030303030303062343064303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030386330643865306430303030303030303030303030303030303030303030303030313030303030303035303030303030353430303030303032633030303030303263303030303030326330303030303033343030303030303030303030303030303030303030303033343262303030303634313830303030303030303030303032643031303030303037303030303030306330303030303030373030303030303163303130303030303630393030303036323037303030303438303330303030316130343030303064663032303030306563303430303030323730363030303062313033303030303237303630303030636230373030303035353035303030303030303030303030303130303030303038383136303030306661316130303030303030303030303030333030303030303033303030303030303230303030303030323030303030303163303130303030663530613030303030303030303030303031303030303030333931333030303030363061303030303030303030303030303330303030303030333030303030303032303030303030303230303030303031633031303030303036303930303030303130303030303030303030303030303339313330303030333430333030303030303030303030303030303030303030303030303030303030323030303030303032303030303030316330313030303030363039303030303030303030303030303030303030303064313331303030303039323330303030303030303030303030303030303030303064303030303030303430303030303030343030303030303163303130303030303630393030303061613061303030303930303630303030373835363334313230343030303030303636303030303030303130303030303030313030303030303062303030303030303030303030303030313030303030303032303030303030303330303030303030343030303030303035303030303030303630303030303030373030303030303038303030303030303930303030303030613030303030303034303030303030363430303632303036663030303030303066303030303030353330303631303037363030363930303665303036373030373330303431303036333030363330303666303037353030366530303734303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323830352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D223031343835363639303130303030303036343030363230303666303030303030343630303462303035663030353330303631303037363030363930303665303036373030373330303431303036333030363330303666303037353030366530303734303035663030353030303635303037323030373330303666303036653030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F536176696E67734163636F756E745F506572736F6E202864626F2927206265747765656E2027506572736F6E202864626F292720616E642027536176696E67734163636F756E74202864626F292722206C6566743D2231333536382220746F703D22323232343322206C6F676963616C69643D2231362220636F6E74726F6C69643D223822206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223531383222206865696768743D2238313522206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2234392E353638393635353137323431342220636F6E74726F6C69643D2239222077696474683D223338333522206865696768743D223334342220736964653D223122206265686176696F723D2233222068696D65747269633D223232373122206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D2231343234342220793D223232383235222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D223322206465737469643D22372220736F75726365617474616368706F696E743D223830222064657374617474616368706F696E743D22373522207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D2231383435302220793D223232363530222F3E3C706F696E7420783D2231333836382220793D223232363530222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139363262323235383936326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D2231343234342220746F703D22323238323522206C6F676963616C69643D2231372220636F6E74726F6C69643D223922206D617374657269643D2238222068696E74313D2230222068696E74323D2230222077696474683D223338333522206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D223030303230303030666230653030303035383031303030303033303030303030303030303035303030303830303830303030383030313030303030303135303030313030303030303930303134343432303130303036353436313638366636643631313830303436303034623030356630303533303036313030373630303639303036653030363730303733303034313030363330303633303036663030373530303665303037343030356630303530303036353030373230303733303036663030366530303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D227379736469616772616D73202864626F2922206C6566743D222D3930302220746F703D223738303022206C6F676963616C69643D2231382220636F6E74726F6C69643D22313022206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223537363822206865696768743D223433363622206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D2232313433333431323038303030303030383831363030303030653131303030303738353633343132303730303030303031343031303030303733303037393030373330303634303036393030363130303637303037323030363130303664303037333030323030303238303036343030363230303666303032393030303030303031303030303030303030303030303038306463383137343030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030313030303030303035303030303030353430303030303032633030303030303263303030303030326330303030303033343030303030303030303030303030303030303030303032323239303030303635313530303030303030303030303032643031303030303037303030303030306330303030303030373030303030303163303130303030303630393030303036323037303030303438303330303030316130343030303064663032303030306563303430303030323730363030303062313033303030303237303630303030636230373030303035353035303030303030303030303030303130303030303038383136303030303065313130303030303030303030303030353030303030303035303030303030303230303030303030323030303030303163303130303030663530613030303030303030303030303031303030303030333931333030303030363061303030303030303030303030303330303030303030333030303030303032303030303030303230303030303031633031303030303036303930303030303130303030303030303030303030303339313330303030333430333030303030303030303030303030303030303030303030303030303030323030303030303032303030303030316330313030303030363039303030303030303030303030303030303030303064313331303030303039323330303030303030303030303030303030303030303064303030303030303430303030303030343030303030303163303130303030303630393030303061613061303030303930303630303030373835363334313230343030303030303630303030303030303130303030303030313030303030303062303030303030303030303030303030313030303030303032303030303030303330303030303030343030303030303035303030303030303630303030303030373030303030303038303030303030303930303030303030613030303030303034303030303030363430303632303036663030303030303063303030303030373330303739303037333030363430303639303036313030363730303732303036313030366430303733303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323830352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D2254797065446F634964656E74697479202864626F2922206C6566743D2232303430302220746F703D22333132303022206C6F676963616C69643D2231392220636F6E74726F6C69643D22313122206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223537363822206865696768743D223234363122206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D223231343333343132303830303030303038383136303030303964303930303030373835363334313230373030303030303134303130303030353430303739303037303030363530303434303036663030363330303439303036343030363530303665303037343030363930303734303037393030323030303238303036343030363230303666303032393030303030303063386130613565313438613061356531343861306135653163386130613565316338613061356532343861306135653234386130613565326338613061356532633861306135653334386130613565333438613061356533633861306135653363386130613565643438613061356564343861306135656463386130613565646338613061356565343861306135656534386130613565656338613061356565633861306135656634386130613565663438613061356566633861306135656663386130613565303438623061356530343862306135653063386230613565306338623061356531343862306135653134386230613565316338623061356531633862306135653234386230613565323438623061356532633862306135653263386230613565333438623061356533343862306135653363386230613565336338623061356534343862306135653434386230613565346338623061356534633862306135653534386230613565353438623061356535633862306135653563386230303030303030303030303030303030303030303031303030303030303530303030303035343030303030303263303030303030326330303030303032633030303030303334303030303030303030303030303030303030303030303232323930303030363531353030303030303030303030303264303130303030303730303030303030633030303030303037303030303030316330313030303030363039303030303632303730303030343830333030303031613034303030306466303230303030656330343030303032373036303030306231303330303030323730363030303063623037303030303535303530303030303030303030303030313030303030303838313630303030396430393030303030303030303030303032303030303030303230303030303030323030303030303032303030303030316330313030303066353061303030303030303030303030303130303030303033393133303030303761303530303030303030303030303030313030303030303031303030303030303230303030303030323030303030303163303130303030303630393030303030313030303030303030303030303030333931333030303033343033303030303030303030303030303030303030303030303030303030303032303030303030303230303030303031633031303030303036303930303030303030303030303030303030303030306431333130303030303932333030303030303030303030303030303030303030306430303030303030343030303030303034303030303030316330313030303030363039303030306161306130303030393030363030303037383536333431323034303030303030363830303030303030313030303030303031303030303030306230303030303030303030303030303031303030303030303230303030303030333030303030303034303030303030303530303030303030363030303030303037303030303030303830303030303030393030303030303061303030303030303430303030303036343030363230303666303030303030313030303030303035343030373930303730303036353030343430303666303036333030343930303634303036353030366530303734303036393030373430303739303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323830352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303134383536363930313030303030303634303036323030366630303030303034363030346230303566303035303030363530303732303037333030366630303665303035663030353430303739303037303030363530303434303036663030363330303439303036343030363530303665303037343030363930303734303037393030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F506572736F6E5F54797065446F634964656E74697479202864626F2927206265747765656E202754797065446F634964656E74697479202864626F292720616E642027506572736F6E202864626F292722206C6566743D2232323234332220746F703D22323935323722206C6F676963616C69643D2232302220636F6E74726F6C69643D22313222206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D2238313522206865696768743D223233363922206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2231322E373637393131383138373338352220636F6E74726F6C69643D223133222077696474683D223339353122206865696768743D223334342220736964653D223022206265686176696F723D2233222068696D65747269633D2231323422206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D2232323832352220793D223330373735222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D22313122206465737469643D22332220736F75726365617474616368706F696E743D223238222064657374617474616368706F696E743D22353522207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D2232323635302220793D223331323030222F3E3C706F696E7420783D2232323635302220793D223330323236222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139363262323231383936326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D2232323832352220746F703D22333037373522206C6F676963616C69643D2232312220636F6E74726F6C69643D22313322206D617374657269643D223132222068696E74313D2230222068696E74323D2230222077696474683D223339353122206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D22303030323030303036663066303030303538303130303030303330303030303030303030303530303030383030383030303038303031303030303030313530303031303030303030393030313434343230313030303635343631363836663664363131393030343630303462303035663030353030303635303037323030373330303666303036653030356630303534303037393030373030303635303034343030366630303633303034393030363430303635303036653030373430303639303037343030373930303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D2254797065536176696E67734163636F756E74202864626F2922206C6566743D22313230302220746F703D22323031303022206C6F676963616C69643D2232322220636F6E74726F6C69643D22313422206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223631313222206865696768743D223831373622206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D223231343333343132303830303030303065303137303030306630316630303030373835363334313230373030303030303134303130303030353430303739303037303030363530303533303036313030373630303639303036653030363730303733303034313030363330303633303036663030373530303665303037343030323030303238303036343030363230303666303032393030303030303061356564633866306135656538386630613565653838663061356566343866306135656634386630613565303039303061356530303930306135653063393030613565306339303061356531633930306135653163393030613565323839303061356532383930306135653334393030613565333439303061356534303930306135653430393030613565346339303061356534633930306135653538393030613565353839303061356536343930306135653634393030613565373039303061356537303930306135653763393030613565376339303061356538383930306135653838393030613565393439303061356539343930306135656130393030613565613039303061356561633930306135656163393030613565623839303061356562383930306135656334393030613565633439303061356564303930306135656430393030613565646339303061356564633930306135656538393030613565653839303061356566343930306135656634393030303030303030303030303030303030303030303031303030303030303530303030303035343030303030303263303030303030326330303030303032633030303030303334303030303030303030303030303030303030303030303232323930303030636232343030303030303030303030303264303130303030306430303030303030633030303030303037303030303030316330313030303030363039303030303632303730303030343830333030303031613034303030306466303230303030656330343030303032373036303030306231303330303030323730363030303063623037303030303535303530303030303030303030303030313030303030306530313730303030663031663030303030303030303030303062303030303030306230303030303030323030303030303032303030303030316330313030303062383062303030303030303030303030303130303030303033393133303030306330303730303030303030303030303030323030303030303032303030303030303230303030303030323030303030303163303130303030303630393030303030313030303030303030303030303030333931333030303033343033303030303030303030303030303030303030303030303030303030303032303030303030303230303030303031633031303030303036303930303030303030303030303030303030303030306431333130303030303932333030303030303030303030303030303030303030306430303030303030343030303030303034303030303030316330313030303030363039303030306161306130303030393030363030303037383536333431323034303030303030366530303030303030313030303030303031303030303030306230303030303030303030303030303031303030303030303230303030303030333030303030303034303030303030303530303030303030363030303030303037303030303030303830303030303030393030303030303061303030303030303430303030303036343030363230303666303030303030313330303030303035343030373930303730303036353030353330303631303037363030363930303665303036373030373330303431303036333030363330303666303037353030366530303734303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C333030302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D2230313438353636393031303030303030363430303632303036663030303030303436303034623030356630303534303037393030373030303635303035333030363130303736303036393030366530303637303037333030343130303633303036333030366630303735303036653030373430303566303034333030366630303639303036653030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F54797065536176696E67734163636F756E745F436F696E202864626F2927206265747765656E2027436F696E202864626F292720616E64202754797065536176696E67734163636F756E74202864626F292722206C6566743D22323539332220746F703D22323735373722206C6F676963616C69643D2232332220636F6E74726F6C69643D22313522206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D2238313522206865696768743D223337313922206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2235362E363139353931373935393937382220636F6E74726F6C69643D223136222077696474683D223431383122206865696768743D223334342220736964653D223022206265686176696F723D2233222068696D65747269633D223133313522206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D22333137352220793D223239313335222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D223222206465737469643D2231342220736F75726365617474616368706F696E743D223336222064657374617474616368706F696E743D22323322207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D22333030302220793D223330363030222F3E3C706F696E7420783D22333030302220793D223238323736222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139313262323239383931326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D22333137352220746F703D22323931333522206C6F676963616C69643D2232342220636F6E74726F6C69643D22313622206D617374657269643D223135222068696E74313D2230222068696E74323D2230222077696474683D223431383122206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D2230303032303030303535313030303030353830313030303030333030303030303030303030353030303038303038303030303830303130303030303031353030303130303030303039303031343434323031303030363534363136383666366436313161303034363030346230303566303035343030373930303730303036353030353330303631303037363030363930303665303036373030373330303431303036333030363330303666303037353030366530303734303035663030343330303666303036393030366530303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D223031313636343538303130303030303036343030363230303666303030303030343630303462303035663030353330303631303037363030363930303665303036373030373330303431303036333030363330303666303037353030366530303734303035663030353430303739303037303030363530303533303036313030373630303639303036653030363730303733303034313030363330303633303036663030373530303665303037343030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F536176696E67734163636F756E745F54797065536176696E67734163636F756E74202864626F2927206265747765656E202754797065536176696E67734163636F756E74202864626F292720616E642027536176696E67734163636F756E74202864626F292722206C6566743D22373031322220746F703D22323232343322206C6F676963616C69643D2232352220636F6E74726F6C69643D22313722206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223133383822206865696768743D2238313522206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2235382E353631363433383335363136342220636F6E74726F6C69643D223138222077696474683D223537363822206865696768743D223334342220736964653D223122206265686176696F723D2233222068696D65747269633D2234363122206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D22343339382220793D223232313331222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D22313422206465737469643D22372220736F75726365617474616368706F696E743D22313133222064657374617474616368706F696E743D22373422207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D22373331322220793D223232363530222F3E3C706F696E7420783D22383130302220793D223232363530222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139313262323235383931326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D22343339382220746F703D22323231333122206C6F676963616C69643D2232362220636F6E74726F6C69643D22313822206D617374657269643D223137222068696E74313D2230222068696E74323D2230222077696474683D223537363822206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D223030303230303030383831363030303035383031303030303033303030303030303030303035303030303830303830303030383030313030303030303135303030313030303030303930303134343432303130303036353436313638366636643631323430303436303034623030356630303533303036313030373630303639303036653030363730303733303034313030363330303633303036663030373530303665303037343030356630303534303037393030373030303635303035333030363130303736303036393030366530303637303037333030343130303633303036333030366630303735303036653030373430303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D2230313030303030633031303030303030363430303632303036663030303030303436303034623030356630303432303036353030366530303635303036363030363130303633303037343030366630303732303035663030353030303635303037323030373330303666303036653030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F42656E65666163746F725F506572736F6E202864626F2927206265747765656E2027506572736F6E202864626F292720616E64202742656E65666163746F72202864626F292722206C6566743D2231393534332220746F703D22313530393222206C6F676963616C69643D2232372220636F6E74726F6C69643D22313922206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D2238313522206865696768743D223736353422206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2235392E363232333735393832313734332220636F6E74726F6C69643D223230222077696474683D223331373122206865696768743D223334342220736964653D223022206265686176696F723D2233222068696D65747269633D223337333122206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D2232303132352220793D223138313830222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D223322206465737469643D22312220736F75726365617474616368706F696E743D223138222064657374617474616368706F696E743D22343522207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D2231393935302220793D223232303530222F3E3C706F696E7420783D2231393935302220793D223135373931222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139373262323235383937326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D2232303132352220746F703D22313831383022206C6F676963616C69643D2232382220636F6E74726F6C69643D22323022206D617374657269643D223139222068696E74313D2230222068696E74323D2230222077696474683D223331373122206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D2230303032303030303633306330303030353830313030303030333030303030303030303030353030303038303038303030303830303130303030303031353030303130303030303039303031343434323031303030363534363136383666366436313134303034363030346230303566303034323030363530303665303036353030363630303631303036333030373430303666303037323030356630303530303036353030373230303733303036663030366530303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D2255736572202864626F2922206C6566743D22363330302220746F703D223139353022206C6F676963616C69643D2232392220636F6E74726F6C69643D22323122206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223337333122206865696768743D223632373122206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D22323134333334313230383030303030303933306530303030376631383030303037383536333431323037303030303030313430313030303035353030373330303635303037323030323030303238303036343030363230303666303032393030303030303562326330303030303030303030303030303030303036303731343030303030303030303030303032343430303030303030303030303030313434303030303030303030303034303666343030303030303030303030303066303366303030303030303030303030303030303030303030303030303130303030303030313030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030306630336630303030303030303030303030303030303030303030303030303030303030306638313634393636303030303030303030303030303030306634313734393636323062333439363639383030356232633938303035623263303230303030303030323030303030303030303030303030303030303030303030303030303030303030303030303030303230303030303030303030386234333030303032303431303038303864343330303030323034313030303038623433303030303730343130303030303030303030303030303030303030303030303030303030303030303030303030303030303130303030303030353030303030303534303030303030326330303030303032633030303030303263303030303030333430303030303030303030303030303030303030303030316232353030303031333165303030303030303030303030326430313030303030643030303030303063303030303030303730303030303031633031303030303534303630303030323830353030303034383033303030303161303430303030646630323030303037353033303030303237303630303030623130333030303032373036303030306362303730303030353530353030303030303030303030303031303030303030393330653030303037663138303030303030303030303030303530303030303030353030303030303032303030303030303230303030303031633031303030303732303630303030303030303030303030313030303030303933306530303030333430333030303030303030303030303030303030303030303030303030303030323030303030303032303030303030316330313030303035343036303030303031303030303030303030303030303039333065303030303334303330303030303030303030303030303030303030303030303030303030303230303030303030323030303030303163303130303030353430363030303030303030303030303030303030303030313232343030303061383233303030303030303030303030303030303030303030643030303030303034303030303030303430303030303031633031303030303534303630303030373130373030303039323034303030303738353633343132303430303030303035323030303030303031303030303030303130303030303030623030303030303030303030303030303130303030303030323030303030303033303030303030303430303030303030353030303030303036303030303030303730303030303030383030303030303039303030303030306130303030303030343030303030303634303036323030366630303030303030353030303030303535303037333030363530303732303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C313632302C312C313332302C352C3838352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C313635302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C313632302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C313632302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C313632302C31322C313930352C31312C313137302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D225573657243616E416363657373202864626F2922206C6566743D2231333530302220746F703D223231303022206C6F676963616C69643D2233312220636F6E74726F6C69643D22323222206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223439323122206865696768743D223530303122206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D22323134333334313230383030303030303339313330303030383931333030303037383536333431323037303030303030313430313030303035353030373330303635303037323030343330303631303036653030343130303633303036333030363530303733303037333030323030303238303036343030363230303666303032393030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303130303030303030353030303030303534303030303030326330303030303032633030303030303263303030303030333430303030303030303030303030303030303030303030323232393030303036343138303030303030303030303030326430313030303030643030303030303063303030303030303730303030303031633031303030303036303930303030363230373030303034383033303030303161303430303030646630323030303065633034303030303237303630303030623130333030303032373036303030306362303730303030353530353030303030303030303030303031303030303030333931333030303038393133303030303030303030303030303630303030303030363030303030303032303030303030303230303030303031633031303030303135303930303030303030303030303030313030303030303339313330303030333430333030303030303030303030303030303030303030303030303030303030323030303030303032303030303030316330313030303030363039303030303031303030303030303030303030303033393133303030303334303330303030303030303030303030303030303030303030303030303030303230303030303030323030303030303163303130303030303630393030303030303030303030303030303030303030643133313030303030393233303030303030303030303030303030303030303030643030303030303034303030303030303430303030303031633031303030303036303930303030616130613030303039303036303030303738353633343132303430303030303036343030303030303031303030303030303130303030303030623030303030303030303030303030303130303030303030323030303030303033303030303030303430303030303030353030303030303036303030303030303730303030303030383030303030303039303030303030306130303030303030343030303030303634303036323030366630303030303030653030303030303535303037333030363530303732303034333030363130303665303034313030363330303633303036353030373330303733303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323332352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D223031303030303030303130303030303036343030363230303666303030303030343630303462303035663030373530303733303036353030373230303633303036313030366530303631303036333030363330303635303037333030373330303566303035353030373330303635303037323030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F7573657263616E6163636573735F55736572202864626F2927206265747765656E202755736572202864626F292720616E6420275573657243616E416363657373202864626F292722206C6566743D22393733312220746F703D223232393322206C6F676963616C69643D2233362220636F6E74726F6C69643D22323322206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223430363922206865696768743D2238313522206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2234392E393833343338323234353737372220636F6E74726F6C69643D223234222077696474683D223333343522206865696768743D223334342220736964653D223122206265686176696F723D2233222068696D65747269633D223137333322206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D2231303039322220793D2232313831222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D22323122206465737469643D2232322220736F75726365617474616368706F696E743D223537222064657374617474616368706F696E743D22373022207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D2231303033312220793D2232373030222F3E3C706F696E7420783D2231333530302220793D2232373030222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139333262323235383933326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D2231303039322220746F703D223231383122206C6F676963616C69643D2233372220636F6E74726F6C69643D22323422206D617374657269643D223233222068696E74313D2230222068696E74323D2230222077696474683D223333343522206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D223030303230303030313130643030303035383031303030303033303030303030303030303035303030303830303830303030383030313030303030303135303030313030303030303930303134343432303130303036353436313638366636643631313530303436303034623030356630303735303037333030363530303732303036333030363130303665303036313030363330303633303036353030373330303733303035663030353530303733303036353030373230303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D224D6F76656D656E74204341202864626F2922206C6566743D223435302220746F703D22333435303022206C6F676963616C69643D2233382220636F6E74726F6C69643D22323522206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223439323122206865696768743D223639303622206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D2232313433333431323038303030303030333931333030303066613161303030303738353633343132303730303030303031343031303030303464303036663030373630303635303036643030363530303665303037343030323030303433303034313030323030303238303036343030363230303666303032393030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030313030303030303035303030303030353430303030303032633030303030303263303030303030326330303030303033343030303030303030303030303030303030303030303032323239303030306435316630303030303030303030303032643031303030303064303030303030306330303030303030373030303030303163303130303030303630393030303036323037303030303438303330303030316130343030303064663032303030306563303430303030323730363030303062313033303030303237303630303030636230373030303035353035303030303030303030303030303130303030303033393133303030306661316130303030303030303030303030373030303030303037303030303030303230303030303030323030303030303163303130303030313530393030303030303030303030303031303030303030333931333030303033343033303030303030303030303030303030303030303030303030303030303032303030303030303230303030303031633031303030303036303930303030303130303030303030303030303030303339313330303030333430333030303030303030303030303030303030303030303030303030303030323030303030303032303030303030316330313030303030363039303030303030303030303030303030303030303064313331303030303039323330303030303030303030303030303030303030303064303030303030303430303030303030343030303030303163303130303030303630393030303061613061303030303930303630303030373835363334313230343030303030303630303030303030303130303030303030313030303030303062303030303030303030303030303030313030303030303032303030303030303330303030303030343030303030303035303030303030303630303030303030373030303030303038303030303030303930303030303030613030303030303034303030303030363430303632303036663030303030303063303030303030346430303666303037363030363530303664303036353030366530303734303032303030343330303431303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323332352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D2230313435343334343031303030303030363430303632303036663030303030303436303034623030356630303464303036663030373630303635303036643030363530303665303037343030323030303433303034313030356630303533303036313030373630303639303036653030363730303733303034313030363330303633303036663030373530303665303037343030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F4D6F76656D656E742043415F536176696E67734163636F756E74202864626F2927206265747765656E2027536176696E67734163636F756E74202864626F292720616E6420274D6F76656D656E74204341202864626F292722206C6566743D22343837312220746F703D22323837313122206C6F676963616C69643D2233392220636F6E74726F6C69643D22323622206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223337383722206865696768743D223634383922206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2235302220636F6E74726F6C69643D223237222077696474683D223438313622206865696768743D223334342220736964653D223022206265686176696F723D2233222068696D65747269633D223430343722206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D22313735392220793D223331343334222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D223722206465737469643D2232352220736F75726365617474616368706F696E743D2231222064657374617474616368706F696E743D22363222207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D22383235302220793D223239343036222F3E3C706F696E7420783D22383235302220793D223331393533222F3E3C706F696E7420783D22353235302220793D223331393533222F3E3C706F696E7420783D22353235302220793D223334353030222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139353262323264383935326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D22313735392220746F703D22333134333422206C6F676963616C69643D2234302220636F6E74726F6C69643D22323722206D617374657269643D223236222068696E74313D2230222068696E74323D2230222077696474683D223438313622206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D2230303032303030306430313230303030353830313030303030333030303030303030303030353030303038303038303030303830303130303030303031353030303130303030303039303031343434323031303030363534363136383666366436313164303034363030346230303566303034643030366630303736303036353030366430303635303036653030373430303230303034333030343130303566303035333030363130303736303036393030366530303637303037333030343130303633303036333030366630303735303036653030373430303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D22547970654D6F76656D656E74204341202864626F2922206C6566743D22313230302220746F703D22343434303022206C6F676963616C69643D2234312220636F6E74726F6C69643D22323822206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223439323122206865696768743D223330393622206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D223231343333343132303830303030303033393133303030303138306330303030373835363334313230373030303030303134303130303030353430303739303037303030363530303464303036663030373630303635303036643030363530303665303037343030323030303433303034313030323030303238303036343030363230303666303032393030303030303238303030303030663236613633326537316465306532303032303030303030326236623633326530653031303030303332366236333265303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030623030303030303738346338633265363336303030303030303030323866393863363831636539393664653633363030303030376630306630303030303030323265396564316630303030303030306634303030303030356236633633326561396465306532303030303030303030316130303030303035653664363332656531646530653230303030303030303033313030303030303837366436333265313864663065323030303030303030303762303030303030633736643633326536623237633631663030303030303030313630303030303034623665363332656362323663363166303030303030303030343030303030303661366536333265316232376336316630303030303030303361303030303030303030303030303030303030303030303031303030303030303530303030303035343030303030303263303030303030326330303030303032633030303030303334303030303030303030303030303030303030303030303232323930303030663331303030303030303030303030303264303130303030306430303030303030633030303030303037303030303030316330313030303030363039303030303632303730303030343830333030303031613034303030306466303230303030656330343030303032373036303030306231303330303030323730363030303063623037303030303535303530303030303030303030303030313030303030303339313330303030313830633030303030303030303030303033303030303030303330303030303030323030303030303032303030303030316330313030303031353039303030303030303030303030303130303030303033393133303030303334303330303030303030303030303030303030303030303030303030303030303230303030303030323030303030303163303130303030303630393030303030313030303030303030303030303030333931333030303033343033303030303030303030303030303030303030303030303030303030303032303030303030303230303030303031633031303030303036303930303030303030303030303030303030303030306431333130303030303932333030303030303030303030303030303030303030306430303030303030343030303030303034303030303030316330313030303030363039303030306161306130303030393030363030303037383536333431323034303030303030363830303030303030313030303030303031303030303030306230303030303030303030303030303031303030303030303230303030303030333030303030303034303030303030303530303030303030363030303030303037303030303030303830303030303030393030303030303061303030303030303430303030303036343030363230303666303030303030313030303030303035343030373930303730303036353030346430303666303037363030363530303664303036353030366530303734303032303030343330303431303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323332352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D223031346662373261303130303030303036343030363230303666303030303030343630303462303035663030346430303666303037363030363530303664303036353030366530303734303032303030343330303431303035663030353430303739303037303030363530303464303036663030373630303635303036643030363530303665303037343030323030303433303034313030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F4D6F76656D656E742043415F547970654D6F76656D656E74204341202864626F2927206265747765656E2027547970654D6F76656D656E74204341202864626F292720616E6420274D6F76656D656E74204341202864626F292722206C6566743D22333034332220746F703D22343037303722206C6F676963616C69643D2234322220636F6E74726F6C69643D22323922206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D2238313522206865696768743D223433383922206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2235302220636F6E74726F6C69643D223330222077696474683D223532343822206865696768743D223334342220736964653D223122206265686176696F723D2233222068696D65747269633D223134393722206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D222D313937332220793D223432373331222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D22323822206465737469643D2232352220736F75726365617474616368706F696E743D223238222064657374617474616368706F696E743D22333922207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D22333435302220793D223434343030222F3E3C706F696E7420783D22333435302220793D223431343036222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139353262323239383935326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D222D313937332220746F703D22343237333122206C6F676963616C69643D2234332220636F6E74726F6C69643D22333022206D617374657269643D223239222068696E74313D2230222068696E74323D2230222077696474683D223532343822206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D223030303230303030383031343030303035383031303030303033303030303030303030303035303030303830303830303030383030313030303030303135303030313030303030303930303134343432303130303036353436313638366636643631316530303436303034623030356630303464303036663030373630303635303036643030363530303665303037343030323030303433303034313030356630303534303037393030373030303635303034643030366630303736303036353030366430303635303036653030373430303230303034333030343130303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D224163636F756E7453746174656D656E74202864626F2922206C6566743D22393330302220746F703D22333337353022206C6F676963616C69643D2234342220636F6E74726F6C69643D22333122206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223439323122206865696768743D223838313122206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D22323134333334313230383030303030303339313330303030366232323030303037383536333431323037303030303030313430313030303034313030363330303633303036663030373530303665303037343030353330303734303036313030373430303635303036643030363530303665303037343030323030303238303036343030363230303666303032393030303030303536336665366535363533663030303038303366303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303130303030303030353030303030303534303030303030326330303030303032633030303030303263303030303030333430303030303030303030303030303030303030303030653432613030303064353166303030303030303030303030326430313030303030643030303030303063303030303030303730303030303031633031303030303036303930303030363230373030303034383033303030303161303430303030646630323030303065633034303030303237303630303030623130333030303032373036303030306362303730303030353530353030303030303030303030303031303030303030333931333030303036623232303030303030303030303030303630303030303030363030303030303032303030303030303230303030303031633031303030303135303930303030303030303030303030313030303030303339313330303030333430333030303030303030303030303030303030303030303030303030303030323030303030303032303030303030316330313030303030363039303030303031303030303030303030303030303033393133303030303334303330303030303030303030303030303030303030303030303030303030303230303030303030323030303030303163303130303030303630393030303030303030303030303030303030303030643133313030303030393233303030303030303030303030303030303030303030643030303030303034303030303030303430303030303031633031303030303036303930303030616130613030303039303036303030303738353633343132303430303030303036613030303030303031303030303030303130303030303030623030303030303030303030303030303130303030303030323030303030303033303030303030303430303030303030353030303030303036303030303030303730303030303030383030303030303039303030303030306130303030303030343030303030303634303036323030366630303030303031313030303030303431303036333030363330303666303037353030366530303734303035333030373430303631303037343030363530303664303036353030366530303734303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323332352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303132303862373330313030303030303634303036323030366630303030303034363030346230303566303034313030363330303633303036663030373530303665303037343030353330303734303036313030373430303635303036643030363530303665303037343030356630303533303036313030373630303639303036653030363730303733303034313030363330303633303036663030373530303665303037343030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F4163636F756E7453746174656D656E745F536176696E67734163636F756E74202864626F2927206265747765656E2027536176696E67734163636F756E74202864626F292720616E6420274163636F756E7453746174656D656E74202864626F292722206C6566743D22393337312220746F703D22323837313122206C6F676963616C69643D2234372220636F6E74726F6C69643D22333222206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223235383722206865696768743D223537333922206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2234392E393836363233383633303238342220636F6E74726F6C69643D223333222077696474683D223534353122206865696768743D223334342220736964653D223022206265686176696F723D2233222068696D65747269633D223330373122206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D22353334372220793D223331333831222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D223722206465737469643D2233312220736F75726365617474616368706F696E743D223435222064657374617474616368706F696E743D223422207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D2231313535302220793D223239343036222F3E3C706F696E7420783D2231313535302220793D223331393030222F3E3C706F696E7420783D22393735302220793D223331393030222F3E3C706F696E7420783D22393735302220793D223333373530222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139313262323231383931326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D22353334372220746F703D22333133383122206C6F676963616C69643D2234382220636F6E74726F6C69643D22333322206D617374657269643D223332222068696E74313D2230222068696E74323D2230222077696474683D223534353122206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D22303030323030303034623135303030303538303130303030303330303030303030303030303530303030383030383030303038303031303030303030313530303031303030303030393030313434343230313030303635343631363836663664363132323030343630303462303035663030343130303633303036333030366630303735303036653030373430303533303037343030363130303734303036353030366430303635303036653030373430303566303035333030363130303736303036393030366530303637303037333030343130303633303036333030366630303735303036653030373430303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D224F626A65746976654163636F756E74202864626F2922206C6566743D2231383930302220746F703D22333537303022206C6F676963616C69643D2234392220636F6E74726F6C69643D22333422206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223439323122206865696768743D223735343122206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D223231343333343132303830303030303033393133303030303735316430303030373835363334313230373030303030303134303130303030346630303632303036613030363530303734303036393030373630303635303034313030363330303633303036663030373530303665303037343030323030303238303036343030363230303666303032393030303030303030303030303030303030303134343030303030303030303030343036663430303030303030303030303030663033663030303030303030303030303030303030303030303030303031303030303030303130303030303030303030303030303030303030303030303030303030303030303030303030303030303066303366303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303039633430363535643030303030303030303030303030303063343432363535643030303436363564613863663766326561386366376632653032303030303030303230303030303030303030303030303030303030303030303030303030303030303030303030303032303030303030303030303230343130303030323034313030303061303430303030303230343130303030323034313030303061303430303030303030303030303030303030303030303030303030303030303030303030303030303030303031303030303030303530303030303035343030303030303263303030303030326330303030303032633030303030303334303030303030303030303030303030303030303030303232323930303030643531663030303030303030303030303264303130303030306430303030303030633030303030303037303030303030316330313030303030363039303030303632303730303030343830333030303031613034303030306466303230303030656330343030303032373036303030306231303330303030323730363030303063623037303030303535303530303030303030303030303030313030303030303339313330303030373531643030303030303030303030303039303030303030303930303030303030323030303030303032303030303030316330313030303031353039303030303030303030303030303130303030303033393133303030303334303330303030303030303030303030303030303030303030303030303030303230303030303030323030303030303163303130303030303630393030303030313030303030303030303030303030333931333030303033343033303030303030303030303030303030303030303030303030303030303032303030303030303230303030303031633031303030303036303930303030303030303030303030303030303030306431333130303030303932333030303030303030303030303030303030303030306430303030303030343030303030303034303030303030316330313030303030363039303030306161306130303030393030363030303037383536333431323034303030303030363830303030303030313030303030303031303030303030306230303030303030303030303030303031303030303030303230303030303030333030303030303034303030303030303530303030303030363030303030303037303030303030303830303030303030393030303030303061303030303030303430303030303036343030363230303666303030303030313030303030303034663030363230303661303036353030373430303639303037363030363530303431303036333030363330303666303037353030366530303734303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323332352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D223031323038623733303130303030303036343030363230303666303030303030343630303462303035663030346630303632303036613030363530303734303036393030373630303635303034313030363330303633303036663030373530303665303037343030356630303533303036313030373630303639303036653030363730303733303034313030363330303633303036663030373530303665303037343030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F4F626A65746976654163636F756E745F536176696E67734163636F756E74202864626F2927206265747765656E2027536176696E67734163636F756E74202864626F292720616E6420274F626A65746976654163636F756E74202864626F292722206C6566743D2231333234332220746F703D22323837313122206C6F676963616C69643D2235302220636F6E74726F6C69643D22333522206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223631383722206865696768743D223736383922206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2235302220636F6E74726F6C69643D223336222077696474683D223531393122206865696768743D223334342220736964653D223022206265686176696F723D2233222068696D65747269633D223538343722206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D2231323537322220793D223331313430222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D223722206465737469643D2233342220736F75726365617474616368706F696E743D223733222064657374617474616368706F696E743D223022207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D2231333635302220793D223239343036222F3E3C706F696E7420783D2231333635302220793D223330393635222F3E3C706F696E7420783D2231393035302220793D223330393635222F3E3C706F696E7420783D2231393035302220793D223335373030222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139353262323231383935326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D2231323537322220746F703D22333131343022206C6F676963616C69643D2235312220636F6E74726F6C69643D22333622206D617374657269643D223335222068696E74313D2230222068696E74323D2230222077696474683D223531393122206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D223030303230303030343731343030303035383031303030303033303030303030303030303035303030303830303830303030383030313030303030303135303030313030303030303930303134343432303130303036353436313638366636643631323130303436303034623030356630303466303036323030366130303635303037343030363930303736303036353030343130303633303036333030366630303735303036653030373430303566303035333030363130303736303036393030366530303637303037333030343130303633303036333030366630303735303036653030373430303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D224D6F7620434F20496E746572657374202864626F2922206C6566743D2231313130302220746F703D22343530303022206C6F676963616C69643D2235322220636F6E74726F6C69643D22333722206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223439323122206865696768743D223530303122206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D223231343333343132303830303030303033393133303030303839313330303030373835363334313230373030303030303134303130303030346430303666303037363030323030303433303034663030323030303439303036653030373430303635303037323030363530303733303037343030323030303238303036343030363230303666303032393030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303031303030303030303530303030303035343030303030303263303030303030326330303030303032633030303030303334303030303030303030303030303030303030303030303232323930303030303932333030303030303030303030303264303130303030306430303030303030633030303030303037303030303030316330313030303030363039303030303632303730303030343830333030303031613034303030306466303230303030656330343030303032373036303030306231303330303030323730363030303063623037303030303535303530303030303030303030303030313030303030303339313330303030383931333030303030303030303030303036303030303030303630303030303030323030303030303032303030303030316330313030303031353039303030303030303030303030303130303030303033393133303030303334303330303030303030303030303030303030303030303030303030303030303230303030303030323030303030303163303130303030303630393030303030313030303030303030303030303030333931333030303033343033303030303030303030303030303030303030303030303030303030303032303030303030303230303030303031633031303030303036303930303030303030303030303030303030303030306431333130303030303932333030303030303030303030303030303030303030306430303030303030343030303030303034303030303030316330313030303030363039303030306161306130303030393030363030303037383536333431323034303030303030363830303030303030313030303030303031303030303030306230303030303030303030303030303031303030303030303230303030303030333030303030303034303030303030303530303030303030363030303030303037303030303030303830303030303030393030303030303061303030303030303430303030303036343030363230303666303030303030313030303030303034643030366630303736303032303030343330303466303032303030343930303665303037343030363530303732303036353030373330303734303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323332352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303131313539373630313030303030303634303036323030366630303030303034363030346230303566303034643030366630303736303032303030343330303466303032303030343930303665303037343030363530303732303036353030373330303734303035663030346630303632303036613030363530303734303036393030373630303635303034313030363330303633303036663030373530303665303037343030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F4D6F7620434F20496E7465726573745F4F626A65746976654163636F756E74202864626F2927206265747765656E20274F626A65746976654163636F756E74202864626F292720616E6420274D6F7620434F20496E746572657374202864626F292722206C6566743D2231353732312220746F703D22343230343322206C6F676963616C69643D2235332220636F6E74726F6C69643D22333822206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223334373922206865696768743D223334383722206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2231362220636F6E74726F6C69643D223339222077696474683D223533303622206865696768743D223334342220736964653D223022206265686176696F723D2233222068696D65747269633D2238393222206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D2231323539332220793D223431393331222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D22333422206465737469643D2233372220736F75726365617474616368706F696E743D22313532222064657374617474616368706F696E743D22363522207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D2231383930302220793D223432343530222F3E3C706F696E7420783D2231373436312220793D223432343530222F3E3C706F696E7420783D2231373436312220793D223435313530222F3E3C706F696E7420783D2231363032312220793D223435313530222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139353262323235383935326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D2231323539332220746F703D22343139333122206C6F676963616C69643D2235342220636F6E74726F6C69643D22333922206D617374657269643D223338222068696E74313D2230222068696E74323D2230222077696474683D223533303622206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D22303030323030303062613134303030303538303130303030303330303030303030303030666666666666303030383030303038303031303030303030313530303031303030303030393030313434343230313030303635343631363836663664363132323030343630303462303035663030346430303666303037363030323030303433303034663030323030303439303036653030373430303635303037323030363530303733303037343030356630303466303036323030366130303635303037343030363930303736303036353030343130303633303036333030366630303735303036653030373430303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D22547970654D6F76434F496E74202864626F2922206C6566743D2231313235302220746F703D22353334303022206C6F676963616C69643D2235352220636F6E74726F6C69643D22343022206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223439323122206865696768743D223234363122206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D223231343333343132303830303030303033393133303030303964303930303030373835363334313230373030303030303134303130303030353430303739303037303030363530303464303036663030373630303433303034663030343930303665303037343030323030303238303036343030363230303666303032393030303030303030303030306530373834303030303030303030303065303731343030303030303030303030303031343430303030303030303030303030663033663030303030303030303030303030303030303030303030303031303030303030303130303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030663033663030303030303030303030303030303039633430363535643030303030303030303030303030303063343432363535643030303436363564623064316532316662306431653231663032303030303030303230303030303030303030303030303030303030303030303030303030303030303030303030303032303030303030303030303230343130303030633734333030303032303431303038306339343330303030613034303030303063373433303030303030303030303030303030303030303030303030303030303030303030303030303030303031303030303030303530303030303035343030303030303263303030303030326330303030303032633030303030303334303030303030303030303030303030303030303030303232323930303030303932333030303030303030303030303264303130303030306430303030303030633030303030303037303030303030316330313030303030363039303030303632303730303030343830333030303031613034303030306466303230303030656330343030303032373036303030306231303330303030323730363030303063623037303030303535303530303030303030303030303030313030303030303339313330303030396430393030303030303030303030303032303030303030303230303030303030323030303030303032303030303030316330313030303031353039303030303030303030303030303130303030303033393133303030303334303330303030303030303030303030303030303030303030303030303030303230303030303030323030303030303163303130303030303630393030303030313030303030303030303030303030333931333030303033343033303030303030303030303030303030303030303030303030303030303032303030303030303230303030303031633031303030303036303930303030303030303030303030303030303030306431333130303030303932333030303030303030303030303030303030303030306430303030303030343030303030303034303030303030316330313030303030363039303030306161306130303030393030363030303037383536333431323034303030303030363230303030303030313030303030303031303030303030306230303030303030303030303030303031303030303030303230303030303030333030303030303034303030303030303530303030303030363030303030303037303030303030303830303030303030393030303030303061303030303030303430303030303036343030363230303666303030303030306430303030303035343030373930303730303036353030346430303666303037363030343330303466303034393030366530303734303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323332352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303134353433343430313030303030303634303036323030366630303030303034363030346230303566303034643030366630303736303032303030343330303466303032303030343930303665303037343030363530303732303036353030373330303734303035663030353430303739303037303030363530303464303036663030373630303433303034663030343930303665303037343030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F4D6F7620434F20496E7465726573745F547970654D6F76434F496E74202864626F2927206265747765656E2027547970654D6F76434F496E74202864626F292720616E6420274D6F7620434F20496E746572657374202864626F292722206C6566743D2231323634332220746F703D22343933303222206C6F676963616C69643D2235362220636F6E74726F6C69643D22343122206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D2238313522206865696768743D223437393422206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2235302E3032393734343139393838312220636F6E74726F6C69643D223432222077696474683D223531303422206865696768743D223334342220736964653D223022206265686176696F723D2233222068696D65747269633D223137303022206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D2231333232352220793D223531353238222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D22343022206465737469643D2233372220736F75726365617474616368706F696E743D223232222064657374617474616368706F696E743D22323522207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D2231333035302220793D223533343030222F3E3C706F696E7420783D2231333035302220793D223530303031222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139323262323239383932326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D2231333232352220746F703D22353135323822206C6F676963616C69643D2235372220636F6E74726F6C69643D22343222206D617374657269643D223431222068696E74313D2230222068696E74323D2230222077696474683D223531303422206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D22303030323030303066303133303030303538303130303030303330303030303030303030666666666666303030383030303038303031303030303030313530303031303030303030393030313434343230313030303635343631363836663664363131663030343630303462303035663030346430303666303037363030323030303433303034663030323030303439303036653030373430303635303037323030363530303733303037343030356630303534303037393030373030303635303034643030366630303736303034333030346630303439303036653030373430303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D224D6F7620434F202864626F2922206C6566743D2232313930302220746F703D22343531353022206C6F676963616C69643D2235382220636F6E74726F6C69643D22343322206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223439323122206865696768743D223433363622206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D223231343333343132303830303030303033393133303030303065313130303030373835363334313230373030303030303134303130303030346430303666303037363030323030303433303034663030323030303238303036343030363230303666303032393030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303031303030303030303530303030303035343030303030303263303030303030326330303030303032633030303030303334303030303030303030303030303030303030303030303232323930303030303932333030303030303030303030303264303130303030306430303030303030633030303030303037303030303030316330313030303030363039303030303632303730303030343830333030303031613034303030306466303230303030656330343030303032373036303030306231303330303030323730363030303063623037303030303535303530303030303030303030303030313030303030303339313330303030306531313030303030303030303030303035303030303030303530303030303030323030303030303032303030303030316330313030303031353039303030303030303030303030303130303030303033393133303030303334303330303030303030303030303030303030303030303030303030303030303230303030303030323030303030303163303130303030303630393030303030313030303030303030303030303030333931333030303033343033303030303030303030303030303030303030303030303030303030303032303030303030303230303030303031633031303030303036303930303030303030303030303030303030303030306431333130303030303932333030303030303030303030303030303030303030306430303030303030343030303030303034303030303030316330313030303030363039303030306161306130303030393030363030303037383536333431323034303030303030353630303030303030313030303030303031303030303030306230303030303030303030303030303031303030303030303230303030303030333030303030303034303030303030303530303030303030363030303030303037303030303030303830303030303030393030303030303061303030303030303430303030303036343030363230303666303030303030303730303030303034643030366630303736303032303030343330303466303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323332352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303134383536363930313030303030303634303036323030366630303030303034363030346230303566303034643030366630303736303032303030343330303466303035663030346630303632303036613030363530303734303036393030373630303635303034313030363330303633303036663030373530303665303037343030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F4D6F7620434F5F4F626A65746976654163636F756E74202864626F2927206265747765656E20274F626A65746976654163636F756E74202864626F292720616E6420274D6F7620434F202864626F292722206C6566743D2232323234332220746F703D22343235343622206C6F676963616C69643D2235392220636F6E74726F6C69643D22343422206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D2238313522206865696768743D223333303422206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2234392E373632323832303931393137362220636F6E74726F6C69643D223435222077696474683D223430393522206865696768743D223334342220736964653D223022206265686176696F723D2233222068696D65747269633D2239343922206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D2231383338302220793D223434303138222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D22333422206465737469643D2234332220736F75726365617474616368706F696E743D223439222064657374617474616368706F696E743D223822207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D2232323635302220793D223433323431222F3E3C706F696E7420783D2232323635302220793D223435313530222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139393262323264383939326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D2231383338302220746F703D22343430313822206C6F676963616C69643D2236302220636F6E74726F6C69643D22343522206D617374657269643D223434222068696E74313D2230222068696E74323D2230222077696474683D223430393522206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D22303030323030303066663066303030303538303130303030303330303030303030303030666666666666303030383030303038303031303030303030313530303031303030303030393030313434343230313030303635343631363836663664363131393030343630303462303035663030346430303666303037363030323030303433303034663030356630303466303036323030366130303635303037343030363930303736303036353030343130303633303036333030366630303735303036653030373430303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D22547970654D6F76434F202864626F2922206C6566743D2232323335302220746F703D22353332353022206C6F676963616C69643D2236312220636F6E74726F6C69643D22343622206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223439323122206865696768743D223234363122206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D223231343333343132303830303030303033393133303030303964303930303030373835363334313230373030303030303134303130303030353430303739303037303030363530303464303036663030373630303433303034663030323030303238303036343030363230303666303032393030303030303030303038303366303030303830336664306366346633666437643635363366653665353635336630303030383033663030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303031303030303030303530303030303035343030303030303263303030303030326330303030303032633030303030303334303030303030303030303030303030303030303030303365323330303030303932333030303030303030303030303264303130303030306430303030303030633030303030303037303030303030316330313030303030363039303030303632303730303030343830333030303031613034303030306466303230303030656330343030303032373036303030306231303330303030323730363030303063623037303030303535303530303030303030303030303030313030303030303339313330303030396430393030303030303030303030303032303030303030303230303030303030323030303030303032303030303030316330313030303031353039303030303030303030303030303130303030303033393133303030303334303330303030303030303030303030303030303030303030303030303030303230303030303030323030303030303163303130303030303630393030303030313030303030303030303030303030333931333030303033343033303030303030303030303030303030303030303030303030303030303032303030303030303230303030303031633031303030303036303930303030303030303030303030303030303030306431333130303030303932333030303030303030303030303030303030303030306430303030303030343030303030303034303030303030316330313030303030363039303030306161306130303030393030363030303037383536333431323034303030303030356330303030303030313030303030303031303030303030306230303030303030303030303030303031303030303030303230303030303030333030303030303034303030303030303530303030303030363030303030303037303030303030303830303030303030393030303030303061303030303030303430303030303036343030363230303666303030303030306130303030303035343030373930303730303036353030346430303666303037363030343330303466303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22312220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323332352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22342C302C3238342C302C323331302C31322C323733302C31312C313638302220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303131363634353830313030303030303634303036323030366630303030303034363030346230303566303034643030366630303736303032303030343330303466303035663030353430303739303037303030363530303464303036663030373630303433303034663030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F4D6F7620434F5F547970654D6F76434F202864626F2927206265747765656E2027547970654D6F76434F202864626F292720616E6420274D6F7620434F202864626F292722206C6566743D2232343634332220746F703D22343838313722206C6F676963616C69643D2236322220636F6E74726F6C69643D22343722206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D2238313522206865696768743D223531323922206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2235342E343331383835373832323732352220636F6E74726F6C69643D223438222077696474683D223334383922206865696768743D223334342220736964653D223022206265686176696F723D2233222068696D65747269633D223230333222206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D2232353232352220793D223531303631222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D22343622206465737469643D2234332220736F75726365617474616368706F696E743D223334222064657374617474616368706F696E743D22343122207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D2232353035302220793D223533323530222F3E3C706F696E7420783D2232353035302220793D223439353136222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139643262323264383964326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D2232353232352220746F703D22353130363122206C6F676963616C69643D2236332220636F6E74726F6C69643D22343822206D617374657269643D223437222068696E74313D2230222068696E74323D2230222077696474683D223334383922206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D22303030323030303061313064303030303538303130303030303330303030303030303030666666666666303030383030303038303031303030303030313530303031303030303030393030313434343230313030303635343631363836663664363131333030343630303462303035663030346430303666303037363030323030303433303034663030356630303534303037393030373030303635303034643030366630303736303034333030346630303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303130303030303030313030303030303634303036323030366630303030303034363030346230303566303035353030373330303635303037323030343330303631303036653030343130303633303036333030363530303733303037333030356630303533303036313030373630303639303036653030363730303733303034313030363330303633303036663030373530303665303037343030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F5573657243616E4163636573735F536176696E67734163636F756E74202864626F2927206265747765656E2027536176696E67734163636F756E74202864626F292720616E6420275573657243616E416363657373202864626F292722206C6566743D2231313734332220746F703D223338323122206C6F676963616C69643D2236342220636F6E74726F6C69643D22343922206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223230353722206865696768743D22313933373522206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2234392E393936393033383333303534372220636F6E74726F6C69643D223530222077696474683D223530313822206865696768743D223334342220736964653D223022206265686176696F723D2233222068696D65747269633D223938333522206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D2231323332352220793D223132313437222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D223722206465737469643D2232322220736F75726365617474616368706F696E743D223532222064657374617474616368706F696E743D22393022207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D2231323135302220793D223232353030222F3E3C706F696E7420783D2231323135302220793D223132353634222F3E3C706F696E7420783D2231323133392220793D223132353634222F3E3C706F696E7420783D2231323133392220793D2234323030222F3E3C706F696E7420783D2231333530302220793D2234323030222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139643262323235383964326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D2231323332352220746F703D22313231343722206C6F676963616C69643D2236352220636F6E74726F6C69643D22353022206D617374657269643D223439222068696E74313D2230222068696E74323D2230222077696474683D223530313822206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D22303030323030303039613133303030303538303130303030303330303030303030303030666666666666303030383030303038303031303030303030313530303031303030303030393030313434343230313030303635343631363836663664363131663030343630303462303035663030353530303733303036353030373230303433303036313030366530303431303036333030363330303635303037333030373330303566303035333030363130303736303036393030366530303637303037333030343130303633303036333030366630303735303036653030373430303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D2230313037376632323031303030303030363430303632303036663030303030303436303034623030356630303535303037333030363530303732303035663030353030303635303037323030373330303666303036653030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F557365725F506572736F6E202864626F2927206265747765656E2027506572736F6E202864626F292720616E64202755736572202864626F292722206C6566743D22373837312220746F703D223735323222206C6F676963616C69643D2236362220636F6E74726F6C69643D22353122206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D22313630383722206865696768743D22313532323422206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2235312E343337363632393335313332372220636F6E74726F6C69643D223532222077696474683D223232373822206865696768743D223334342220736964653D223022206265686176696F723D2233222068696D65747269633D22313439383322206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D2231333331342220793D223136393539222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D223322206465737469643D2232312220736F75726365617474616368706F696E743D223636222064657374617474616368706F696E743D22323522207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D2232333535302220793D223232303530222F3E3C706F696E7420783D2232333535302220793D223137393030222F3E3C706F696E7420783D2231333133392220793D223137393030222F3E3C706F696E7420783D2231333133392220793D223134353439222F3E3C706F696E7420783D22383235302220793D223134353439222F3E3C706F696E7420783D22383235302220793D2238323231222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139643262323231383964326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D2231333331342220746F703D22313639353922206C6F676963616C69643D2236372220636F6E74726F6C69643D22353222206D617374657269643D223531222068696E74313D2230222068696E74323D2230222077696474683D223232373822206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D2230303032303030306536303830303030353830313030303030333030303030303030303066666666666630303038303030303830303130303030303031353030303130303030303039303031343434323031303030363534363136383666366436313065303034363030346230303566303035353030373330303635303037323030356630303530303036353030373230303733303036663030366530303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303134353433343430313030303030303634303036323030366630303030303034363030346230303566303034323030363530303665303036353030363630303631303036333030373430303666303037323030356630303533303036313030373630303639303036653030363730303733303034313030363330303633303036663030373530303665303037343030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F42656E65666163746F725F536176696E67734163636F756E74202864626F2927206265747765656E2027536176696E67734163636F756E74202864626F292720616E64202742656E65666163746F72202864626F292722206C6566743D2231333234332220746F703D22313230373122206C6F676963616C69643D2236382220636F6E74726F6C69643D22353322206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223335353722206865696768743D22313131323522206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2235302220636F6E74726F6C69643D223534222077696474683D223434313222206865696768743D223334342220736964653D223022206265686176696F723D2233222068696D65747269633D223634353022206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D2231333832352220793D223136303339222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D223722206465737469643D22312220736F75726365617474616368706F696E743D223732222064657374617474616368706F696E743D2231323822207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D2231333635302220793D223232353030222F3E3C706F696E7420783D2231333635302220793D223132343530222F3E3C706F696E7420783D2231363530302220793D223132343530222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139633262323239383963326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D2231333832352220746F703D22313630333922206C6F676963616C69643D2236392220636F6E74726F6C69643D22353422206D617374657269643D223533222068696E74313D2230222068696E74323D2230222077696474683D223434313222206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D22303030323030303033633131303030303538303130303030303330303030303030303030666666666666303030383030303038303031303030303030313530303031303030303030393030313434343230313030303635343631363836663664363131633030343630303462303035663030343230303635303036653030363530303636303036313030363330303734303036663030373230303566303035333030363130303736303036393030366530303637303037333030343130303633303036333030366630303735303036653030373430303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303130303030303030313030303030303634303036323030366630303030303034363030346230303566303034643030366630303736303036353030366430303635303036653030373430303230303034333030343130303566303034313030363330303633303036663030373530303665303037343030353330303734303036313030373430303635303036643030363530303665303037343030303030302220636F6E74726F6C70726F6769643D224D534444532E506F6C796C696E652E3038302E312220746F6F6C7469703D2252656C6174696F6E736869702027464B5F4D6F76656D656E742043415F4163636F756E7453746174656D656E74202864626F2927206265747765656E20274163636F756E7453746174656D656E74202864626F292720616E6420274D6F76656D656E74204341202864626F292722206C6566743D22353037312220746F703D22333738343322206C6F676963616C69643D2237302220636F6E74726F6C69643D22353522206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D223435323922206865696768743D2238313522206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A3E3C706F6C796C696E6520656E64747970656473743D22302220656E64747970657372633D2232222075736572636F6C6F723D22313537393033323022206C696E657374796C653D223022206C696E6572656E6465723D22302220637573746F6D656E647479706564737469643D22302220637573746F6D656E647479706573726369643D2230222061646F726E7376697369626C653D2231223E3C61646F726E6D656E742070657263656E74706F733D2235302220636F6E74726F6C69643D223536222077696474683D223531393122206865696768743D223334342220736964653D223022206265686176696F723D2233222068696D65747269633D223139363422206469737466726F6D6C696E653D22313735222073746172746F626A3D22302220783D22343733392220793D223337373331222076697369626C653D22302220616C6C6F776F7665726C61703D2231222075736570657263656E743D2231222F3E3C2F706F6C796C696E653E3C2F646473786D6C6F626A3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C636F6E6E6563746F7220736F7572636569643D22333122206465737469643D2232352220736F75726365617474616368706F696E743D22313232222064657374617474616368706F696E743D2231313322207365676D656E74656469746D6F64653D2230222062656E64706F696E74656469746D6F64653D2230222062656E64706F696E747669736962696C6974793D2230222072656C6174656469643D223022207669727475616C3D2230223E3C706F696E7420783D22393330302220793D223338323530222F3E3C706F696E7420783D22353337312220793D223338323530222F3E3C2F636F6E6E6563746F723E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C2073656D616E746963636F6F6B69653D22303139623262323239383962326232322220636F6E74726F6C70726F6769643D224D534444532E546578742E3038302E3122206C6566743D22343733392220746F703D22333737333122206C6F676963616C69643D2237312220636F6E74726F6C69643D22353622206D617374657269643D223535222068696E74313D2230222068696E74323D2230222077696474683D223531393122206865696768743D2233343422206E6F726573697A653D223122206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223122206175746F647261673D2231222075736564656661756C7469646473686170653D2231222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22312220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2230222076697369626C653D22302220736E6170746F677269643D2230223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D22303030323030303034373134303030303538303130303030303330303030303030303030666666666666303030383030303038303031303030303030313530303031303030303030393030313434343230313030303635343631363836663664363131663030343630303462303035663030346430303666303037363030363530303664303036353030366530303734303032303030343330303431303035663030343130303633303036333030366630303735303036653030373430303533303037343030363130303734303036353030366430303635303036653030373430303030303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A2F3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C2F6464733E0D0A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FEFFFFFF02000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF010003000000000000000C0000000B0000004E61BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F573900000200908A35E16BCBD601020200001048450000000000000000000000000000000000600200004400610074006100200053006F0075007200630065003D00700072006F0079006500630074006F0031002D007300650072007600650072002D00620064002E00640061007400610062006100730065002E00770069006E0064006F00770073002E006E00650074003B0049006E0069007400690061006C00200043006100740061006C006F0067003D00700072006F0079006500630074006F0031002D00640061007400610062006100730065003B005000650072007300690073007400200053006500630075007200690074007900200049006E0066006F003D0054007200750065003B0055007300650072002000490044003D00410064006D0069006E006900730074007200610064006F0072003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00740053006500740073003D00460061006C00730065003B0043006F006E006E006500630074002000540069006D0065006F00750074003D00330030003B0045006E00630072007900700074003D0054007200750065003B0054007200750073007400530065007200760065007200430065007200740069006600690063006100740065003D00460061006C00730065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063006100740069006F006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F0022000000008005001C0000004400690061006700720061006D005F00460069006E0061006C000000000226001400000054007900700065004D006F00760043004F00000008000000640062006F000000000226000E0000004D006F007600200043004F00000008000000640062006F000000000226001A00000054007900700065004D006F00760043004F0049006E007400000008000000640062006F00000000022600200000004D006F007600200043004F00200049006E00740065007200650073007400000008000000640062006F00000000022600200000004F0062006A00650074006900760065004100630063006F0075006E007400000008000000640062006F00000000022600220000004100630063006F0075006E007400530074006100740065006D0065006E007400000008000000640062006F000000000226002000000054007900700065004D006F00760065006D0065006E007400200043004100000008000000640062006F00000000022600180000004D006F00760065006D0065006E007400200043004100000008000000640062006F000000000226001C0000005500730065007200430061006E00410063006300650073007300000008000000640062006F000000000226000A0000005500730065007200000008000000640062006F0000000002260026000000540079007000650053006100760069006E00670073004100630063006F0075006E007400000008000000640062006F0000000002260020000000540079007000650044006F0063004900640065006E007400690074007900000008000000640062006F00000000022600180000007300790073006400690061006700720061006D007300000008000000640062006F000000000226001E00000053006100760069006E00670073004100630063006F0075006E007400000008000000640062006F000000000226001A000000520065006C006100740069006F006E007300680069007000000008000000640062006F000000000226000E00000050006500720073006F006E00000008000000640062006F000000000226000A00000043006F0069006E00000008000000640062006F0000000002240016000000420065006E00650066006100630074006F007200000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00310036003300340043004400440037002D0030003800380038002D0034003200450033002D0039004600410032002D004200360044003300320035003600330042003900310044007D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000001B00000012000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214)
GO
SET IDENTITY_INSERT [dbo].[sysdiagrams] OFF
GO
INSERT [dbo].[TypeDocIdentity] ([Id], [Name]) VALUES (1, N'Cedula Nacional')
GO
INSERT [dbo].[TypeDocIdentity] ([Id], [Name]) VALUES (2, N'Cedula Residente')
GO
INSERT [dbo].[TypeDocIdentity] ([Id], [Name]) VALUES (3, N'Pasaporte')
GO
INSERT [dbo].[TypeDocIdentity] ([Id], [Name]) VALUES (4, N'Cedula Juridica')
GO
INSERT [dbo].[TypeDocIdentity] ([Id], [Name]) VALUES (5, N'Permiso de Trabajo')
GO
INSERT [dbo].[TypeDocIdentity] ([Id], [Name]) VALUES (6, N'Cedula Extranjera')
GO
SET IDENTITY_INSERT [dbo].[TypeMovCOInt] ON 
GO
INSERT [dbo].[TypeMovCOInt] ([Id], [Name]) VALUES (1, N'PruebaMov')
GO
SET IDENTITY_INSERT [dbo].[TypeMovCOInt] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeMovement CA] ON 
GO
INSERT [dbo].[TypeMovement CA] ([Id], [Name], [TypeOP]) VALUES (1, N'Compra', N'Debito')
GO
INSERT [dbo].[TypeMovement CA] ([Id], [Name], [TypeOP]) VALUES (2, N'Retiro ATM', N'Debito')
GO
INSERT [dbo].[TypeMovement CA] ([Id], [Name], [TypeOP]) VALUES (3, N'Retiro Ventana', N'Debito')
GO
INSERT [dbo].[TypeMovement CA] ([Id], [Name], [TypeOP]) VALUES (4, N'Deposito en ATM', N'Credito')
GO
INSERT [dbo].[TypeMovement CA] ([Id], [Name], [TypeOP]) VALUES (5, N'Deposito Ventana', N'Credito')
GO
INSERT [dbo].[TypeMovement CA] ([Id], [Name], [TypeOP]) VALUES (6, N'Devolución de Compra', N'Credito')
GO
INSERT [dbo].[TypeMovement CA] ([Id], [Name], [TypeOP]) VALUES (7, N'Intereses del mes sobre saldo MInimo', N'Debito')
GO
INSERT [dbo].[TypeMovement CA] ([Id], [Name], [TypeOP]) VALUES (8, N'Comision exceso de operacion en CH', N'Debito')
GO
INSERT [dbo].[TypeMovement CA] ([Id], [Name], [TypeOP]) VALUES (9, N'Comision exceso de operacion en CA', N'Debito')
GO
INSERT [dbo].[TypeMovement CA] ([Id], [Name], [TypeOP]) VALUES (10, N'Multa Incumplir Saldo Minimo', N'Debito')
GO
INSERT [dbo].[TypeMovement CA] ([Id], [Name], [TypeOP]) VALUES (11, N'Cargo Mensual', N'Debito')
GO
SET IDENTITY_INSERT [dbo].[TypeMovement CA] OFF
GO
INSERT [dbo].[TypeSavingsAccount] ([Id], [CoinId], [Name], [InterestRate], [PenaltyForBreach], [MinimunBalance], [MensualAccountForService], [MaxOpsHuman], [MaxOpsAtm], [ExceedComisionHumanMont], [ExceedComisionAtmMont]) VALUES (1, 1, N'Proletario', 10, 3000.0000, 25000.0000, 5000.0000, 5, 8, 300, 300)
GO
INSERT [dbo].[TypeSavingsAccount] ([Id], [CoinId], [Name], [InterestRate], [PenaltyForBreach], [MinimunBalance], [MensualAccountForService], [MaxOpsHuman], [MaxOpsAtm], [ExceedComisionHumanMont], [ExceedComisionAtmMont]) VALUES (2, 1, N'Profesional', 15, 3000.0000, 50000.0000, 15000.0000, 5, 8, 500, 500)
GO
INSERT [dbo].[TypeSavingsAccount] ([Id], [CoinId], [Name], [InterestRate], [PenaltyForBreach], [MinimunBalance], [MensualAccountForService], [MaxOpsHuman], [MaxOpsAtm], [ExceedComisionHumanMont], [ExceedComisionAtmMont]) VALUES (3, 1, N'Exclusivo', 20, 3000.0000, 100000.0000, 30000.0000, 5, 8, 1000, 1000)
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([Id], [PersonId], [UserName], [Password], [IsAdministrator], [InsertAt], [InsertBy], [InsertIn]) VALUES (1, 5, N'guadalupemesen2924', N'password1', 0, CAST(N'2020-12-07T22:21:40.837' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[User] ([Id], [PersonId], [UserName], [Password], [IsAdministrator], [InsertAt], [InsertBy], [InsertIn]) VALUES (2, 6, N'rosarioelizondo6572', N'password', 0, CAST(N'2020-12-07T22:21:40.837' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[User] ([Id], [PersonId], [UserName], [Password], [IsAdministrator], [InsertAt], [InsertBy], [InsertIn]) VALUES (3, 7, N'guadalupeserrano2969', N'!@#$%^Y*', 0, CAST(N'2020-12-07T22:21:48.840' AS DateTime), N'Script', N'186.176.102.189')
GO
INSERT [dbo].[User] ([Id], [PersonId], [UserName], [Password], [IsAdministrator], [InsertAt], [InsertBy], [InsertIn]) VALUES (4, 8, N'gabrielarrieta3626', N'PaKoRhaBaNe=:?', 0, CAST(N'2020-12-07T22:21:48.840' AS DateTime), N'Script', N'186.176.102.189')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserCanAccess] ON 
GO
INSERT [dbo].[UserCanAccess] ([Id], [UserId], [SavingsAccountId], [Condition], [InsertAt], [UpdateAt]) VALUES (1, 1, 3, 1, CAST(N'2020-12-07T22:21:40.843' AS DateTime), CAST(N'2020-12-07T22:21:40.843' AS DateTime))
GO
INSERT [dbo].[UserCanAccess] ([Id], [UserId], [SavingsAccountId], [Condition], [InsertAt], [UpdateAt]) VALUES (2, 1, 2, 1, CAST(N'2020-12-07T22:21:40.843' AS DateTime), CAST(N'2020-12-07T22:21:40.843' AS DateTime))
GO
INSERT [dbo].[UserCanAccess] ([Id], [UserId], [SavingsAccountId], [Condition], [InsertAt], [UpdateAt]) VALUES (3, 1, 3, 1, CAST(N'2020-12-07T22:21:40.843' AS DateTime), CAST(N'2020-12-07T22:21:40.843' AS DateTime))
GO
INSERT [dbo].[UserCanAccess] ([Id], [UserId], [SavingsAccountId], [Condition], [InsertAt], [UpdateAt]) VALUES (4, 1, 3, 1, CAST(N'2020-12-07T22:21:40.843' AS DateTime), CAST(N'2020-12-07T22:21:40.843' AS DateTime))
GO
INSERT [dbo].[UserCanAccess] ([Id], [UserId], [SavingsAccountId], [Condition], [InsertAt], [UpdateAt]) VALUES (5, 1, 3, 1, CAST(N'2020-12-07T22:21:40.843' AS DateTime), CAST(N'2020-12-07T22:21:40.843' AS DateTime))
GO
INSERT [dbo].[UserCanAccess] ([Id], [UserId], [SavingsAccountId], [Condition], [InsertAt], [UpdateAt]) VALUES (6, 2, 3, 1, CAST(N'2020-12-07T22:21:40.843' AS DateTime), CAST(N'2020-12-07T22:21:40.843' AS DateTime))
GO
INSERT [dbo].[UserCanAccess] ([Id], [UserId], [SavingsAccountId], [Condition], [InsertAt], [UpdateAt]) VALUES (7, 2, 2, 1, CAST(N'2020-12-07T22:21:40.843' AS DateTime), CAST(N'2020-12-07T22:21:40.843' AS DateTime))
GO
INSERT [dbo].[UserCanAccess] ([Id], [UserId], [SavingsAccountId], [Condition], [InsertAt], [UpdateAt]) VALUES (8, 1, 3, 1, CAST(N'2020-12-07T22:21:40.843' AS DateTime), CAST(N'2020-12-07T22:21:40.843' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[UserCanAccess] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_principal_name]    Script Date: 12/7/2020 5:21:20 PM ******/
ALTER TABLE [dbo].[sysdiagrams] ADD  CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED 
(
	[principal_id] ASC,
	[name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccountStatement]  WITH CHECK ADD  CONSTRAINT [FK_AccountStatement_SavingsAccount] FOREIGN KEY([SavingsAccountId])
REFERENCES [dbo].[SavingsAccount] ([Id])
GO
ALTER TABLE [dbo].[AccountStatement] CHECK CONSTRAINT [FK_AccountStatement_SavingsAccount]
GO
ALTER TABLE [dbo].[Benefactor]  WITH CHECK ADD  CONSTRAINT [FK_Benefactor_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([Id])
GO
ALTER TABLE [dbo].[Benefactor] CHECK CONSTRAINT [FK_Benefactor_Person]
GO
ALTER TABLE [dbo].[Benefactor]  WITH CHECK ADD  CONSTRAINT [FK_Benefactor_Relationship] FOREIGN KEY([RelationshipId])
REFERENCES [dbo].[Relationship] ([Id])
GO
ALTER TABLE [dbo].[Benefactor] CHECK CONSTRAINT [FK_Benefactor_Relationship]
GO
ALTER TABLE [dbo].[Benefactor]  WITH CHECK ADD  CONSTRAINT [FK_Benefactor_SavingsAccount] FOREIGN KEY([SavingsAccountId])
REFERENCES [dbo].[SavingsAccount] ([Id])
GO
ALTER TABLE [dbo].[Benefactor] CHECK CONSTRAINT [FK_Benefactor_SavingsAccount]
GO
ALTER TABLE [dbo].[Mov CO]  WITH CHECK ADD  CONSTRAINT [FK_Mov CO_ObjetiveAccount] FOREIGN KEY([ObjectiveAccountId])
REFERENCES [dbo].[ObjetiveAccount] ([Id])
GO
ALTER TABLE [dbo].[Mov CO] CHECK CONSTRAINT [FK_Mov CO_ObjetiveAccount]
GO
ALTER TABLE [dbo].[Mov CO]  WITH CHECK ADD  CONSTRAINT [FK_Mov CO_TypeMovCO] FOREIGN KEY([TypeMovCO])
REFERENCES [dbo].[TypeMovCO] ([Id])
GO
ALTER TABLE [dbo].[Mov CO] CHECK CONSTRAINT [FK_Mov CO_TypeMovCO]
GO
ALTER TABLE [dbo].[Mov CO Interest]  WITH CHECK ADD  CONSTRAINT [FK_Mov CO Interest_ObjetiveAccount] FOREIGN KEY([ObjectiveAccountId])
REFERENCES [dbo].[ObjetiveAccount] ([Id])
GO
ALTER TABLE [dbo].[Mov CO Interest] CHECK CONSTRAINT [FK_Mov CO Interest_ObjetiveAccount]
GO
ALTER TABLE [dbo].[Mov CO Interest]  WITH CHECK ADD  CONSTRAINT [FK_Mov CO Interest_TypeMovCOInt] FOREIGN KEY([TypeMovCOinterestId])
REFERENCES [dbo].[TypeMovCOInt] ([Id])
GO
ALTER TABLE [dbo].[Mov CO Interest] CHECK CONSTRAINT [FK_Mov CO Interest_TypeMovCOInt]
GO
ALTER TABLE [dbo].[Movement CA]  WITH CHECK ADD  CONSTRAINT [FK_Movement CA_AccountStatement] FOREIGN KEY([AccountStatementId])
REFERENCES [dbo].[AccountStatement] ([Id])
GO
ALTER TABLE [dbo].[Movement CA] CHECK CONSTRAINT [FK_Movement CA_AccountStatement]
GO
ALTER TABLE [dbo].[Movement CA]  WITH CHECK ADD  CONSTRAINT [FK_Movement CA_SavingsAccount] FOREIGN KEY([SavingsAccountId])
REFERENCES [dbo].[SavingsAccount] ([Id])
GO
ALTER TABLE [dbo].[Movement CA] CHECK CONSTRAINT [FK_Movement CA_SavingsAccount]
GO
ALTER TABLE [dbo].[Movement CA]  WITH CHECK ADD  CONSTRAINT [FK_Movement CA_TypeMovement CA] FOREIGN KEY([TypeMovId])
REFERENCES [dbo].[TypeMovement CA] ([Id])
GO
ALTER TABLE [dbo].[Movement CA] CHECK CONSTRAINT [FK_Movement CA_TypeMovement CA]
GO
ALTER TABLE [dbo].[ObjetiveAccount]  WITH CHECK ADD  CONSTRAINT [FK_ObjetiveAccount_SavingsAccount] FOREIGN KEY([SavingsAccountId])
REFERENCES [dbo].[SavingsAccount] ([Id])
GO
ALTER TABLE [dbo].[ObjetiveAccount] CHECK CONSTRAINT [FK_ObjetiveAccount_SavingsAccount]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_TypeDocIdentity] FOREIGN KEY([TypeDocId])
REFERENCES [dbo].[TypeDocIdentity] ([Id])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_TypeDocIdentity]
GO
ALTER TABLE [dbo].[SavingsAccount]  WITH CHECK ADD  CONSTRAINT [FK_SavingsAccount_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([Id])
GO
ALTER TABLE [dbo].[SavingsAccount] CHECK CONSTRAINT [FK_SavingsAccount_Person]
GO
ALTER TABLE [dbo].[SavingsAccount]  WITH CHECK ADD  CONSTRAINT [FK_SavingsAccount_TypeSavingsAccount] FOREIGN KEY([TypeSavingsAccountId])
REFERENCES [dbo].[TypeSavingsAccount] ([Id])
GO
ALTER TABLE [dbo].[SavingsAccount] CHECK CONSTRAINT [FK_SavingsAccount_TypeSavingsAccount]
GO
ALTER TABLE [dbo].[TypeSavingsAccount]  WITH CHECK ADD  CONSTRAINT [FK_TypeSavingsAccount_Coin] FOREIGN KEY([CoinId])
REFERENCES [dbo].[Coin] ([Id])
GO
ALTER TABLE [dbo].[TypeSavingsAccount] CHECK CONSTRAINT [FK_TypeSavingsAccount_Coin]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Person]
GO
ALTER TABLE [dbo].[UserCanAccess]  WITH CHECK ADD  CONSTRAINT [FK_UserCanAccess_SavingsAccount] FOREIGN KEY([SavingsAccountId])
REFERENCES [dbo].[SavingsAccount] ([Id])
GO
ALTER TABLE [dbo].[UserCanAccess] CHECK CONSTRAINT [FK_UserCanAccess_SavingsAccount]
GO
ALTER TABLE [dbo].[UserCanAccess]  WITH CHECK ADD  CONSTRAINT [FK_usercanaccess_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[UserCanAccess] CHECK CONSTRAINT [FK_usercanaccess_User]
GO
/****** Object:  StoredProcedure [dbo].[CerrarEstadoCuenta]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CerrarEstadoCuenta]
	@inCuenta INT,
	@inEstadoCuenta INT,
	@inTipoCuenta INT,
	@inMinimo MONEY,
	@inFecha DATE
AS
BEGIN
SET NOCOUNT ON
	BEGIN TRY
		DECLARE @ATM INT,
				@Humano INT,
				@MaxHumano INT,
				@MaxATM INT,
				@SaldoMinimo INT,
				@MultaHumano INT,
				@MultaATM MONEY,
				@MultaSaldoMinimo MONEY,
				@monto MONEY,
				@Intereses FLOAT,
				@SaldoActual MONEY,
				@Descripcion VARCHAR(50),
				@FechaCreacion DATE,
				@DifMeses INT,
				@outResultCode INT = 0

		-----------------------Contar tramites--------------------------
		SELECT @ATM = COUNT(MCA.[TypeMovId])
		FROM [dbo].[Movement CA] MCA
		WHERE MCA.[SavingsAccountId] = @inCuenta AND MCA.[TypeMovId] = 2 AND MCA.[DateOfMov] <= @inFecha

		SELECT @Humano = COUNT(MCA.[TypeMovId])
		FROM [dbo].[Movement CA] MCA
		WHERE MCA.[SavingsAccountId] = @inCuenta AND MCA.[TypeMovId] = 3 AND MCA.[DateOfMov] <= @inFecha
		-----------------------Contar tramites--------------------------
		--SELECT 'cuentas' AS Contar

		SELECT @SaldoMinimo = TSA.[MinimunBalance]
		FROM [dbo].[TypeSavingsAccount] TSA
		WHERE TSA.Id = @inTipoCuenta

		SET @MultaHumano = 0
		SET @MultaATM = 0

		-----------------------Multa superar retiros ventana--------------------------
		SELECT @MultaHumano = TSA.[ExceedComisionHumanMont],
			   @MaxHumano = TSA.[MaxOpsHuman]
		FROM [dbo].[TypeSavingsAccount] TSA
		WHERE TSA.Id = @inTipoCuenta

		--SELECT @Humano as 'humano'
		--select @MaxHumano as 'maxhumano'
		--select @MultaHumano as 'multa humano'

		IF (@MaxHumano < @Humano)
			BEGIN
				SELECT @SaldoActual = SA.Balance
				FROM [dbo].[SavingsAccount] SA
				WHERE SA.Id = @inCuenta

				--select @SaldoActual as 'saldo actual'

				UPDATE [dbo].[SavingsAccount]
				SET Balance = @SaldoActual - @MultaHumano,
					InsertAt = GETDATE(),
					InsertBy = 'script',
					InsertIn = '186.176.102.189'
				WHERE [dbo].[SavingsAccount].Id = @inCuenta

				SELECT @Descripcion = TM.Name
				FROM [dbo].[TypeMovement CA] TM
				WHERE TM.Id = 8

				--SELECT @inCuenta,8, @inEstadoCuenta, @MultaHumano, @SaldoActual - @MultaHumano, @Descripcion, 1, @inFecha

				INSERT [dbo].[Movement CA] (SavingsAccountId,
									TypeMovId,
									AccountStatementId,
									Amount,
									NewBalance,
									Description,
									Visible,
									DateOfMov)
				VALUES(@inCuenta,
						8,
						@inEstadoCuenta,
						@MultaHumano,
						@SaldoActual - @MultaHumano,
						@Descripcion,
						1,
						@inFecha)
			END
		-----------------------Multa superar retiros ventana--------------------------

		-----------------------Multa superar retiros ATM--------------------------
		SELECT @MultaATM = TSA.[ExceedComisionAtmMont]
		FROM [dbo].[TypeSavingsAccount] TSA
		WHERE TSA.[MaxOpsATM] < @ATM AND TSA.Id = @inTipoCuenta

		--SELECT @MultaATM as 'multaATM'

		SELECT @MultaATM = TSA.[ExceedComisionAtmMont],
			   @MaxATM = TSA.[MaxOpsAtm]
		FROM [dbo].[TypeSavingsAccount] TSA
		WHERE TSA.Id = @inTipoCuenta

		IF (@MaxATM < @ATM)
			BEGIN
				SELECT @SaldoActual = SA.Balance
				FROM [dbo].[SavingsAccount] SA
				WHERE SA.Id = @inCuenta

				UPDATE [dbo].[SavingsAccount]
				SET Balance = @SaldoActual - @MultaATM,
					InsertAt = GETDATE(),
					InsertBy = 'script',
					InsertIn = '186.176.102.189'
				WHERE [dbo].[SavingsAccount].Id = @inCuenta

				SELECT @Descripcion = TM.Name
				FROM [dbo].[TypeMovement CA] TM
				WHERE TM.Id = 9

				--SELECT @inCuenta,9, @inEstadoCuenta, @MultaATM, @SaldoActual - @MultaATM, @Descripcion, 1, @inFecha

				INSERT [dbo].[Movement CA] (SavingsAccountId,
									TypeMovId,
									AccountStatementId,
									Amount,
									NewBalance,
									Description,
									Visible,
									DateOfMov)
				VALUES(@inCuenta,
						9,
						@inEstadoCuenta,
						@MultaHumano,
						@SaldoActual - @MultaATM,
						@Descripcion,
						1,
						@inFecha)
			END
		-----------------------Multa superar retiros ATM--------------------------

		-----------------------Multa incumplir saldo minimo--------------------------
		IF(@SaldoMinimo > @inMinimo)
			BEGIN
				SELECT @SaldoActual = SA.Balance
				FROM [dbo].[SavingsAccount] SA
				WHERE SA.Id = @inCuenta

				SELECT @MultaSaldoMinimo = TSA.[PenaltyForBreach]
				FROM [dbo].[TypeSavingsAccount] TSA
				WHERE TSA.Id = @inTipoCuenta

				UPDATE [dbo].[SavingsAccount]
				SET Balance = @SaldoActual - @MultaSaldoMinimo,
					InsertAt = GETDATE(),
					InsertBy = 'script',
					InsertIn = '186.176.102.189'
				WHERE [dbo].[SavingsAccount].Id = @inCuenta

				SELECT @Descripcion = TM.Name
				FROM [dbo].[TypeMovement CA] TM
				WHERE TM.Id = 10

				INSERT [dbo].[Movement CA] (SavingsAccountId,
									TypeMovId,
									AccountStatementId,
									Amount,
									NewBalance,
									Description,
									Visible,
									DateOfMov)
				VALUES(@inCuenta,
						10,
						@inEstadoCuenta,
						@MultaHumano,
						@SaldoActual - @MultaSaldoMinimo,
						@Descripcion,
						1,
						@inFecha)

			END
		-----------------------Multa incumplir saldo minimo--------------------------
		--SELECT 'Multas' AS Multas
		-----------------------Cargo mensual--------------------------
		SELECT @SaldoActual = SA.Balance
		FROM [dbo].[SavingsAccount] SA
		WHERE SA.Id = @inCuenta

		SELECT @monto = TSA.[MensualAccountForService]
		FROM [dbo].[TypeSavingsAccount] TSA
		WHERE TSA.[Id] = @inTipoCuenta

		UPDATE [dbo].[SavingsAccount]
		SET Balance = @SaldoActual - @monto,
			InsertAt = GETDATE(),
			InsertBy = 'script',
			InsertIn = '186.176.102.189'
		WHERE [dbo].[SavingsAccount].Id = @inCuenta

		SELECT @Descripcion = TM.Name
		FROM [dbo].[TypeMovement CA] TM
		WHERE TM.Id = 11

		--SELECT @inCuenta,11,@inEstadoCuenta,@monto,	@SaldoActual - @monto,@Descripcion,1,@inFecha

		INSERT [dbo].[Movement CA] (SavingsAccountId,
									TypeMovId,
									AccountStatementId,
									Amount,
									NewBalance,
									Description,
									Visible,
									DateOfMov)
		VALUES(@inCuenta,
				11,
				@inEstadoCuenta,
				@monto,
				@SaldoActual - @monto,
				@Descripcion,
				1,
				@inFecha)
		-----------------------Cargo mensual--------------------------
		--SELECT 'cargo' as mensual
		-----------------------Intereses--------------------------
		SET @SaldoActual = @SaldoActual - @monto

		SELECT @Descripcion = TM.Name
		FROM [dbo].[TypeMovement CA] TM
		WHERE TM.Id = 7

		--SELECT @Descripcion

		SELECT @Intereses = TSA.[InterestRate]
		FROM [dbo].[TypeSavingsAccount] TSA
		WHERE TSA.[Id] = @inTipoCuenta

		UPDATE [dbo].[SavingsAccount]
		SET Balance = @SaldoActual + (@SaldoActual * (@Intereses/100)),
			InsertAt = GETDATE(),
			InsertBy = 'script',
			InsertIn = '186.176.102.189'
		WHERE [dbo].[SavingsAccount].Id = @inCuenta

		INSERT [dbo].[Movement CA] (SavingsAccountId,
									TypeMovId,
									AccountStatementId,
									Amount,
									NewBalance,
									Description,
									Visible,
									DateOfMov)
		VALUES(@inCuenta,
				7,
				@inEstadoCuenta,
				@SaldoActual * (@Intereses/100),
				@SaldoActual + (@SaldoActual * (@Intereses/100)),
				@Descripcion,
				1,
				@inFecha)
		-----------------------Intereses--------------------------
		--SELECT 'Intereses' as intereses
		-----------------------Cerrar estado de cuenta--------------------------
		SELECT @SaldoActual = SA.Balance
		FROM [dbo].[SavingsAccount] SA
		WHERE SA.Id = @inCuenta

		IF (@SaldoActual < 0)
			BEGIN
				UPDATE [dbo].[AccountStatement]
				SET [FinalBalance] = 0,
					[AtmOps] = @ATM,
					[HumOps] = @Humano
				WHERE [dbo].[AccountStatement].[Id] = @inEstadoCuenta AND [dbo].[AccountStatement].[EndDate] = @inFecha

				UPDATE [dbo].[SavingsAccount]
				SET [Balance] = 0
				WHERE [dbo].[SavingsAccount].Id = @inCuenta
			END
		ELSE
			BEGIN
				UPDATE [dbo].[AccountStatement]
				SET [FinalBalance] = @SaldoActual,
					[AtmOps] = @ATM,
					[HumOps] = @Humano
				WHERE [dbo].[AccountStatement].[Id] = @inEstadoCuenta AND [dbo].[AccountStatement].[EndDate] = @inFecha
			END
		-----------------------Cerrar estado de cuenta--------------------------
		--SELECT 'Cerrar' AS EstadoCuenta
		-----------------------Habrir nuevo estado cuenta--------------------------
		SELECT @FechaCreacion = SA.[CreationDate]
		FROM [dbo].[SavingsAccount] SA
		WHERE SA.Id = @inCuenta

		SET @DifMeses = DATEDIFF(MONTH, @FechaCreacion, @inFecha)

		--SELECT DAY(@inFecha)

		IF(DAY(@FechaCreacion) = 1)
			BEGIN
				SET @DifMeses = @DifMeses + 2
			END
		ELSE
			BEGIN
				SET @DifMeses = @DifMeses + 1
			END

		--SELECT @DifMeses as Diferencia

		INSERT [dbo].[AccountStatement] (SavingsAccountId,
									StartDate,
									EndDate,
									InitialBalance,
									FinalBalance,
									MinBalance,
									AtmOps,
									HumOps,
									InsertAt,
									InsertBy,
									InsertIn)
		VALUES (@inCuenta,
				DATEADD(DAY, 1, @inFecha),
				DATEADD( DAY, -1, DATEADD(MONTH, @DifMeses, @FechaCreacion)),
				@SaldoActual,
				@SaldoActual,
				@SaldoActual,
				0,
				0,
				GETDATE(),
				'Script',
				'186.176.102.189')
		-----------------------Habrir nuevo estado cuenta--------------------------
		--SELECT 'Abrir' AS Estado
	END TRY
	BEGIN CATCH
	END CATCH

SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_SP_Activate_ObjectiveAccount]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_SP_Activate_ObjectiveAccount]
(
	@ObjectiveAccountId INT
)
AS
BEGIN
	SET NOCOUNT ON
		BEGIN TRY
			DECLARE @outResultCode INT = 0
			IF exists( SELECT OA.Id FROM [dbo].[ObjetiveAccount] OA WHERE OA.Id = @ObjectiveAccountId )
			BEGIN
				UPDATE [dbo].[ObjetiveAccount] SET [Active] = 1
				WHERE [dbo].[ObjetiveAccount].Id = @ObjectiveAccountId
			END;
			ELSE
				BEGIN 
					SET @outResultCode = 1 -- Codigo de error NO EXISTE EL VALOR DE NUMERO DE IDENTIDAD
					SELECT @outResultCode
				END
		END TRY
		BEGIN CATCH
		END CATCH
	SET NOCOUNT OFF 
END	
GO
/****** Object:  StoredProcedure [dbo].[dbo_SP_Create_ObjetiveAccount]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_SP_Create_ObjetiveAccount]
(
    @AccountId INT,   --Mapeado en capa logica
	@inStartDate DATE,	--ingresa usuario
	@inEndDate DATE,	--ingresa usuario
	@inFee MONEY,		--ingresa usuario
	@inObjetive VARCHAR(50),   --ingresa usuario
	@inDaysOfDeposit VARCHAR(50)  --ingresa usuario  
)
AS
BEGIN
	SET NOCOUNT ON				--set nocount 
	BEGIN TRY
		DECLARE @outResultCode INT = 0
		IF exists( SELECT SA.Id FROM [dbo].[SavingsAccount] SA WHERE SA.Id = @AccountId )
		BEGIN	
				INSERT INTO [dbo].[ObjetiveAccount] ([SavingsAccountId],
													 [StartDate],
													 [EndDate],
													 [Fee],
													 [Objective],
													 [Balance],
													 [AcumInterest],
													 [DaysOfDeposit],
													 [Active])

											VALUES	(@AccountId, 
													 @inStartDate,
													 @inEndDate,
													 @inFee,
													 @inObjetive,
													 0,
													 0.0,
													 @inDaysOfDeposit,
													 1)
				SELECT @outResultCode
		END
		ELSE
			BEGIN 
				SET @outResultCode = 1 -- Codigo de error NO EXISTE EL ID DE LA CUENTA ASOCIADA
				SELECT @outResultCode
			END
	END TRY
	BEGIN CATCH
		SET @outResultCode = 1 -- Codigo de error NO EXISTE EL ID DE LA CUENTA ASOCIADA
		SELECT @outResultCode
	END CATCH
	SET NOCOUNT OFF				--set nocount 
END	
GO
/****** Object:  StoredProcedure [dbo].[dbo_SP_Delete_ObjectiveAccount]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_SP_Delete_ObjectiveAccount]
(
	@ObjectiveAccountId INT
)
AS
BEGIN
	SET NOCOUNT ON
		BEGIN TRY
			DECLARE @outResultCode INT = 0
			IF exists( SELECT OA.Id FROM [dbo].[ObjetiveAccount] OA WHERE OA.Id = @ObjectiveAccountId )
			BEGIN
				UPDATE [dbo].[ObjetiveAccount] SET [Active] = 0
				WHERE [dbo].[ObjetiveAccount].Id = @ObjectiveAccountId
				SELECT @outResultCode
			END;
			ELSE
				BEGIN 
					SET @outResultCode = 1 -- Codigo de error NO EXISTE LA CUENTA OBJETIVO
					SELECT @outResultCode
				END
		END TRY
		BEGIN CATCH
					SET @outResultCode = 1 -- Codigo de error NO EXISTE LA CUENTA OBJETIVO
					SELECT @outResultCode
		END CATCH
	SET NOCOUNT OFF 
END	
GO
/****** Object:  StoredProcedure [dbo].[dbo_SP_Read_Movements]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_SP_Read_Movements]
(
    @AccountStatementId INT   --Mapeado en capa logica
)
AS
BEGIN
	SET NOCOUNT ON				--set nocount 
	BEGIN TRY
		DECLARE @outResultCode INT = 0
		IF exists( SELECT MV.Id FROM [dbo].[Movement CA] MV WHERE MV.AccountStatementId = @AccountStatementId )
		BEGIN	
				SELECT MV.Id, 
					   MV.TypeMovId, 
					   MV.Amount, 
					   MV.NewBalance, 
					   MV.[Description]
				FROM [dbo].[Movement CA] MV
				WHERE MV.AccountStatementId = @AccountStatementId
		END
		ELSE
			BEGIN 
				
				SET @outResultCode = -1 -- Codigo de error NO EXISTE EL ID DE LA CUENTA ASOCIADA
				--SELECT @outResultCode
			END
	END TRY

	BEGIN CATCH
		SET @outResultCode = -1 -- Codigo de error NO EXISTE EL ID DE LA CUENTA ASOCIADA
		--SELECT @outResultCode
	END CATCH

	SET NOCOUNT OFF				--set nocount 
END	
GO
/****** Object:  StoredProcedure [dbo].[dbo_SP_Read_Movements_BySearchWord]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_SP_Read_Movements_BySearchWord]
(
    @AccountStatementId INT,   --Mapeado en capa logica
	@SearchWord VARCHAR(100)
)
AS
BEGIN
	SET NOCOUNT ON				--set nocount 
	BEGIN TRY
		DECLARE @outResultCode INT = 0
		IF exists( SELECT MV.Id FROM [dbo].[Movement CA] MV WHERE MV.AccountStatementId = @AccountStatementId )
		BEGIN	
				SELECT MV.Id, 
					   MV.TypeMovId, 
					   MV.Amount, 
					   MV.NewBalance, 
					   MV.[Description]
				FROM [dbo].[Movement CA] MV
				WHERE MV.AccountStatementId = @AccountStatementId and MV.[Description] LIKE @SearchWord
		END
		ELSE
			BEGIN 
				
				SET @outResultCode = -1 -- Codigo de error NO EXISTE EL ID DE LA CUENTA ASOCIADA
				--SELECT @outResultCode
			END
	END TRY

	BEGIN CATCH
		SET @outResultCode = -1 -- Codigo de error NO EXISTE EL ID DE LA CUENTA ASOCIADA
		--SELECT @outResultCode
	END CATCH

	SET NOCOUNT OFF				--set nocount 
END	
GO
/****** Object:  StoredProcedure [dbo].[dbo_SP_Read_Movements_Word]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_SP_Read_Movements_Word]
(
    @AccountStatementId INT,   --Mapeado en capa logica 
	@Description VARCHAR(50)

)
AS
BEGIN
	SET NOCOUNT ON				--set nocount 
	BEGIN TRY
		DECLARE @outResultCode INT = 0
		IF exists( SELECT MV.Id FROM [dbo].[Movement CA] MV WHERE MV.AccountStatementId = @AccountStatementId )
		BEGIN	
				SELECT MV.Id, 
					   MV.TypeMovId, 
					   MV.Amount, 
					   MV.NewBalance, 
					   MV.[Description]
				FROM [dbo].[Movement CA] MV
				WHERE MV.AccountStatementId = @AccountStatementId AND MV.[Description] LIKE @Description
		END
		ELSE
			BEGIN 
				SET @outResultCode = 1 -- Codigo de error NO EXISTE EL ID DE LA CUENTA ASOCIADA
				SELECT @outResultCode
			END
	END TRY

	BEGIN CATCH
		SET @outResultCode = 1 -- Codigo de error NO EXISTE EL ID DE LA CUENTA ASOCIADA
		SELECT @outResultCode
	END CATCH

	SET NOCOUNT OFF				--set nocount 
END	
GO
/****** Object:  StoredProcedure [dbo].[dbo_SP_Read_ObjectiveAccount]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_SP_Read_ObjectiveAccount]
(
	@SavingsAccountId INT
)
AS
BEGIN
	SET NOCOUNT ON
		BEGIN TRY
			DECLARE @outResultCode INT = 0
			IF exists( SELECT OA.Id FROM [dbo].[ObjetiveAccount] OA WHERE OA.SavingsAccountId = @SavingsAccountId )
			BEGIN
				SELECT OA.Id, 
					   OA.SavingsAccountId,
					   OA.StartDate,
					   OA.EndDate,
					   OA.Fee,
					   OA.Objective,
					   OA.Balance,
					   OA.AcumInterest,
					   OA.DaysOfDeposit
				FROM [dbo].[ObjetiveAccount] OA
				WHERE OA.SavingsAccountId = @SavingsAccountId AND OA.Active = 1
			END;
			ELSE
				BEGIN 
					SET @outResultCode = 1 -- Codigo de error NO EXISTE LA CUENTA OBJETIVO
				END
		END TRY
		BEGIN CATCH
			SET @outResultCode = 1 -- Codigo de error NO EXISTE LA CUENTA OBJETIVO
		END CATCH
	SET NOCOUNT OFF 
END	
GO
/****** Object:  StoredProcedure [dbo].[dbo_SP_Update_ObjectiveAccount]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_SP_Update_ObjectiveAccount]
(
	@ObjectiveAccountId INT,
	@inDescription VARCHAR(50)
)
AS
BEGIN
	SET NOCOUNT ON
		BEGIN TRY
			DECLARE @outResultCode INT = 0
			IF exists( SELECT OA.Id FROM [dbo].[ObjetiveAccount] OA WHERE OA.Id = @ObjectiveAccountId )
			BEGIN
				UPDATE [dbo].[ObjetiveAccount] SET [Objective] = @inDescription
				WHERE [dbo].[ObjetiveAccount].Id = @ObjectiveAccountId
				SELECT @outResultCode
			END;
			ELSE
				BEGIN 
					SET @outResultCode = 1 -- Codigo de error NO EXISTE EL VALOR DE NUMERO DE IDENTIDAD
					SELECT @outResultCode
				END
		END TRY
		BEGIN CATCH
		END CATCH
	SET NOCOUNT OFF 
END	
GO
/****** Object:  StoredProcedure [dbo].[llenado_AccountStatement]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[llenado_AccountStatement]
(
    @x xml
)
AS
BEGIN
	DECLARE @TempAccount TABLE (Sec int identity, 
						    numeroCuenta varchar(50), 
							fechaInicio date,
							fechaFin date, 
							saldoInicial money, 
							saldoFinal money)

	INSERT INTO @TempAccount (numeroCuenta,
							 fechaInicio, 
							 fechaFin, 
							 saldoInicial, 
							 saldoFinal)
	SELECT  T.Item.value('@NumeroCuenta', 'varchar(50)'),
					T.Item.value('@fechaInicio', 'date'),
					T.Item.value('@fechaFin', 'date'),
					T.Item.value('@saldoInicial', 'money'),
					T.Item.value('@saldoFinal', 'money')
	FROM @x.nodes('Datos/Estados_de_Cuenta/Estado_de_Cuenta') as T(Item)


	DECLARE
			@lo3 int, --iteradores
			@hi3 int,

			@numEstadoCuenta varchar(50), 
			@estadoCuentaId int, 

			@fechaIn date, 
			@fechaFi date, 
			@balanceInicial money,
			@balanceFinal money

	SELECT @lo3 = MIN(Sec), @hi3 = MAX(Sec)
	FROM @TempAccount
	WHILE @lo3 <= @hi3
		BEGIN
			SELECT @numEstadoCuenta = TA.numeroCuenta,
				   @fechaIn = TA.fechaInicio,
				   @fechafi = TA.fechaFin,
				   @balanceInicial = TA.saldoInicial,
				   @balanceFinal = TA.saldoFinal
			FROM @TempAccount TA
			WHERE Sec = @lo3	

			SELECT @estadoCuentaId = SA.Id
			FROM [dbo].[SavingsAccount] SA
			WHERE SA.AccountNumber = @numEstadoCuenta

			INSERT INTO [dbo].[AccountStatement] (SavingsAccountId, 
												  StartDate,
												  EndDate, 
												  InitialBalance, 
												  FinalBalance, 
												  InsertAt, 
												  InsertBy, 
												  InsertIn)
			VALUES ( @estadoCuentaId, @fechaIn, @fechafi, @balanceInicial, @balanceFinal, GETDATE(), 'Script', '192.168.0.5')

			SET @lo3=@lo3+1 
		END
END
GO
/****** Object:  StoredProcedure [dbo].[llenado_Benefactor]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[llenado_Benefactor]
(
    @x xml
)
AS
BEGIN
	DECLARE @TempBene TABLE (Sec int identity(1,1), 
					     numeroCuenta varchar(50),
						 valorDocIdent varchar (50),
						 parentezco int,
						 porcentaje int)

	INSERT INTO @TempBene(numeroCuenta,
							 valorDocIdent, 
							 parentezco, 
							 porcentaje)
	SELECT  T.Item.value('@NumeroCuenta', 'varchar(50)'),
					T.Item.value('@ValorDocumentoIdentidadBeneficiario', 'varchar(50)'),
					T.Item.value('@ParentezcoId', 'int'),
					T.Item.value('@Porcentaje', 'int')
	FROM @x.nodes('Datos/Beneficiarios/Beneficiario') as T(Item)

	DECLARE 
			@lo2 int, --iteradores
			@hi2 int,

			@percentaje int, 
			@parentezcoId int,
			@name varchar(100),
			@numCuenta varchar(50), 
			@valorDocIdBene varchar(50),

			@benefactorId int,
			@cuentaId int

	SELECT @lo2 = MIN(Sec), @hi2 = MAX(Sec)
	FROM @TempBene
	WHILE @lo2 <= @hi2
		BEGIN 
			SELECT @percentaje = B.porcentaje,
				   @parentezcoId = B.parentezco,
				   @numCuenta = B.numeroCuenta,
				   @valorDocIdBene = B.valorDocIdent
			FROM @TempBene B
			WHERE Sec = @lo2
		
			SELECT @benefactorId = PE.Id,
				   @name = PE.Name
			FROM [dbo].[Person] PE
			WHERE PE.ValueDocIden = @valorDocIdBene

			SELECT @cuentaId = SA.Id
			FROM [dbo].[SavingsAccount] SA
			WHERE SA.AccountNumber = @numCuenta

			INSERT INTO [dbo].[Benefactor] (RelationshipId, 
											PersonId, 
											SavingsAccountId, 
											Name, 
											Percentage, 
											Condition, 
											InsertAt,
											InsertBy, 
											InsertIn)

			VALUES (@parentezcoId, @benefactorId, @cuentaId, @name, @percentaje, 0, GETDATE(), 'Script', '192.168.0.5')

			SET @lo2=@lo2+1 
		END
END
GO
/****** Object:  StoredProcedure [dbo].[llenado_Coin]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[llenado_Coin]
(
    @x xml
)
AS
BEGIN
    INSERT INTO [dbo].[Coin](Id, Name, Symbol)
	SELECT  T.Item.value('@Id', 'int'),
			T.Item.value('@Nombre', 'varchar(100)'),
			T.Item.value('@Simbolo', 'varchar(1)')
	FROM @x.nodes('Datos/Tipo_Moneda/TipoMoneda') as T(Item)

END
GO
/****** Object:  StoredProcedure [dbo].[llenado_Person]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[llenado_Person]
(
    @x xml
)
AS
BEGIN
	IF exists (SELECT T.Item.value('@TipoDocuIdentidad', 'int') FROM @x.nodes('Datos/Personas/Persona') as T(Item) WHERE T.Item.value('@TipoDocuIdentidad', 'int') = 1 OR T.Item.value('@TipoDocuIdentidad', 'int') = 2 OR T.Item.value('@TipoDocuIdentidad', 'int') = 3 OR T.Item.value('@TipoDocuIdentidad', 'int') = 4 OR T.Item.value('@TipoDocuIdentidad', 'int') = 5 OR T.Item.value('@TipoDocuIdentidad', 'int') = 6)
		BEGIN
		INSERT INTO [dbo].[Person] (TypeDocId, Name, ValueDocIden, DateOfBirth, Email, Phone1, Phone2)
		SELECT  T.Item.value('@TipoDocuIdentidad', 'int'),
				T.Item.value('@Nombre', 'varchar(100)'),
				T.Item.value('@ValorDocumentoIdentidad', 'int'),
				T.Item.value('@FechaNacimiento', 'date'),
				T.Item.value('@Email', 'varchar(100)'),
				T.Item.value('@Telefono1', 'varchar(20)'),
				T.Item.value('@Telefono2', 'varchar(20)')
		FROM @x.nodes('Datos/Personas/Persona') as T(Item)

		DECLARE @ValueTemp TABLE (SEC INT IDENTITY(1,1), valueid varchar(50))

		INSERT INTO @ValueTemp (valueid)
		SELECT T.Item.value('@ValorDocumentoIdentidad', 'int')
		FROM @x.nodes('Datos/Personas/Persona') as T(Item)

		DECLARE 
				@lo int, 
				@hi int,
				
				@identupdate varchar(50)

		SELECT @lo = MIN(SEC), @hi = MAX(SEC)
		FROM @ValueTemp
		
			SET NOCOUNT ON
			WHILE @lo < = @hi
				BEGIN
					SELECT @identupdate = V.valueid
					FROM @ValueTemp V
					WHERE SEC = @lo

					UPDATE Person SET InsertAt = GETDATE(), InsertBy = 'Script', InsertIn = '192.168.0.5'
					WHERE ValueDocIden = @identupdate
				
					SET @lo = @lo + 1
				END
			SET NOCOUNT OFF
		END
	ELSE
		BEGIN
			SELECT 'No es un tipo de documento aceptable'
		END

END

GO
/****** Object:  StoredProcedure [dbo].[llenado_Relationship]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[llenado_Relationship]
(
    @x xml
)
AS
BEGIN
	INSERT INTO [dbo].[Relationship](Id, Name)
	SELECT  T.Item.value('@Id', 'int'),
			T.Item.value('@Nombre', 'varchar(100)')
	FROM @x.nodes('Datos/Parentezcos/Parentezco') as T(Item)
	
END
GO
/****** Object:  StoredProcedure [dbo].[llenado_SavingsAccount]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[llenado_SavingsAccount]
(
    @x xml
)
AS
BEGIN
	DECLARE @TempAccount TABLE ( Sec int IDENTITY(1,1), 
							 valorDocIdent varchar(50), 
							 tipoCuenta int , 
							 numeroCuenta varchar(50),
							 fechaCreacion date, 
							 saldo money)

	INSERT INTO @TempAccount(valorDocIdent,
							 tipoCuenta, 
							 numeroCuenta, 
							 fechaCreacion, 
							 saldo)
	SELECT  T.Item.value('@ValorDocumentoIdentidadDelCliente', 'varchar(50)'),
					T.Item.value('@TipoCuentaId', 'int'),
					T.Item.value('@NumeroCuenta', 'varchar(50)'),
					T.Item.value('@FechaCreacion', 'date'),
					T.Item.value('@Saldo', 'money')
	FROM @x.nodes('Datos/Cuentas/Cuenta') as T(Item)


	DECLARE 
			@lo1 int, --iteradores
			@hi1 int, 

			@tipocuenta int, --campos directos de savings account
			@numerocuenta varchar(50), 
			@fechacreacion date, 
			@saldo money, 

			@personaId int, --variables para obtener el id de cliente(FK)
			@valordocIdcliente varchar(50)

	SELECT @lo1 = MIN(Sec), @hi1 = MAX(Sec)
	FROM @TempAccount

	WHILE @lo1 <= @hi1
		BEGIN
			SELECT @tipocuenta = C.tipoCuenta,        --obtencion de valores directos de TempAccount
				   @numerocuenta = C.numeroCuenta, 
				   @fechacreacion = C.fechaCreacion, 
				   @saldo = C.saldo, 
				   @valordocIdcliente = C.valorDocIdent

			FROM @TempAccount C
			WHERE  Sec = @lo1

			SELECT @personaId = P.Id    --mapeo
			FROM [dbo].[Person] P
			WHERE P.ValueDocIden = @valordocIdcliente

			INSERT INTO [dbo].[SavingsAccount](TypeSavingsAccountId, 
											   PersonId, 
											   Balance, 
											   CreationDate, 
											   AccountNumber, 
											   InsertAt, 
											   InsertBy, 
											   InsertIn)
			VALUES (@tipocuenta, @personaId, @saldo, @fechacreacion, @numerocuenta, GETDATE(), 'Script', '192.168.0.5')

			SET @lo1=@lo1+1 

		END
END
GO
/****** Object:  StoredProcedure [dbo].[llenado_TypeDocIdentity]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[llenado_TypeDocIdentity]
(
    @x xml
)
AS
BEGIN
    INSERT INTO [dbo].[TypeDocIdentity](Id, Name)
	SELECT  T.Item.value('@Id', 'int'),
			T.Item.value('@Nombre', 'varchar(100)')
	FROM @x.nodes('Datos/Tipo_Doc/TipoDocuIdentidad') as T(Item)

END
GO
/****** Object:  StoredProcedure [dbo].[llenado_TypeSavingsAccount]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[llenado_TypeSavingsAccount]
(
    @x xml
)
AS
BEGIN
	INSERT INTO [dbo].[TypeSavingsAccount](Id, 
									   Name, 
									   CoinId, 
									   MinimunBalance, 
									   PenaltyForBreach, 
									   MensualAccountForService, 
									   MaxOpsHuman, 
									   MaxOpsAtm, 
									   ExceedComisionHumanMont, 									 
									   ExceedComisionAtmMont, 
									   InterestRate)
	SELECT  T.Item.value('@Id', 'int'),
			T.Item.value('@Nombre', 'varchar(100)'),
			T.Item.value('@IdTipoMoneda', 'int'),
			T.Item.value('@SaldoMinimo', 'money'),
			T.Item.value('@MultaSaldoMin', 'money'),
			T.Item.value('@CargoAnual', 'money'),
			T.Item.value('@NumRetirosHumano', 'int'),
			T.Item.value('@NumRetirosAutomatico', 'int'),
			T.Item.value('@ComisionHumano', 'money'),
			T.Item.value('@ComisionAutomatico', 'money'),
			T.Item.value('@Interes', 'float')
	FROM @x.nodes('Datos/Tipo_Cuenta_Ahorros/TipoCuentaAhorro') as T(Item)

END
GO
/****** Object:  StoredProcedure [dbo].[llenado_User]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[llenado_User]
(
    @x xml
)
AS
BEGIN
	DECLARE @TempUser TABLE( sec int identity(1,1), 
						 nombreusu varchar(50), 
						 contra varchar(20), 
						 valordocIdent varchar(50), 
						 isAdmin bit)

	INSERT INTO  @TempUser (nombreusu,
							contra, 
							valordocIdent, 
							isAdmin)
	SELECT  T.Item.value('@User', 'varchar(50)'),
					T.Item.value('@Pass', 'varchar(20)'),
					T.Item.value('@ValorDocumentoIdentidad', 'varchar(50)'),
					T.Item.value('@EsAdministrador', 'bit')
	FROM @x.nodes('Datos/Usuarios/Usuario') as T(Item)

	DECLARE 
			@lo4 int,
			@hi4 int,

			@usuId int, 
			@valorIdUsu varchar(50),
			
			@nombre varchar(50), 
			@pass varchar(20), 
			@admin bit


	SELECT @lo4=MIN(Sec), @hi4=MAX(Sec)
	FROM @TempUser

	WHILE @lo4<=@hi4
		BEGIN 
			SELECT @valorIdUsu = TU.valordocIdent, 
				   @nombre = TU.nombreusu, 
				   @pass = TU.contra, 
				   @admin = TU.isAdmin
			FROM @TempUser TU
			WHERE Sec = @lo4

			SELECT @usuId = PU.Id
			FROM [dbo].[Person] PU
			WHERE PU.ValueDocIden = @valorIdUsu

			INSERT INTO [dbo].[User] (PersonId, 
									  UserName, 
									  Password, 
									  isAdministrator, 
									  InsertAt, 
									  InsertBy, 
									  InsertIn)
			VALUES (@usuId, @nombre, @pass, @admin, GETDATE(), 'Script', '192.168.0.5' )

			SET @lo4 = @lo4+1
		END
END
GO
/****** Object:  StoredProcedure [dbo].[llenado_UserCanAccess]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[llenado_UserCanAccess]
(
    @x xml
)
AS
BEGIN
	DECLARE @TempUserCanAccess TABLE(Sec int identity(1,1), 
								 nombreUsu varchar(50),
								 numeroCuenta varchar(50))
	INSERT INTO @TempUserCanAccess ( nombreUsu, 
									 numeroCuenta)
	SELECT  T.Item.value('@User', 'varchar(50)'),
					T.Item.value('@NumeroCuenta', 'varchar(50)')
	FROM @x.nodes('Datos/Usuarios_Ver/UsuarioPuedeVer') as T(Item)

	DECLARE
			@lo5 int, 
			@hi5 int, 

			@usuarioId int,
			@CuentaId int, 
			@nombreUsu varchar(50), 
			@numeroCuenta varchar(50)

	SELECT @lo5=MIN(Sec), @hi5=MAX(Sec)
	FROM @TempUserCanAccess
	WHILE @lo5 <= @hi5
		BEGIN
			SELECT @nombreUsu = TUC.nombreusu, 
				   @numeroCuenta = TUC.numeroCuenta
			FROM @TempUserCanAccess TUC
			WHERE Sec = @lo5

			SELECT @usuarioId = US.Id
			FROM [dbo].[User] US
			WHERE US.UserName = @nombreUsu

			SELECT @CuentaId = SA.Id
			FROM [dbo].[SavingsAccount] SA
			WHERE SA.AccountNumber = @numeroCuenta
		
			INSERT INTO	[dbo].[UserCanAccess] (UserId, 
											   SavingsAccountId, 
											   Condition, 
											   InsertAt, 
											   UpdateAt)
			VALUES (@usuarioId, @CuentaId, 0, getdate(), NULL)
			SET @lo5 = @lo5+1
		END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_alterdiagram]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[SP_Create_AccountStatement]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Create_AccountStatement]
(
    @SavingsAccountId int = 0,
	@inStartDate date = '', 
	@inEndDate date = '',
	@inInitialBalance money = 0,
	@inFinalBalance money = 0
)
AS
BEGIN
	DECLARE @outResultCode INT = 0
	IF exists( SELECT SA.Id FROM [dbo].[SavingsAccount] SA WHERE SA.Id = @SavingsAccountId)
	BEGIN
		-- SET NOCOUNT ON added to prevent extra result sets from
		-- interfering with SELECT statements.
		SET NOCOUNT ON
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
		BEGIN
			SET @outResultCode = 1 -- Codigo de error NO EXISTE EL ID DE LA CUENTA ASOCIADA
			SELECT @outResultCode
		END
END	
GO
/****** Object:  StoredProcedure [dbo].[SP_Create_Benefactor]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Create_Benefactor]
(
    @AccountId int, 
	@inValueDocIden varchar(50), 
	@inRelationshipId int, 
	@inPercentaje int
)
AS
BEGIN
	DECLARE @outResultCode INT = 0

	IF exists( SELECT RL.Id FROM [dbo].[Relationship] RL WHERE RL.Id = @inRelationshipId )
	BEGIN
		IF exists ( SELECT PR.Id FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueDocIden )
			BEGIN
					-- SET NOCOUNT ON added to prevent extra result sets from
					-- interfering with SELECT statements.
					SET NOCOUNT ON
						DECLARE @PersonId INT
						DECLARE @BenefactorName varchar(100)
						SET @PersonId = (SELECT PR.Id FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueDocIden)
						SET @BenefactorName = (SELECT PR.Name FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueDocIden )
						INSERT INTO [dbo].[Benefactor] ( RelationshipId, PersonId, SavingsAccountId, [Name], [Percentage], Condition)
								VALUES	(@inRelationshipId,
										 @PersonId,
										 @AccountId, 
										 @BenefactorName,
										 @inPercentaje,
										 0)
						SELECT @outResultCode
					SET NOCOUNT OFF
			END;
			ELSE
				BEGIN 
					SET @outResultCode = 2 -- Codigo de error NO EXISTE EL NUMERO DE PERSONA ASOCIADO
					SELECT @outResultCode
				END
	END;
	ELSE
		BEGIN 
			SET @outResultCode = 1 -- Codigo de error NO EXISTE EL ID DEL TIPO DE PARENTEZCO ASOCIADO
			SELECT @outResultCode
		END
END	
GO
/****** Object:  StoredProcedure [dbo].[SP_Create_Coin]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create Coin
-- =============================================
CREATE PROCEDURE [dbo].[SP_Create_Coin]
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
/****** Object:  StoredProcedure [dbo].[SP_Create_MovCO]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create MovCO
-- =============================================
CREATE PROCEDURE [dbo].[SP_Create_MovCO]
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
/****** Object:  StoredProcedure [dbo].[SP_Create_Person]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Create_Person]
(
    @inTypeDocId int,
	@inName varchar(100), 
	@inValueDocIden int,
	@inDateOfBirth date, 
	@inEmail varchar(100),
	@inPhone1 varchar(20),
	@inPhone2 varchar(20)
)
AS
BEGIN
	DECLARE @outResultCode INT = 0 

	IF exists( SELECT TD.Id FROM [dbo].[TypeDocIdentity] TD WHERE TD.Id = @inTypeDocId)
	BEGIN
		-- SET NOCOUNT ON added to prevent extra result sets from
		-- interfering with SELECT statements.
		SET NOCOUNT ON
			DECLARE @TypeDocId INT 
			SET @TypeDocId = (SELECT TD.Id FROM [dbo].[TypeDocIdentity] TD WHERE TD.Id = @inTypeDocId)
			INSERT INTO [dbo].[Person] ( TypeDocId, Name, ValueDocIden, DateOfBirth, Email, Phone1, Phone2)
					VALUES	(@TypeDocId,
							 @inName, 
							 @inValueDocIden,
							 @inDateOfBirth, 
							 @inEmail,
							 @inPhone1,
							 @inPhone2)
		SET NOCOUNT OFF
	END;
	ELSE
		SET @outResultCode = 1 -- Codigo de error NO EXISTE EL ID DEL TIPO ASOCIADO
		SELECT @outResultCode
END	
GO
/****** Object:  StoredProcedure [dbo].[SP_Create_Relationship]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create Relationship
-- =============================================
CREATE PROCEDURE [dbo].[SP_Create_Relationship]
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
/****** Object:  StoredProcedure [dbo].[SP_Create_TypeDocIdentity]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create TypeDocIdentity
-- =============================================
CREATE PROCEDURE [dbo].[SP_Create_TypeDocIdentity]
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
/****** Object:  StoredProcedure [dbo].[SP_Create_TypeMovCO]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create TypeMovCO
-- =============================================
CREATE PROCEDURE [dbo].[SP_Create_TypeMovCO]
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
/****** Object:  StoredProcedure [dbo].[SP_Create_TypeMovCOInt]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create TypeMovCOInt
-- =============================================
CREATE PROCEDURE [dbo].[SP_Create_TypeMovCOInt]
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
/****** Object:  StoredProcedure [dbo].[SP_Create_TypeMovementCA]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Create TypeMovementCA
-- =============================================
CREATE PROCEDURE [dbo].[SP_Create_TypeMovementCA]
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
/****** Object:  StoredProcedure [dbo].[sp_creatediagram]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
	
GO
/****** Object:  StoredProcedure [dbo].[SP_Delete_Benefactor]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Delete_Benefactor]
(
	@beneId int
)
AS
BEGIN
	DECLARE @outResultCode INT = 0 

	IF exists( SELECT BN.Id FROM [dbo].[Benefactor] BN WHERE BN.Id = @beneId )
	BEGIN
	
		UPDATE [dbo].[Benefactor] SET [Condition] = 1
		WHERE [dbo].[Benefactor].Id = @beneId

		SELECT @outResultCode
	END;
	ELSE
		BEGIN 
			SET @outResultCode = 2 -- Codigo de error NO EXISTE EL VALOR DE NUMERO DE IDENTIDAD
			SELECT @outResultCode
		END
END	
GO
/****** Object:  StoredProcedure [dbo].[SP_Delete_Coin]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Delete_Coin]
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
		DBCC CHECKIDENT (Coin)
	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Delete_MovCO]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Delete MovCO
-- =============================================
CREATE PROCEDURE [dbo].[SP_Delete_MovCO]
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
/****** Object:  StoredProcedure [dbo].[SP_Delete_Relationship]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Delete Relationship
-- =============================================
CREATE PROCEDURE [dbo].[SP_Delete_Relationship]
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
/****** Object:  StoredProcedure [dbo].[SP_Delete_TypeDocIdentity]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Delete TypeDocIdentity
-- =============================================
CREATE PROCEDURE [dbo].[SP_Delete_TypeDocIdentity]
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
/****** Object:  StoredProcedure [dbo].[SP_Delete_TypeMovCO]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Delete TypeMovCO
-- =============================================
CREATE PROCEDURE [dbo].[SP_Delete_TypeMovCO]
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
/****** Object:  StoredProcedure [dbo].[SP_Delete_TypeMovCOInt]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Delete TypeMovCOInt
-- =============================================
CREATE PROCEDURE [dbo].[SP_Delete_TypeMovCOInt]
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
/****** Object:  StoredProcedure [dbo].[SP_Delete_TypeMovementCA]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Delete TypeMovementCA
-- =============================================
CREATE PROCEDURE [dbo].[SP_Delete_TypeMovementCA]
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
/****** Object:  StoredProcedure [dbo].[SP_Delete_User]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[SP_Delete_User]
(
	@PersonId int
)
as
BEGIN 
	DELETE FROM [User] WHERE PersonId = @PersonId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_dropdiagram]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
	
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_All_User]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[SP_Get_All_User]
as
BEGIN 
	SELECT * FROM [User]
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetBenefactorsbyAccount]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetBenefactorsbyAccount]
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
/****** Object:  StoredProcedure [dbo].[SP_GetemploeeById]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GetemploeeById]
(
	@IdPerson int
)
as
BEGIN
	Select * From [User] where PersonId=@IdPerson
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUseCanAccess]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetUseCanAccess]
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
			   accountNum FROM @nuevaTemp
	SET NOCOUNT OFF
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_helpdiagramdefinition]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_helpdiagrams]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
	
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_User]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[SP_Insert_User]
(
	@PersonId int =0,
	@UserName varchar(50) ='',
	@Password varchar(20) ='',
	@IsAdministrator bit = false
)
as
BEGIN 
	INSERT INTO [User] (PersonId, UserName, Password, IsAdministrator)
	Values (@PersonId, @UserName, @Password, @IsAdministrator)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Login]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Login] 
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
/****** Object:  StoredProcedure [dbo].[SP_Read_AccountStatement]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Read_AccountStatement]
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
					   ACS.FinalBalance,
					   ACS.[MinBalance],
					   ACS.[AtmOps],
					   ACS.[HumOps]
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
/****** Object:  StoredProcedure [dbo].[SP_Read_Benefactor]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Read_Benefactor]
(
	@inValueId int
)
AS
BEGIN
	DECLARE @PersonId int
	DECLARE @outResultCode INT = 0

	IF exists( SELECT PR.Id FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueId )
	BEGIN
		SELECT @PersonId = PR.Id FROM [dbo].[Person] PR WHERE PR.ValueDocIden = @inValueId

		SELECT PR.Name, PR.TypeDocId, PR.DateOfBirth, PR.Email, PR.Phone1, PR.Phone2
		FROM [dbo].[Person] PR
		WHERE PR.Id = @PersonId
	END;
	ELSE
		BEGIN 
			SET @outResultCode = 1 -- Codigo de error NO EXISTE EL VALOR DE NUMERO DE IDENTIDAD
			SELECT @outResultCode
		END
END	
GO
/****** Object:  StoredProcedure [dbo].[SP_Read_Coin]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read Coin
-- =============================================
CREATE PROCEDURE [dbo].[SP_Read_Coin]
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
/****** Object:  StoredProcedure [dbo].[SP_Read_MovCO]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read MovCO
-- =============================================
CREATE PROCEDURE [dbo].[SP_Read_MovCO]
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
/****** Object:  StoredProcedure [dbo].[SP_Read_Person]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Read_Person]
(
    @inValueDocId int
)
AS
BEGIN
	DECLARE @outResultCode INT = 0 

	IF exists( SELECT PR.ValueDocIden FROM Person PR WHERE PR.ValueDocIden = @inValueDocId)
	BEGIN
		-- SET NOCOUNT ON added to prevent extra result sets from
		-- interfering with SELECT statements.
		SET NOCOUNT ON
			SELECT PR.Id, PR.TypeDocId, PR.Name, PR.ValueDocIden, PR.DateOfBirth, PR.Email, PR.Phone1, PR.Phone2
			FROM Person PR 
			WHERE PR.ValueDocIden = @inValueDocId
		SET NOCOUNT OFF
	END;
	ELSE
		BEGIN
			SET @outResultCode = 1 -- Codigo de error NO EXISTE EL NUMERO DE PERSONA ASOCIADO
			SELECT @outResultCode
		END
END	
GO
/****** Object:  StoredProcedure [dbo].[SP_Read_Relationship]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Read_Relationship]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON
		SELECT RL.Id, RL.Name 
		FROM dbo.Relationship RL
	SET NOCOUNT OFF
    
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Read_TypeDocIdentity]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read TypeDocIdentity
-- =============================================
CREATE PROCEDURE [dbo].[SP_Read_TypeDocIdentity]
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
/****** Object:  StoredProcedure [dbo].[SP_Read_TypeMovCO]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read TypeMovCO
-- =============================================
CREATE PROCEDURE [dbo].[SP_Read_TypeMovCO]
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
/****** Object:  StoredProcedure [dbo].[SP_Read_TypeMovCOInt]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read TypeMovCOInt
-- =============================================
CREATE PROCEDURE [dbo].[SP_Read_TypeMovCOInt]
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
/****** Object:  StoredProcedure [dbo].[SP_Read_TypeMovementCA]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Read TypeMovementCA
-- =============================================
CREATE PROCEDURE [dbo].[SP_Read_TypeMovementCA]
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
/****** Object:  StoredProcedure [dbo].[sp_renamediagram]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_AccountStatement]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Update_AccountStatement]
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
/****** Object:  StoredProcedure [dbo].[SP_Update_Benefactor]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Update_Benefactor]
(
	@beneId int,
	@inPercentaje int
)
AS
BEGIN
	DECLARE @outResultCode INT = 0
	IF exists( SELECT BN.Id FROM [dbo].[Benefactor] BN WHERE BN.Id = @beneId )
	BEGIN
		UPDATE [dbo].[Benefactor] SET [Percentage] = @inPercentaje
		WHERE [dbo].[Benefactor].Id = @beneId
		SELECT @outResultCode
	END;
	ELSE
		BEGIN 
			SET @outResultCode = 1 -- Codigo de error NO EXISTE EL VALOR DE NUMERO DE IDENTIDAD
			SELECT @outResultCode
		END
END	
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Coin]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update Coin
-- =============================================
CREATE PROCEDURE [dbo].[SP_Update_Coin]
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
/****** Object:  StoredProcedure [dbo].[SP_Update_MovCO]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update MovCO
-- =============================================
CREATE PROCEDURE [dbo].[SP_Update_MovCO]
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
/****** Object:  StoredProcedure [dbo].[SP_Update_Person]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Update_Person]
(
    @inValueDocId int,
	@inNewEmail varchar(100), 
	@inNewPhone1 varchar(20),
	@inNewPhone2 varchar(20)
)
AS
BEGIN
	DECLARE @outResultCode INT = 0

	IF exists( SELECT PR.ValueDocIden FROM Person PR WHERE PR.ValueDocIden = @inValueDocId)
	BEGIN
		-- SET NOCOUNT ON added to prevent extra result sets from
		-- interfering with SELECT statements.
		SET NOCOUNT ON
			UPDATE Person SET Email = @inNewEmail, Phone1 = @inNewPhone1, Phone2 = @inNewPhone2
			WHERE ValueDocIden = @inValueDocId
		SET NOCOUNT OFF
	END;
	ELSE
		BEGIN
			SET @outResultCode = 1 -- Codigo de error NO EXISTE EL NUMERO DE PERSONA ASOCIADO
			SELECT @outResultCode
		END
END	
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_Relationship]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update Relationship
-- =============================================
CREATE PROCEDURE [dbo].[SP_Update_Relationship]
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
/****** Object:  StoredProcedure [dbo].[SP_Update_TypeDocIdentity]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update TypeDocIdentity
-- =============================================
CREATE PROCEDURE [dbo].[SP_Update_TypeDocIdentity]
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
/****** Object:  StoredProcedure [dbo].[SP_Update_TypeMovCO]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update TypeMovCO
-- =============================================
CREATE PROCEDURE [dbo].[SP_Update_TypeMovCO]
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
/****** Object:  StoredProcedure [dbo].[SP_Update_TypeMovCOInt]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update TypeMovCOInt
-- =============================================
CREATE PROCEDURE [dbo].[SP_Update_TypeMovCOInt]
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
/****** Object:  StoredProcedure [dbo].[SP_Update_TypeMovementCA]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Mario Fernandez
-- Create Date: 2020
-- Description: Update TypeMovementCA
-- =============================================
CREATE PROCEDURE [dbo].[SP_Update_TypeMovementCA]
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
/****** Object:  StoredProcedure [dbo].[SP_Update_User]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[SP_Update_User]
(
	@PersonId int =0,
	@UserName varchar(50) ='',
	@Password varchar(20) ='',
	@IsAdministrator bit = false
)
as
BEGIN 
	UPDATE [User]  SET PersonId=@PersonId, UserName=@UserName, Password=@Password, IsAdministrator=@IsAdministrator
END
GO
/****** Object:  StoredProcedure [dbo].[sp_upgraddiagrams]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
	
GO
/****** Object:  Trigger [dbo].[initAccountStatement]    Script Date: 12/7/2020 5:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[initAccountStatement] ON [dbo].[SavingsAccount]
AFTER INSERT
--NOT FOR REPLICATION 
AS
BEGIN
	INSERT INTO [dbo].[AccountStatement](SavingsAccountId,
										StartDate,
										EndDate,
										InitialBalance,
										FinalBalance,
										MinBalance,
										ATMOps,
										HumOps,
										InsertAt,
										InsertBy,
										InsertIn)
	SELECT i.Id,
		   i.CreationDate,
		   DATEADD( DAY, -1, DATEADD(MONTH, 1, i.CreationDate)),
		   0,
		   0,
		   0,
		   0,
		   0,
		   GETDATE(),
		   'Script',
		   '186.176.102.189'

	FROM inserted AS i
END
GO
ALTER TABLE [dbo].[SavingsAccount] ENABLE TRIGGER [initAccountStatement]
GO
EXEC sys.sp_addextendedproperty @name=N'microsoft_database_tools_support', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sysdiagrams'
GO
ALTER DATABASE [proyecto1-database] SET  READ_WRITE 
GO
