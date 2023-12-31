USE [master]
GO
/****** Object:  Database [Produkti]    Script Date: 07.07.2023 19:34:48 ******/
CREATE DATABASE [Produkti]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Produkti', FILENAME = N'D:\SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Produkti.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Produkti_log', FILENAME = N'D:\SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Produkti_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Produkti] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Produkti].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Produkti] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Produkti] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Produkti] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Produkti] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Produkti] SET ARITHABORT OFF 
GO
ALTER DATABASE [Produkti] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Produkti] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Produkti] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Produkti] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Produkti] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Produkti] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Produkti] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Produkti] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Produkti] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Produkti] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Produkti] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Produkti] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Produkti] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Produkti] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Produkti] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Produkti] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Produkti] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Produkti] SET RECOVERY FULL 
GO
ALTER DATABASE [Produkti] SET  MULTI_USER 
GO
ALTER DATABASE [Produkti] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Produkti] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Produkti] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Produkti] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Produkti] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Produkti] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Produkti', N'ON'
GO
ALTER DATABASE [Produkti] SET QUERY_STORE = ON
GO
ALTER DATABASE [Produkti] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Produkti]
GO
/****** Object:  Table [dbo].[Produkti_1]    Script Date: 07.07.2023 19:34:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkti_1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[Srok_God] [date] NULL,
	[Num_Sklad] [int] NOT NULL,
	[Manufactory] [nvarchar](50) NULL,
	[Shop_Polychat] [nvarchar](50) NULL,
	[Skidka] [bit] NULL,
	[DB_Shop] [bit] NULL,
	[Prinimaushi_Shop] [nvarchar](50) NOT NULL,
	[Nachalnik_Shop] [nvarchar](50) NOT NULL,
	[Num_Novii_Tovar] [int] NULL,
 CONSTRAINT [PK_Produkti_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[Num_Sklad] ASC,
	[Prinimaushi_Shop] ASC,
	[Nachalnik_Shop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Produkti_1] ON 

INSERT [dbo].[Produkti_1] ([ID], [Name], [Price], [Srok_God], [Num_Sklad], [Manufactory], [Shop_Polychat], [Skidka], [DB_Shop], [Prinimaushi_Shop], [Nachalnik_Shop], [Num_Novii_Tovar]) VALUES (1, N'Vine', 40, CAST(N'2023-07-10' AS Date), 73, N'Vine_Ind', N'Silpo', 1, 1, N'Natalya', N'Maria', 5)
INSERT [dbo].[Produkti_1] ([ID], [Name], [Price], [Srok_God], [Num_Sklad], [Manufactory], [Shop_Polychat], [Skidka], [DB_Shop], [Prinimaushi_Shop], [Nachalnik_Shop], [Num_Novii_Tovar]) VALUES (2, N'Konyak', 60, CAST(N'2024-07-13' AS Date), 11, N'Konyak_Fact', N'Tavria', 0, 0, N'Vitya', N'Vova', 0)
INSERT [dbo].[Produkti_1] ([ID], [Name], [Price], [Srok_God], [Num_Sklad], [Manufactory], [Shop_Polychat], [Skidka], [DB_Shop], [Prinimaushi_Shop], [Nachalnik_Shop], [Num_Novii_Tovar]) VALUES (8, N'Syhariki', 20, CAST(N'2023-08-07' AS Date), 56, N'Flint', N'Silpo', 1, 1, N'Nikitos', N'Danil', 1)
INSERT [dbo].[Produkti_1] ([ID], [Name], [Price], [Srok_God], [Num_Sklad], [Manufactory], [Shop_Polychat], [Skidka], [DB_Shop], [Prinimaushi_Shop], [Nachalnik_Shop], [Num_Novii_Tovar]) VALUES (10, N'Chips', 50, CAST(N'2023-07-25' AS Date), 41, N'Doritos', N'Kopeika', 1, 1, N'Vova', N'Leha', 10)
INSERT [dbo].[Produkti_1] ([ID], [Name], [Price], [Srok_God], [Num_Sklad], [Manufactory], [Shop_Polychat], [Skidka], [DB_Shop], [Prinimaushi_Shop], [Nachalnik_Shop], [Num_Novii_Tovar]) VALUES (11, N'Pivo', 45, CAST(N'2023-07-30' AS Date), 51, N'Lvivske', N'Tavria', 0, 1, N'Nikitos', N'Alex', 2)
INSERT [dbo].[Produkti_1] ([ID], [Name], [Price], [Srok_God], [Num_Sklad], [Manufactory], [Shop_Polychat], [Skidka], [DB_Shop], [Prinimaushi_Shop], [Nachalnik_Shop], [Num_Novii_Tovar]) VALUES (12, N'Apple', 30, CAST(N'2023-08-02' AS Date), 89, N'Apple_Company', N'Tavria', 1, 0, N'Mike', N'Sanya', 0)
INSERT [dbo].[Produkti_1] ([ID], [Name], [Price], [Srok_God], [Num_Sklad], [Manufactory], [Shop_Polychat], [Skidka], [DB_Shop], [Prinimaushi_Shop], [Nachalnik_Shop], [Num_Novii_Tovar]) VALUES (13, N'Chocolate', 25, CAST(N'2023-07-18' AS Date), 100, N'Milka', N'Silpo', 0, 1, N'Alina', N'Tatyana', 11)
SET IDENTITY_INSERT [dbo].[Produkti_1] OFF
GO
USE [master]
GO
ALTER DATABASE [Produkti] SET  READ_WRITE 
GO
