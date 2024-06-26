USE [master]
GO
/****** Object:  Database [DEMO_IOT]    Script Date: 5/15/2024 1:02:13 AM ******/
CREATE DATABASE [DEMO_IOT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DEMO_IOT', FILENAME = N'D:\Mon_python\bbt\DEMO_IOT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DEMO_IOT_log', FILENAME = N'D:\Mon_python\bbt\DEMO_IOT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DEMO_IOT] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DEMO_IOT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DEMO_IOT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DEMO_IOT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DEMO_IOT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DEMO_IOT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DEMO_IOT] SET ARITHABORT OFF 
GO
ALTER DATABASE [DEMO_IOT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DEMO_IOT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DEMO_IOT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DEMO_IOT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DEMO_IOT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DEMO_IOT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DEMO_IOT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DEMO_IOT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DEMO_IOT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DEMO_IOT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DEMO_IOT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DEMO_IOT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DEMO_IOT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DEMO_IOT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DEMO_IOT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DEMO_IOT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DEMO_IOT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DEMO_IOT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DEMO_IOT] SET  MULTI_USER 
GO
ALTER DATABASE [DEMO_IOT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DEMO_IOT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DEMO_IOT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DEMO_IOT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DEMO_IOT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DEMO_IOT] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DEMO_IOT] SET QUERY_STORE = ON
GO
ALTER DATABASE [DEMO_IOT] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DEMO_IOT]
GO
/****** Object:  Table [dbo].[lich_su]    Script Date: 5/15/2024 1:02:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lich_su](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [nchar](10) NULL,
	[value] [decimal](18, 0) NULL,
	[time] [datetime] NULL,
 CONSTRAINT [PK_lich_su] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sensor]    Script Date: 5/15/2024 1:02:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sensor](
	[SID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Unit] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sensor] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[lich_su] ON 

INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (1, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:07:44.537' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (2, N'2         ', CAST(95 AS Decimal(18, 0)), CAST(N'2024-05-15T00:07:44.540' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (3, N'1         ', CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-15T00:10:28.020' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (4, N'2         ', CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-15T00:10:28.023' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (5, N'1         ', CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-15T00:11:15.807' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (6, N'2         ', CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-15T00:11:15.810' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (7, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T00:11:45.950' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (8, N'2         ', CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-15T00:11:45.953' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (9, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:12:15.820' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (10, N'2         ', CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-15T00:12:15.820' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (11, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:12:45.810' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (12, N'2         ', CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-15T00:12:45.813' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (13, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:13:15.833' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (14, N'2         ', CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-15T00:13:15.837' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (15, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:13:45.853' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (16, N'2         ', CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-15T00:13:45.857' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (17, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:14:15.850' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (18, N'2         ', CAST(91 AS Decimal(18, 0)), CAST(N'2024-05-15T00:14:15.853' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (19, N'1         ', CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-15T00:14:45.877' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (20, N'2         ', CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-15T00:14:45.877' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (21, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:15:15.873' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (22, N'2         ', CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-15T00:15:15.877' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (23, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:15:45.927' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (24, N'2         ', CAST(82 AS Decimal(18, 0)), CAST(N'2024-05-15T00:15:45.930' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (25, N'1         ', CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-15T00:16:15.903' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (26, N'2         ', CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-15T00:16:15.907' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (27, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T00:16:45.893' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (28, N'2         ', CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-15T00:16:45.893' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (29, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:17:15.920' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (30, N'2         ', CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-15T00:17:15.923' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (31, N'1         ', CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-15T00:17:46.113' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (32, N'2         ', CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-15T00:17:46.117' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (33, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T00:18:15.933' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (34, N'2         ', CAST(91 AS Decimal(18, 0)), CAST(N'2024-05-15T00:18:15.940' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (35, N'1         ', CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-15T00:18:45.970' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (36, N'2         ', CAST(91 AS Decimal(18, 0)), CAST(N'2024-05-15T00:18:45.970' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (37, N'1         ', CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-15T00:19:15.960' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (38, N'2         ', CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-15T00:19:15.960' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (39, N'1         ', CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-15T00:19:45.977' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (40, N'2         ', CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-15T00:19:45.980' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (41, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T00:20:15.967' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (42, N'2         ', CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-15T00:20:15.970' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (43, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:20:45.990' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (44, N'2         ', CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-15T00:20:45.990' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (45, N'1         ', CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-15T00:21:15.993' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (46, N'2         ', CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-15T00:21:15.993' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (47, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:21:45.997' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (48, N'2         ', CAST(86 AS Decimal(18, 0)), CAST(N'2024-05-15T00:21:45.997' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (49, N'1         ', CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-15T00:22:16.010' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (50, N'2         ', CAST(87 AS Decimal(18, 0)), CAST(N'2024-05-15T00:22:16.013' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (51, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:22:46.037' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (52, N'2         ', CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-15T00:22:46.040' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (53, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:23:16.047' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (54, N'2         ', CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-15T00:23:16.047' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (55, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:23:46.030' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (56, N'2         ', CAST(90 AS Decimal(18, 0)), CAST(N'2024-05-15T00:23:46.033' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (57, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T00:24:16.050' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (58, N'2         ', CAST(86 AS Decimal(18, 0)), CAST(N'2024-05-15T00:24:16.050' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (59, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:24:46.053' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (60, N'2         ', CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-15T00:24:46.057' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (61, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:25:16.053' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (62, N'2         ', CAST(82 AS Decimal(18, 0)), CAST(N'2024-05-15T00:25:16.057' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (63, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:25:46.067' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (64, N'2         ', CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-15T00:25:46.070' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (65, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T00:26:16.080' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (66, N'2         ', CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-15T00:26:16.080' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (67, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:26:46.090' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (68, N'2         ', CAST(87 AS Decimal(18, 0)), CAST(N'2024-05-15T00:26:46.090' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (69, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:27:16.117' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (70, N'2         ', CAST(82 AS Decimal(18, 0)), CAST(N'2024-05-15T00:27:16.120' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (71, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:27:46.110' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (72, N'2         ', CAST(86 AS Decimal(18, 0)), CAST(N'2024-05-15T00:27:46.113' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (73, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T00:28:16.130' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (74, N'2         ', CAST(95 AS Decimal(18, 0)), CAST(N'2024-05-15T00:28:16.130' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (75, N'1         ', CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-15T00:28:46.270' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (76, N'2         ', CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-15T00:28:46.273' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (77, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T00:29:16.160' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (78, N'2         ', CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-15T00:29:16.160' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (79, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:29:46.180' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (80, N'2         ', CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-15T00:29:46.190' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (81, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:30:16.187' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (82, N'2         ', CAST(82 AS Decimal(18, 0)), CAST(N'2024-05-15T00:30:16.190' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (83, N'1         ', CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-15T00:30:46.220' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (84, N'2         ', CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-15T00:30:46.223' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (85, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:31:16.210' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (86, N'2         ', CAST(90 AS Decimal(18, 0)), CAST(N'2024-05-15T00:31:16.210' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (87, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:31:46.320' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (88, N'2         ', CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-15T00:31:46.320' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (89, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:32:16.230' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (90, N'2         ', CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-15T00:32:16.233' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (91, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:32:46.280' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (92, N'2         ', CAST(91 AS Decimal(18, 0)), CAST(N'2024-05-15T00:32:46.283' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (93, N'1         ', CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-15T00:33:16.257' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (94, N'2         ', CAST(95 AS Decimal(18, 0)), CAST(N'2024-05-15T00:33:16.260' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (95, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:33:46.280' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (96, N'2         ', CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-15T00:33:46.290' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (97, N'1         ', CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-15T00:34:16.260' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (98, N'2         ', CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-15T00:34:16.260' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (99, N'1         ', CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-15T00:34:46.267' AS DateTime))
GO
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (100, N'2         ', CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-15T00:34:46.270' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (101, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T00:35:16.277' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (102, N'2         ', CAST(80 AS Decimal(18, 0)), CAST(N'2024-05-15T00:35:16.280' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (103, N'1         ', CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-15T00:35:46.307' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (104, N'2         ', CAST(90 AS Decimal(18, 0)), CAST(N'2024-05-15T00:35:46.310' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (105, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:36:16.300' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (106, N'2         ', CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-15T00:36:16.300' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (107, N'1         ', CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-15T00:36:46.320' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (108, N'2         ', CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-15T00:36:46.320' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (109, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:37:16.320' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (110, N'2         ', CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-15T00:37:16.320' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (111, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:37:46.333' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (112, N'2         ', CAST(86 AS Decimal(18, 0)), CAST(N'2024-05-15T00:37:46.333' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (113, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:38:16.333' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (114, N'2         ', CAST(91 AS Decimal(18, 0)), CAST(N'2024-05-15T00:38:16.333' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (115, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:38:46.387' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (116, N'2         ', CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-15T00:38:46.387' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (117, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:39:16.370' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (118, N'2         ', CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-15T00:39:16.370' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (119, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:39:46.393' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (120, N'2         ', CAST(90 AS Decimal(18, 0)), CAST(N'2024-05-15T00:39:46.397' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (121, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:40:16.417' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (122, N'2         ', CAST(95 AS Decimal(18, 0)), CAST(N'2024-05-15T00:40:16.420' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (123, N'1         ', CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-15T00:40:46.450' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (124, N'2         ', CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-15T00:40:46.470' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (125, N'1         ', CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-15T00:41:16.437' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (126, N'2         ', CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-15T00:41:16.440' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (127, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:41:46.413' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (128, N'2         ', CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-15T00:41:46.413' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (129, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:42:16.433' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (130, N'2         ', CAST(90 AS Decimal(18, 0)), CAST(N'2024-05-15T00:42:16.437' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (131, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:42:46.440' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (132, N'2         ', CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-15T00:42:46.440' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (133, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T00:43:16.447' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (134, N'2         ', CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-15T00:43:16.450' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (135, N'1         ', CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-15T00:43:46.490' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (136, N'2         ', CAST(80 AS Decimal(18, 0)), CAST(N'2024-05-15T00:43:46.500' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (137, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:44:16.900' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (138, N'2         ', CAST(95 AS Decimal(18, 0)), CAST(N'2024-05-15T00:44:16.900' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (139, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:44:46.517' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (140, N'2         ', CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-15T00:44:46.520' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (141, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:45:16.517' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (142, N'2         ', CAST(91 AS Decimal(18, 0)), CAST(N'2024-05-15T00:45:16.517' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (143, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:45:46.597' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (144, N'2         ', CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-15T00:45:46.600' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (145, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:46:16.550' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (146, N'2         ', CAST(86 AS Decimal(18, 0)), CAST(N'2024-05-15T00:46:16.550' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (147, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T00:46:46.560' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (148, N'2         ', CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-15T00:46:46.560' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (149, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:47:16.560' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (150, N'2         ', CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-15T00:47:16.560' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (151, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:47:46.603' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (152, N'2         ', CAST(80 AS Decimal(18, 0)), CAST(N'2024-05-15T00:47:46.617' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (153, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:48:16.577' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (154, N'2         ', CAST(80 AS Decimal(18, 0)), CAST(N'2024-05-15T00:48:16.577' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (155, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:48:46.570' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (156, N'2         ', CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-15T00:48:46.570' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (157, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:49:16.583' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (158, N'2         ', CAST(87 AS Decimal(18, 0)), CAST(N'2024-05-15T00:49:16.587' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (159, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:49:46.607' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (160, N'2         ', CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-15T00:49:46.610' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (161, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:50:16.593' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (162, N'2         ', CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-15T00:50:16.597' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (163, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:50:46.650' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (164, N'2         ', CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-15T00:50:46.650' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (165, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:51:16.630' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (166, N'2         ', CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-15T00:51:16.633' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (167, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:51:46.620' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (168, N'2         ', CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-15T00:51:46.623' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (169, N'1         ', CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-15T00:52:16.720' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (170, N'2         ', CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-15T00:52:16.730' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (171, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:52:46.657' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (172, N'2         ', CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-15T00:52:46.657' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (173, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T00:53:16.680' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (174, N'2         ', CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-15T00:53:16.683' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (175, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:53:46.770' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (176, N'2         ', CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-15T00:53:46.773' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (177, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:54:16.700' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (178, N'2         ', CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-15T00:54:16.700' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (179, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T00:54:46.700' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (180, N'2         ', CAST(90 AS Decimal(18, 0)), CAST(N'2024-05-15T00:54:46.703' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (181, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:55:17.167' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (182, N'2         ', CAST(91 AS Decimal(18, 0)), CAST(N'2024-05-15T00:55:17.167' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (183, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:55:46.763' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (184, N'2         ', CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-15T00:55:46.767' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (185, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:56:16.777' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (186, N'2         ', CAST(90 AS Decimal(18, 0)), CAST(N'2024-05-15T00:56:16.777' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (187, N'1         ', CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-15T00:56:46.770' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (188, N'2         ', CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-15T00:56:46.773' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (189, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:57:16.800' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (190, N'2         ', CAST(82 AS Decimal(18, 0)), CAST(N'2024-05-15T00:57:16.800' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (191, N'1         ', CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-15T00:57:46.797' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (192, N'2         ', CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-15T00:57:46.800' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (193, N'1         ', CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-15T00:58:16.857' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (194, N'2         ', CAST(82 AS Decimal(18, 0)), CAST(N'2024-05-15T00:58:16.860' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (195, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T00:58:46.853' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (196, N'2         ', CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-15T00:58:46.867' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (197, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:59:16.817' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (198, N'2         ', CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-15T00:59:16.817' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (199, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:59:46.827' AS DateTime))
GO
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (200, N'2         ', CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-15T00:59:46.827' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (201, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T01:00:16.817' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (202, N'2         ', CAST(95 AS Decimal(18, 0)), CAST(N'2024-05-15T01:00:16.817' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (203, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T01:00:46.857' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (204, N'2         ', CAST(90 AS Decimal(18, 0)), CAST(N'2024-05-15T01:00:46.857' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (205, N'1         ', CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-15T01:01:16.840' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (206, N'2         ', CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-15T01:01:16.843' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (207, N'1         ', CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T01:01:46.880' AS DateTime))
INSERT [dbo].[lich_su] ([id], [sid], [value], [time]) VALUES (208, N'2         ', CAST(90 AS Decimal(18, 0)), CAST(N'2024-05-15T01:01:46.893' AS DateTime))
SET IDENTITY_INSERT [dbo].[lich_su] OFF
GO
INSERT [dbo].[Sensor] ([SID], [Name], [Unit]) VALUES (1, N'Nhiệt độ lò ấp trứng chim cút', N'°C')
INSERT [dbo].[Sensor] ([SID], [Name], [Unit]) VALUES (2, N'Độ ẩm phòng khách', N'%')
GO
ALTER TABLE [dbo].[lich_su] ADD  CONSTRAINT [DF_lich_su_time]  DEFAULT (getdate()) FOR [time]
GO
/****** Object:  StoredProcedure [dbo].[SP_Chart]    Script Date: 5/15/2024 1:02:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Chart]
	@sid int,
	@timeFrom datetime=null,
	@timeEnd  datetime=null
AS
BEGIN
	if(@timeEnd is null or @timeEnd>GetDate())set @timeEnd=getdate();
	if(@timeFrom is null or @timeFrom>@timeEnd)set @timeFrom=dateAdd(HOUR,-48,@timeEnd);
	declare @name nvarchar(50);
	select @name = name from Sensor where sid=@sid;
	declare c cursor for 
		select value,time 
		from SensorHistory
		where (sid = @sid) and (time between @timeFrom and @timeEnd)
		order by time;
	open c;
	declare @value decimal(18,2), @time datetime, @value_old decimal(18,2)=0, @time_old datetime=null;
	declare @kq table(id int identity,value decimal(18,2), time datetime);
	fetch next from c into @value,@time;
	while (@@FETCH_STATUS = 0)
	begin
		declare @ss int = DateDiff(SECOND,@time_old,@time);
		if(@value != @value_old OR @time_old IS NULL OR @ss>60)
		begin
			if(@time_old is not null)
				insert into @kq(value,time)values(@value_old,@time_old);
			if(@ss>60)
			begin
				insert into @kq(value,time)values(0,@time_old),(0,@time);
			end
			insert into @kq(value,time)values(@value,@time);
		end
		select @value_old = @value, @time_old=@time; --copy 2 biến
		fetch next from c into @value,@time;
	end; --ket thuc while
	insert into @kq(value,time)values(@value,@time);
	close c;
	deallocate c;
	select @name as name,(select value as v,time as t from @kq for json path) as data
	for json path, WITHOUT_ARRAY_WRAPPER;
END

GO
USE [master]
GO
ALTER DATABASE [DEMO_IOT] SET  READ_WRITE 
GO
