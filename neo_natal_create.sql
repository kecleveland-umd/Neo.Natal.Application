USE [master]
GO
/****** Object:  Database [NeoNatal]    Script Date: 6/6/2016 2:00:32 PM ******/
CREATE DATABASE [NeoNatal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NeoNatal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\NeoNatal.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NeoNatal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\NeoNatal_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NeoNatal] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NeoNatal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NeoNatal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NeoNatal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NeoNatal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NeoNatal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NeoNatal] SET ARITHABORT OFF 
GO
ALTER DATABASE [NeoNatal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NeoNatal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NeoNatal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NeoNatal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NeoNatal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NeoNatal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NeoNatal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NeoNatal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NeoNatal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NeoNatal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NeoNatal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NeoNatal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NeoNatal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NeoNatal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NeoNatal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NeoNatal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NeoNatal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NeoNatal] SET RECOVERY FULL 
GO
ALTER DATABASE [NeoNatal] SET  MULTI_USER 
GO
ALTER DATABASE [NeoNatal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NeoNatal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NeoNatal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NeoNatal] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [NeoNatal] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'NeoNatal', N'ON'
GO
USE [NeoNatal]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 6/6/2016 2:00:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Client](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[healthworker_id] [int] NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[ethnicity] [varchar](50) NOT NULL,
	[street_number] [int] NOT NULL,
	[street_name] [varchar](50) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[zip_code] [varchar](50) NOT NULL,
	[county] [varchar](50) NOT NULL,
	[ward] [int] NOT NULL,
	[phone] [bigint] NULL,
	[email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HealthWorker]    Script Date: 6/6/2016 2:00:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HealthWorker](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Survey]    Script Date: 6/6/2016 2:00:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Survey](
	[risk_score] [int] NULL,
	[client_id] [int] NOT NULL,
	[Q1_address] [int] NULL,
	[Q2_zip_code] [int] NULL,
	[Q3_race] [int] NULL,
	[Q4_ward] [int] NULL,
	[Q5_first_child] [int] NULL,
	[Q6_prem_birth] [int] NULL,
	[Q7_obgyn] [int] NULL,
	[Q8_age] [int] NULL,
	[Q9_stress] [int] NULL,
	[Q10_smoker] [int] NULL,
	[Q11_fam_smoker] [int] NULL,
	[Q12_alcohol] [int] NULL,
	[Q13_fam_alcohol] [int] NULL,
	[Q14_fam_drug] [int] NULL,
	[Q15_drug] [int] NULL,
	[Q16_safe_nbhood] [int] NULL,
	[Q17_safe_home] [int] NULL,
	[Q18_illness] [int] NULL,
	[Q19_transport] [int] NULL,
	[Q20_internet] [int] NULL,
	[Q21_mob_internet] [int] NULL,
	[Q22_diet] [int] NULL,
	[Q23_gov_assist] [int] NULL,
	[Q24_rel_income] [int] NULL,
	[Q25_education] [int] NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_HealthWorker] FOREIGN KEY([healthworker_id])
REFERENCES [dbo].[HealthWorker] ([id])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_HealthWorker]
GO
ALTER TABLE [dbo].[Survey]  WITH CHECK ADD  CONSTRAINT [FK_Survey_Client] FOREIGN KEY([client_id])
REFERENCES [dbo].[Client] ([id])
GO
ALTER TABLE [dbo].[Survey] CHECK CONSTRAINT [FK_Survey_Client]
GO
USE [master]
GO
ALTER DATABASE [NeoNatal] SET  READ_WRITE 
GO
