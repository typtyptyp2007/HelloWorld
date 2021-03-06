USE [master]
GO
/****** Object:  Database [CRM_database]    Script Date: 2020/4/21 1:02:12 ******/
CREATE DATABASE [CRM_database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CRM_database', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CRM_database.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CRM_database_log', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CRM_database_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CRM_database] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CRM_database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CRM_database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CRM_database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CRM_database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CRM_database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CRM_database] SET ARITHABORT OFF 
GO
ALTER DATABASE [CRM_database] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CRM_database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CRM_database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CRM_database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CRM_database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CRM_database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CRM_database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CRM_database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CRM_database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CRM_database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CRM_database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CRM_database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CRM_database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CRM_database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CRM_database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CRM_database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CRM_database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CRM_database] SET RECOVERY FULL 
GO
ALTER DATABASE [CRM_database] SET  MULTI_USER 
GO
ALTER DATABASE [CRM_database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CRM_database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CRM_database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CRM_database] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CRM_database] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CRM_database', N'ON'
GO
ALTER DATABASE [CRM_database] SET QUERY_STORE = OFF
GO
USE [CRM_database]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [CRM_database]
GO
/****** Object:  Table [dbo].[city]    Script Date: 2020/4/21 1:02:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[id] [int] NULL,
	[city] [varchar](20) NULL,
	[citycode] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 2020/4/21 1:02:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](20) NULL,
	[nation] [varchar](20) NULL,
	[birthday] [datetime] NULL,
	[gender] [varchar](2) NULL,
	[IDcard] [varchar](20) NULL,
	[hobby] [varchar](30) NULL,
	[marriage] [varchar](10) NULL,
	[source] [varchar](20) NULL,
	[levels] [varchar](20) NULL,
	[earning] [varchar](30) NULL,
	[concernment] [varchar](30) NULL,
	[mobile] [varchar](11) NULL,
	[tel] [varchar](15) NULL,
	[QQ] [varchar](11) NULL,
	[Culture] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[province] [varchar](20) NULL,
	[city] [varchar](20) NULL,
	[address] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inform]    Script Date: 2020/4/21 1:02:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inform](
	[id] [int] NULL,
	[title] [varchar](50) NULL,
	[client] [varchar](20) NULL,
	[types] [varchar](30) NULL,
	[mode] [varchar](30) NULL,
	[informTime] [datetime] NULL,
	[informObject] [varchar](30) NULL,
	[informContent] [text] NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manager]    Script Date: 2020/4/21 1:02:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NULL,
	[pwd] [varchar](32) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nation]    Script Date: 2020/4/21 1:02:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nation](
	[id] [int] NULL,
	[nation] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[province]    Script Date: 2020/4/21 1:02:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[province](
	[id] [int] NULL,
	[province] [varchar](20) NULL,
	[provinceid] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[services]    Script Date: 2020/4/21 1:02:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[services](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
	[userName] [varchar](100) NULL,
	[serviceType] [varchar](30) NULL,
	[serviceMode] [varchar](30) NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[serviceContent] [text] NULL,
	[feedback] [varchar](30) NULL,
	[remark] [text] NULL,
	[result] [varchar](10) NULL,
	[addtime] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[city] ([id], [city], [citycode]) VALUES (1, N'哈尔滨', N'0501')
INSERT [dbo].[city] ([id], [city], [citycode]) VALUES (2, N'双鸭山', N'0502')
INSERT [dbo].[city] ([id], [city], [citycode]) VALUES (3, N'五常', N'0503')
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([id], [userName], [nation], [birthday], [gender], [IDcard], [hobby], [marriage], [source], [levels], [earning], [concernment], [mobile], [tel], [QQ], [Culture], [Email], [province], [city], [address], [addtime]) VALUES (3, N'田老师1', N'汉族', CAST(N'2020-04-19T19:58:59.000' AS DateTime), N'男', N'hdh', N'rthrth', N'已婚', N'微信', N'普通', N'0—10w', N'普通', N'ert34t', N'tnhgn', N'rth', N'大专', N'rt', N'天津', N'', N'', CAST(N'2020-04-19T11:59:26.000' AS DateTime))
INSERT [dbo].[customer] ([id], [userName], [nation], [birthday], [gender], [IDcard], [hobby], [marriage], [source], [levels], [earning], [concernment], [mobile], [tel], [QQ], [Culture], [Email], [province], [city], [address], [addtime]) VALUES (2, N'姚女士', N'汉族', CAST(N'2020-04-16T19:56:35.000' AS DateTime), N'女', N'114167', N'田', N'已婚', N'微博', N'VIP2', N'20—30w', N'重要', N'3662', N'868758', N'456456', N'博士后', N'rtythyth', N'上海', N'', N'天水', CAST(N'2020-04-19T11:57:36.000' AS DateTime))
INSERT [dbo].[customer] ([id], [userName], [nation], [birthday], [gender], [IDcard], [hobby], [marriage], [source], [levels], [earning], [concernment], [mobile], [tel], [QQ], [Culture], [Email], [province], [city], [address], [addtime]) VALUES (4, N'rtgyrth', N'回族', CAST(N'2020-04-19T20:02:24.000' AS DateTime), N'男', N'rthrthrthrthrt', N'', N'未婚', N'QQ', N'普通', N'0—10w', N'一般', N'', N'hrthrthrth', N'', N'小学', N'', N'北京', N'', N'', CAST(N'2020-04-19T12:02:28.000' AS DateTime))
INSERT [dbo].[customer] ([id], [userName], [nation], [birthday], [gender], [IDcard], [hobby], [marriage], [source], [levels], [earning], [concernment], [mobile], [tel], [QQ], [Culture], [Email], [province], [city], [address], [addtime]) VALUES (5, N'尔特如果', N'汉族', CAST(N'2020-04-19T20:05:27.000' AS DateTime), N'男', N'fgh sfhsf', N'sgfhfgh', N'未婚', N'QQ', N'普通', N'0—10w', N'一般', N'dfgfsgh', N'', N'', N'小学', N'', N'北京', N'', N'', CAST(N'2020-04-19T12:05:38.000' AS DateTime))
INSERT [dbo].[customer] ([id], [userName], [nation], [birthday], [gender], [IDcard], [hobby], [marriage], [source], [levels], [earning], [concernment], [mobile], [tel], [QQ], [Culture], [Email], [province], [city], [address], [addtime]) VALUES (6, N'675676i67ujtyhtdghde', N'汉族', CAST(N'2020-04-19T20:05:45.000' AS DateTime), N'男', N'', N'dsfgsdfgh', N'未婚', N'QQ', N'普通', N'0—10w', N'一般', N'sgfhsgfh', N'', N'', N'小学', N'', N'北京', N'', N'', CAST(N'2020-04-19T12:05:50.000' AS DateTime))
INSERT [dbo].[customer] ([id], [userName], [nation], [birthday], [gender], [IDcard], [hobby], [marriage], [source], [levels], [earning], [concernment], [mobile], [tel], [QQ], [Culture], [Email], [province], [city], [address], [addtime]) VALUES (7, N'是人工', N'汉族', CAST(N'2020-04-19T20:10:32.000' AS DateTime), N'男', N'', N'rgrtg', N'未婚', N'QQ', N'普通', N'0—10w', N'一般', N'dgdhdfh', N'', N'', N'小学', N'', N'北京', N'', N'', CAST(N'2020-04-19T12:10:39.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[customer] OFF
INSERT [dbo].[inform] ([id], [title], [client], [types], [mode], [informTime], [informObject], [informContent], [addtime]) VALUES (NULL, N'sfgfgr', N'trhtrh', N'fghgfh', N'ertr', CAST(N'2020-04-20T23:29:39.000' AS DateTime), N'fghgfhgfh', N'fgshsgfhgf', CAST(N'2020-04-20T15:29:55.000' AS DateTime))
INSERT [dbo].[inform] ([id], [title], [client], [types], [mode], [informTime], [informObject], [informContent], [addtime]) VALUES (NULL, N'hghrth', N'rthrt', N'rtgrgt', N'', CAST(N'2020-04-20T23:31:15.000' AS DateTime), N'', N'rtgrtgtrg', CAST(N'2020-04-20T15:31:48.000' AS DateTime))
INSERT [dbo].[nation] ([id], [nation]) VALUES (1, N'汉族')
INSERT [dbo].[nation] ([id], [nation]) VALUES (2, N'蒙古族')
INSERT [dbo].[nation] ([id], [nation]) VALUES (3, N'回族')
INSERT [dbo].[province] ([id], [province], [provinceid]) VALUES (1, N'北京', N'01')
INSERT [dbo].[province] ([id], [province], [provinceid]) VALUES (2, N'天津', N'02')
INSERT [dbo].[province] ([id], [province], [provinceid]) VALUES (3, N'上海', N'03')
INSERT [dbo].[province] ([id], [province], [provinceid]) VALUES (4, N'重庆', N'04')
INSERT [dbo].[province] ([id], [province], [provinceid]) VALUES (5, N'黑龙江', N'05')
SET IDENTITY_INSERT [dbo].[services] ON 

INSERT [dbo].[services] ([id], [title], [userName], [serviceType], [serviceMode], [startTime], [endTime], [serviceContent], [feedback], [remark], [result], [addtime]) VALUES (2, N'发对光反射', N'姚女士,田老师1,', N'豆腐干第三个', N'说过话方式 ', CAST(N'2020-04-19T20:28:18.000' AS DateTime), CAST(N'2020-04-19T20:28:18.000' AS DateTime), N'发给', N'三个地方', N'使得法国', N'三个地方', CAST(N'2020-04-19T12:30:00.547' AS DateTime))
INSERT [dbo].[services] ([id], [title], [userName], [serviceType], [serviceMode], [startTime], [endTime], [serviceContent], [feedback], [remark], [result], [addtime]) VALUES (3, N'如果双方', N'尔特如果,675676i67ujtyhtdghde,', N'核辐射放点货', N' 的挂号费', CAST(N'2020-04-02T20:31:49.000' AS DateTime), CAST(N'2020-04-13T20:31:49.000' AS DateTime), N'的地方', N'三个', N'是通过如图', N'双方各大哥', CAST(N'2020-04-19T12:32:11.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[services] OFF
USE [master]
GO
ALTER DATABASE [CRM_database] SET  READ_WRITE 
GO
