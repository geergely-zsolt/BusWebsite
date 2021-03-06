USE [master]
GO
/****** Object:  Database [BusDB]    Script Date: 2019. 06. 11. 13:27:57 ******/
CREATE DATABASE [BusDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BusDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BusDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BusDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BusDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BusDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BusDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BusDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BusDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BusDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BusDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BusDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [BusDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BusDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BusDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BusDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BusDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BusDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BusDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BusDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BusDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BusDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BusDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BusDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BusDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BusDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BusDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BusDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BusDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BusDB] SET RECOVERY FULL 
GO
ALTER DATABASE [BusDB] SET  MULTI_USER 
GO
ALTER DATABASE [BusDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BusDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BusDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BusDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BusDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BusDB', N'ON'
GO
ALTER DATABASE [BusDB] SET QUERY_STORE = OFF
GO
USE [BusDB]
GO
/****** Object:  Table [dbo].[Line]    Script Date: 2019. 06. 11. 13:27:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Line](
	[ID] [int] NOT NULL,
	[LineID] [int] NOT NULL,
	[StationID] [int] NOT NULL,
	[StationNr] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Line] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Station]    Script Date: 2019. 06. 11. 13:27:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Station](
	[StationID] [int] NOT NULL,
	[StationName] [nvarchar](50) NOT NULL,
	[Longitude] [float] NOT NULL,
	[Latitude] [float] NOT NULL,
 CONSTRAINT [PK_Station] PRIMARY KEY CLUSTERED 
(
	[StationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Line] ON 

INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (0, 44, 1, 16)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (1, 44, 2, 17)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (2, 44, 3, 18)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (3, 44, 4, 19)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (4, 44, 5, 20)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (5, 44, 6, 21)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (6, 44, 7, 22)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (7, 44, 8, 23)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (8, 44, 9, 24)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (9, 44, 10, 25)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (10, 44, 11, 26)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (11, 44, 12, 27)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (12, 44, 13, 28)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (13, 44, 14, 29)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (14, 44, 15, 30)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (15, 44, 16, 31)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (16, 44, 17, 32)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (17, 44, 18, 33)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (18, 44, 19, 34)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (19, 44, 20, 35)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (20, 44, 21, 36)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (21, 44, 22, 37)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (22, 44, 23, 38)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (23, 44, 24, 40)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (24, 44, 25, 41)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (25, 44, 26, 42)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (26, 44, 27, 43)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (27, 44, 28, 44)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (28, 44, 29, 45)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (29, 44, 30, 46)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (30, 44, 31, 47)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (31, 44, 32, 48)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (32, 44, 33, 49)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (33, 44, 34, 50)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (34, 44, 35, 51)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (35, 44, 36, 52)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (36, 44, 37, 53)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (37, 44, 38, 54)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (38, 44, 39, 55)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (39, 44, 40, 56)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (40, 44, 41, 57)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (41, 44, 42, 58)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (42, 44, 43, 59)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (43, 44, 44, 60)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (44, 44, 1, 61)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (45, 26, 1, 62)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (46, 26, 2, 63)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (47, 26, 3, 64)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (48, 26, 4, 65)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (49, 26, 5, 66)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (50, 26, 6, 67)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (51, 26, 45, 68)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (52, 26, 46, 69)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (53, 26, 47, 70)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (54, 26, 48, 71)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (55, 26, 49, 72)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (56, 26, 50, 73)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (57, 26, 51, 74)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (58, 26, 52, 75)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (59, 26, 53, 76)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (60, 26, 54, 77)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (61, 26, 55, 78)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (62, 26, 56, 79)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (63, 26, 57, 80)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (64, 26, 58, 81)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (65, 26, 59, 82)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (66, 26, 40, 84)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (67, 26, 41, 85)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (68, 26, 42, 86)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (69, 26, 43, 87)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (70, 26, 44, 88)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (71, 26, 1, 89)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (72, 27, 1, 90)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (73, 27, 2, 91)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (74, 27, 60, 92)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (75, 27, 61, 93)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (76, 27, 62, 94)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (77, 27, 63, 95)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (78, 27, 10, 96)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (79, 27, 11, 97)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (80, 27, 12, 98)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (81, 27, 76, 99)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (82, 27, 47, 100)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (83, 27, 64, 101)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (84, 27, 65, 107)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (85, 27, 66, 108)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (86, 27, 67, 109)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (87, 27, 68, 110)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (88, 27, 69, 111)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (89, 27, 70, 112)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (90, 27, 71, 113)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (91, 27, 56, 114)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (92, 27, 57, 115)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (93, 27, 72, 116)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (94, 27, 61, 117)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (95, 27, 73, 118)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (96, 27, 74, 119)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (97, 27, 75, 120)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (98, 27, 43, 121)
GO
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (99, 27, 44, 122)
INSERT [dbo].[Line] ([ID], [LineID], [StationID], [StationNr]) VALUES (100, 27, 1, 123)
SET IDENTITY_INSERT [dbo].[Line] OFF
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (1, N'Sapientia', 24.598617, 46.523454)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (2, N'Business', 24.599038, 46.527224)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (3, N'Regele Ferdinand', 24.589764, 46.533688)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (4, N'Piaţa Diamant', 24.591227, 46.536912)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (5, N'Înfrăţirii', 24.5820326, 46.5384713)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (6, N'Fortuna', 24.5842053, 46.5351228)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (7, N'Moldovei', 24.578815, 46.5352696)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (8, N'Macul Roşu', 24.5762405, 46.5357569)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (9, N'Dacia', 24.572695, 46.537805)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (10, N'Panduru', 24.5688484, 46.5336265)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (11, N'Izvoru Rece', 24.56352, 46.5348439)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (12, N'Predeal', 24.5620513, 46.5366702)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (13, N'Cireşului ', 24.5583722, 46.5361617)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (14, N'Dâmbul Pietros', 24.5553794, 46.5319203)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (15, N'Ciucaş', 24.5519007, 46.5290591)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (16, N'Gara CFR', 24.546724, 46.5307678)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (17, N'Autogara Voiajor', 24.544805, 46.5283072)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (18, N'Traian Vuia', 24.5390728, 46.5257986)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (19, N'Record 2', 24.531274, 46.5218967)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (20, N'Gheorghe Doja', 24.5290783, 46.5208112)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (21, N'Chimie', 24.5237158, 46.5181739)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (22, N'Metro', 24.5183173, 46.515467)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (23, N'Combinat', 24.5106461, 46.5116588)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (24, N'European Retail Park', 24.5110409, 46.5117342)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (25, N'Metro', 24.5182564, 46.5152953)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (26, N'Conserve', 24.5248302, 46.5185786)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (27, N'Record', 24.5315652, 46.5219164)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (28, N'Prodcomplex', 24.5377097, 46.5249653)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (29, N'Autogara Voiajor', 24.5460268, 46.5287363)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (30, N'Trecătorul', 24.5496798, 46.5305279)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (31, N'Olimp', 24.555106, 46.5295914)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (32, N'Cosmos', 24.5569914, 46.5328216)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (33, N'Avram Iancu', 24.5563021, 46.536224)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (34, N'Predeal', 24.5587706, 46.5380177)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (35, N'Izvoru  Rece', 24.5656437, 46.5348212)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (36, N'Eon', 24.5706962, 46.5335431)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (37, N'Dacia', 24.574212, 46.537433)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (38, N'Macul Roşu', 24.57556, 46.53547)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (39, N'Moldovei', 24.5790609, 46.535332)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (40, N'Poclos', 24.5844355, 46.5377614)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (41, N'Tudor Vladimirescu', 24.5848114, 46.5390979)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (42, N'Piaţa Diamant', 24.5912237, 46.5367688)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (43, N'Corina 2', 24.5876062, 46.532543)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (44, N'Business', 24.599536, 46.526451)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (45, N'Lalelelor', 24.5741787, 46.539094)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (46, N'Izvor', 24.56048, 46.539675)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (47, N' P-ţa Trandafirilor', 24.560172, 46.543701)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (48, N'Evidenţa Populaţiei', 24.560497, 46.54758)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (49, N'Cocoşul De Aur', 24.555873, 46.550721)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (50, N'Aleea Carpaţi', 24.557459, 46.553144)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (51, N'Ştrandul 1 Mai', 24.564191, 46.55706)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (52, N'Aleea Carpaţi', 24.5635936, 46.5566913)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (53, N'Darina', 24.558112, 46.553596)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (54, N'Electrica', 24.55822, 46.550567)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (55, N'Eroilor Martirii', 24.558356, 46.548261)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (56, N'P-ţa Teatrului', 24.562527, 46.546028)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (57, N'Poli 2', 24.561135, 46.539366)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (58, N'Europa', 24.570258, 46.538646)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (59, N'Buşteni ', 24.575226, 46.538763)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (60, N'Corina1', 24.588306, 46.533258)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (61, N'Pandurilor', 24.582385, 46.534209)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (62, N'Mari Cristi', 24.57885, 46.533297)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (63, N'MBO', 24.570482, 46.533741)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (64, N'Revoluţiei', 24.564427, 46.547754)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (65, N'P-ţa Republicii', 24.567163, 46.552251)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (66, N'22 Decembrie 1989', 24.575885, 46.557676)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (67, N'Spitalul Judeţean', 24.581545, 46.559175)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (68, N'Parcul Eroilor', 24.580105, 46.555698)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (69, N'Clinica de Oncologie', 24.578301, 46.55417)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (70, N'Braseria Universităţii', 24.573731, 46.550865)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (71, N'Nicolae Iorga', 24.569285, 46.546701)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (72, N'Budai Nagy Antal ', 24.565492, 46.534915)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (73, N'Erdely', 24.573676, 46.532998)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (74, N'Mari Cristi', 24.579488, 46.533048)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (75, N'B-dul 1 Decembrie 1918', 24.583729, 46.534781)
INSERT [dbo].[Station] ([StationID], [StationName], [Longitude], [Latitude]) VALUES (76, N'Crinului', 24.557995, 46.537457)
ALTER TABLE [dbo].[Line]  WITH CHECK ADD  CONSTRAINT [FK_Line_Station] FOREIGN KEY([StationID])
REFERENCES [dbo].[Station] ([StationID])
GO
ALTER TABLE [dbo].[Line] CHECK CONSTRAINT [FK_Line_Station]
GO
USE [master]
GO
ALTER DATABASE [BusDB] SET  READ_WRITE 
GO
