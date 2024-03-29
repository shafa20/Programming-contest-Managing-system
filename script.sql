USE [master]
GO
/****** Object:  Database [project]    Script Date: 7/29/2019 12:06:29 PM ******/
CREATE DATABASE [project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\project.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\project_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [project] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [project] SET ARITHABORT OFF 
GO
ALTER DATABASE [project] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [project] SET  ENABLE_BROKER 
GO
ALTER DATABASE [project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [project] SET  MULTI_USER 
GO
ALTER DATABASE [project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [project] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [project] SET DELAYED_DURABILITY = DISABLED 
GO
USE [project]
GO
/****** Object:  Table [dbo].[advisor]    Script Date: 7/29/2019 12:06:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[advisor](
	[advisor_id] [int] NOT NULL,
	[advisor_name] [varchar](50) NULL,
	[contract_no] [varchar](50) NULL,
 CONSTRAINT [pk_advisor_id] PRIMARY KEY CLUSTERED 
(
	[advisor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[event_name]    Script Date: 7/29/2019 12:06:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[event_name](
	[event_name] [varchar](50) NOT NULL,
	[guest_name] [varchar](50) NULL,
	[arrival_time] [int] NULL,
 CONSTRAINT [pk_event_name] PRIMARY KEY CLUSTERED 
(
	[event_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[main_event]    Script Date: 7/29/2019 12:06:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[main_event](
	[event_name] [varchar](50) NOT NULL,
	[event_location] [varchar](50) NULL,
	[sponser_name] [varchar](50) NULL,
	[start_time] [int] NULL,
 CONSTRAINT [pk_event_name2] PRIMARY KEY CLUSTERED 
(
	[event_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[participant]    Script Date: 7/29/2019 12:06:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[participant](
	[part_id] [int] NOT NULL,
	[part_name] [varchar](50) NULL,
	[semester] [varchar](50) NULL,
 CONSTRAINT [pk_part_id] PRIMARY KEY CLUSTERED 
(
	[part_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[project]    Script Date: 7/29/2019 12:06:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[project](
	[tyep] [varchar](50) NULL,
	[price] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sponser]    Script Date: 7/29/2019 12:06:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sponser](
	[sponser_name] [varchar](50) NOT NULL,
	[office_location] [varchar](50) NULL,
	[contact_no] [int] NULL,
 CONSTRAINT [pk_sponser_name] PRIMARY KEY CLUSTERED 
(
	[sponser_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[team]    Script Date: 7/29/2019 12:06:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[team](
	[team_id] [int] NOT NULL,
	[team_name] [varchar](50) NULL,
	[advisor_id] [int] NULL,
	[part_id] [int] NULL,
	[tyep] [varchar](50) NULL,
 CONSTRAINT [pk_team_id] PRIMARY KEY CLUSTERED 
(
	[team_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (1, N'imran bin ajad', N'01923')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (2, N'sakib hasan dhrobo ', N'017345')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (3, N'rajib  sir', N'01843')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (4, N'naima sultana', N'01123')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (5, N'alok kumar saha', N'6789')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (6, N'shopon', N'09675')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (7, N'shammi akter', N'8974')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (8, N'shila rahman', N'27834')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (9, N'ayub khan', N'011234')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (101, N'robert', N'01123')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (102, N'frankistain ', N'011345')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (103, N'joe burns', N'011843')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (104, N'ojit sorkar', N'011223')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (105, N'ajoy ghosh', N'06789')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (106, N'luka david', N'0229675')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (107, N'iftikur rahman', N'0668974')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (108, N'rustom mia', N'2237834')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (109, N'cris moris', N'01001234')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (201, N'pervez chowdhury', N'0231923')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (202, N' nikhil roy ', N'01337345')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (203, N'wu chang jam', N'01234843')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (204, N'nilofar khan', N'06781123')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (205, N'omar akbar', N'01126789')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (206, N'Md. nasir khasru', N'0193675')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (207, N'peter michel', N'018974')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (208, N'kusal javed perera', N'01227834')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (209, N'harry maquire', N'0177234')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (301, N'Mst. tarana nipa', N'0167923')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (302, N'fernando perez', N'014567345')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (303, N'thiago mathew', N'03345843')
INSERT [dbo].[advisor] ([advisor_id], [advisor_name], [contract_no]) VALUES (304, N'philipe kane', N'01435234')
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'APC', N'Sheikh Hasina', 12)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'BPC', N' nilofar chowdhury', 1)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'Contest War', N'Sheikh Hasina', 11)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'Contest War uap', N'Sheikh rehena', 4)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'Contest War uap2', N'kobir uddin mia', 10)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'Contest War uap3', N'Dr. nilima khan ', 9)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'Contest War2', N'micheal maxweel ', 9)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'Contest War3', N'Tarana nipa', 12)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'CPC', N'mr.kaikobad ', 9)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'DPC', N'Tarana Halim', 11)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'DVPC', N'Dr. jafor ullah ', 12)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'EPC', N'modi', 5)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'FPC', N'abul kalam ajad', 2)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'GPC', N'norul haque ', 8)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'HPC', N'hyn min son ', 4)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'ICPC', N'Abdul Hamid Khan', 12)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'IDPC', N'Shojib wajed joy', 9)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'IPC', N'varat sing', 9)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'JPC', N'yu ching Honda', 3)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'KPC', N'yu ching jacky ', 2)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'LPC', N'jack jones ', 11)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'MPC', N'randeep hoda', 2)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'NCPC', N'imran bin ajad', 1)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'NDPC', N'Sheikh tonmoy', 2)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'NPC', N'william hervy ', 3)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'OPC', N'keton jenings', 2)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'Programming Contest Fall', N'halim biswas ', 11)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'Programming Contest SPring', N'aminul biswas', 10)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'Programming juddo', N'sharuk Khan ', 3)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'Programming uap', N'Ayub Khan ', 11)
INSERT [dbo].[event_name] ([event_name], [guest_name], [arrival_time]) VALUES (N'Programming War', N'Ayub Khan ', 10)
INSERT [dbo].[main_event] ([event_name], [event_location], [sponser_name], [start_time]) VALUES (N'Contest War', N'american International University', N'matador', 11)
INSERT [dbo].[main_event] ([event_name], [event_location], [sponser_name], [start_time]) VALUES (N'Contest War uap', N'University of Asia Pacific', N'windows ', 9)
INSERT [dbo].[main_event] ([event_name], [event_location], [sponser_name], [start_time]) VALUES (N'CPC', N'Kustia Islamic University', N'pran', 10)
INSERT [dbo].[main_event] ([event_name], [event_location], [sponser_name], [start_time]) VALUES (N'DPC', N'University of Dhenmark', N'pran ', 12)
INSERT [dbo].[main_event] ([event_name], [event_location], [sponser_name], [start_time]) VALUES (N'DVPC', N'Khulna University', N'khan group', 1)
INSERT [dbo].[main_event] ([event_name], [event_location], [sponser_name], [start_time]) VALUES (N'ICPC', N'Dhaka University ', N'ambuza Cement', 9)
INSERT [dbo].[main_event] ([event_name], [event_location], [sponser_name], [start_time]) VALUES (N'IDPC', N'University of Asia Pacific', N'Bosondara group ', 9)
INSERT [dbo].[main_event] ([event_name], [event_location], [sponser_name], [start_time]) VALUES (N'NCPC', N'Sydney International University', N'ispahani', 10)
INSERT [dbo].[main_event] ([event_name], [event_location], [sponser_name], [start_time]) VALUES (N'NDPC', N'University of Newzeland', N'star ', 9)
INSERT [dbo].[main_event] ([event_name], [event_location], [sponser_name], [start_time]) VALUES (N'Programming juddo', N'Daffodil International University bangladesh', N'sony', 10)
INSERT [dbo].[main_event] ([event_name], [event_location], [sponser_name], [start_time]) VALUES (N'Programming uap', N' University of Asia Pacific', N'chowdhury  group', 2)
INSERT [dbo].[main_event] ([event_name], [event_location], [sponser_name], [start_time]) VALUES (N'Programming War', N'Daffodil International University', N'crown cement', 10)
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (11, N'michel mory', N'six')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (21, N'jerin akther', N'eight')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (112, N'harry gerny', N'five')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (171, N'jack', N'second')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (212, N'rnespal roy', N'1st')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (1123, N'pedro', N'eight')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (1712, N'maxy gerny', N'eight')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (2123, N'julian robbert', N'seven')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (11234, N'javed wasim', N'two')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (17123, N'rodrigo', N'1st')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (21234, N'dilruhan perera', N'third')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (112345, N'mialina ', N'third')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (171234, N'govinda', N'seven')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (1123456, N'beyazid', N'four')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (1712345, N'wu chu hang', N'third')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (11234567, N'oliver pope', N'1st')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (15101020, N'hasin', N'five')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (15101021, N'sakib', N'1st')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (15201020, N'anik khan', N'four')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (15201021, N'lulu khan', N'eight')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (16201020, N'tasim khan', N'seven')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (16201021, N'ahad khan', N'sixth')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (17101020, N'hasin', N'five')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (17101021, N'sakib', N'1st')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (17201020, N'shafa khan', N'four')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (17201021, N'anik khan', N'four')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (18201020, N'shihab jhan', N'third')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (18201021, N'sifat khan', N'second')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (19101020, N'tasim khan', N'seven')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (19101021, N'ahad khan', N'sixth')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (19201020, N'shihab jhan', N'third')
INSERT [dbo].[participant] ([part_id], [part_name], [semester]) VALUES (19201021, N'sifat khan', N'second')
INSERT [dbo].[project] ([tyep], [price]) VALUES (N'junior natinal level', N'20 lakh')
INSERT [dbo].[project] ([tyep], [price]) VALUES (N'junior internatinal level(JPC)', N'2 cr')
INSERT [dbo].[project] ([tyep], [price]) VALUES (N'national level(NCPC)', N' 70 lakh')
INSERT [dbo].[project] ([tyep], [price]) VALUES (N'international level(ICPC)', N'5 cr')
INSERT [dbo].[project] ([tyep], [price]) VALUES (N'inter district level(DPC)', N' 5 lakh')
INSERT [dbo].[project] ([tyep], [price]) VALUES (N'inter division level(DVPC)', N' 10 lakh')
INSERT [dbo].[project] ([tyep], [price]) VALUES (N'inter college level(CPC)', N'10 thousands')
INSERT [dbo].[project] ([tyep], [price]) VALUES (N'inter versity level(VCPC)', N' 2 lakh')
INSERT [dbo].[project] ([tyep], [price]) VALUES (N'gold category(GPC)', N' 5 cr')
INSERT [dbo].[project] ([tyep], [price]) VALUES (N'all kind of UAP contest ', N' 5 lakh')
INSERT [dbo].[project] ([tyep], [price]) VALUES (N'selver(normal) category(NPC)', N'1 cr')
INSERT [dbo].[project] ([tyep], [price]) VALUES (N'other all contest', N'25 lakh')
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N' cocola', N'dhamrai', 11300)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'ambuza Cement', N'Gabtalia india', 1120)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'bangla phone', N'ghulsan', 5523465)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'bata shoe', N'dhaka', 551160)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'bikroy,com', N'dhaka', 55960)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'Bosondara group', N'ghaka', 8800)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'btv', N'dhanmondi', 541120)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'center fruit', N'Gazipur', 1234120)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'chowdhury  group', N'luxmirpur', 55692)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'crown cement', N'gazipur', 1100)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'dano group', N'kolkata india', 891345)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'desh bangla', N'mirpur', 2341345)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'fresh Cement', N'munshiging', 110032)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'geogle', N'america', 55670)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'gtv', N'Banani', 556165)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'ispahani', N'mirjapur', 5565)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'jago bd chanel', N'mirpur', 955670)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'JR paribahan', N'dhaka gabtoli', 5596780)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'khan group', N'chuadanga', 88001)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'mam pani', N'uttara', 125561)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'matador', N'Banani', 5561)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'news 24 chanel', N'kawran bazar', 911007)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'nokia ', N'india', 594560)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'Pran', N'dhaka', 5960)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'reliance group', N'mumbai', 1100897)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'rfl', N'manikgong', 550965)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'sony', N'mumbai', 55670)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'squre pharma', N'dhamrai', 111100)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'star', N'india delli', 1345)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'symphony', N'dhaka', 128800)
INSERT [dbo].[sponser] ([sponser_name], [office_location], [contact_no]) VALUES (N'windows', N'america', 11007)
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (1, N'Uap coder', 1, 17201020, N'junior natinal level')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (2, N'safa the boss', 2, 17201021, N'junior internatinal level(JPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (3, N'sustian', 3, 17101020, N'national level(NCPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (4, N'kuetian', 5, 18201021, N'inter district level(DPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (5, N'coder7', 6, 18201020, N'inter division level(DVPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (6, N'heavy coder', 7, 16201021, N'inter college level(CPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (7, N'uapian', 4, 17101021, N'international level(ICPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (8, N'du coder', 8, 16201020, N'inter versity level(VCPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (9, N'junior coder', 9, 15201021, N'gold category(GPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (10, N'all star', 101, 15201020, N'all kind of UAP contest')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (11, N'chapion', 102, 15101021, N'selver(normal) category(NPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (12, N'great coder', 103, 15101020, N'other all contest')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (13, N'team infinity', 104, 19201021, N'international level(ICPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (14, N'long time no ac', 105, 19201020, N'international level(ICPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (15, N'coder79', 106, 19101020, N'international level(ICPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (16, N'loop coder', 107, 19101021, N'inter district level(DPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (17, N'dynamic coder', 108, 171, N'inter district level(DPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (18, N'recursive coder', 109, 1712, N'inter district level(DPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (19, N'jetboi jetbo', 201, 17123, N'inter versity level(VCPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (20, N'shining star', 202, 171234, N'inter versity level(VCPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (21, N'shei rokom coder', 203, 1712345, N'inter versity level(VCPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (22, N'code breakers', 204, 11, N'inter versity level(VCPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (23, N'xenon 42', 205, 112, N'inter versity level(VCPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (26, N'talented coder', 208, 112345, N'gold category(GPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (27, N'time complexity best', 209, 1123456, N'gold category(GPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (28, N'avarage case', 301, 11234567, N'inter college level(CPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (29, N'geogle dream', 302, 21, N'gold category(GPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (30, N'hanter', 303, 212, N'inter college level(CPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (244, N'single man', 206, 1123, N'inter college level(CPC)')
INSERT [dbo].[team] ([team_id], [team_name], [advisor_id], [part_id], [tyep]) VALUES (255, N'one man army', 207, 11234, N'gold category(GPC)')
ALTER TABLE [dbo].[main_event]  WITH CHECK ADD FOREIGN KEY([event_name])
REFERENCES [dbo].[event_name] ([event_name])
GO
ALTER TABLE [dbo].[main_event]  WITH CHECK ADD FOREIGN KEY([sponser_name])
REFERENCES [dbo].[sponser] ([sponser_name])
GO
ALTER TABLE [dbo].[team]  WITH CHECK ADD FOREIGN KEY([advisor_id])
REFERENCES [dbo].[advisor] ([advisor_id])
GO
ALTER TABLE [dbo].[team]  WITH CHECK ADD FOREIGN KEY([part_id])
REFERENCES [dbo].[participant] ([part_id])
GO
USE [master]
GO
ALTER DATABASE [project] SET  READ_WRITE 
GO
