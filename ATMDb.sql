USE [master]
GO
/****** Object:  Database [ATMDb]    Script Date: 9/3/2023 9:00:05 PM ******/
CREATE DATABASE [ATMDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ATMDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ATMDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ATMDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ATMDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ATMDb] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ATMDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ATMDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ATMDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ATMDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ATMDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ATMDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [ATMDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ATMDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ATMDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ATMDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ATMDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ATMDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ATMDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ATMDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ATMDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ATMDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ATMDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ATMDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ATMDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ATMDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ATMDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ATMDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ATMDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ATMDb] SET RECOVERY FULL 
GO
ALTER DATABASE [ATMDb] SET  MULTI_USER 
GO
ALTER DATABASE [ATMDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ATMDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ATMDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ATMDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ATMDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ATMDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ATMDb', N'ON'
GO
ALTER DATABASE [ATMDb] SET QUERY_STORE = ON
GO
ALTER DATABASE [ATMDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ATMDb]
GO
/****** Object:  Table [dbo].[AccTbl]    Script Date: 9/3/2023 9:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccTbl](
	[AccNum] [varchar](50) NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[FaName] [varchar](20) NOT NULL,
	[Dob] [varchar](50) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Education] [varchar](30) NOT NULL,
	[Occupation] [varchar](50) NOT NULL,
	[Balance] [int] NOT NULL,
	[pin] [varchar](50) NULL,
 CONSTRAINT [PK_AccTbl] PRIMARY KEY CLUSTERED 
(
	[AccNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionTbl]    Script Date: 9/3/2023 9:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionTbl](
	[Tid] [int] IDENTITY(1,1) NOT NULL,
	[AccNum] [varchar](50) NOT NULL,
	[Type] [varchar](20) NOT NULL,
	[Amount] [int] NOT NULL,
	[TDate] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TransactionTbl] PRIMARY KEY CLUSTERED 
(
	[Tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ATMDb] SET  READ_WRITE 
GO
