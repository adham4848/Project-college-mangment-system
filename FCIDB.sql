USE [master]
GO
/****** Object:  Database [FCI DB]    Script Date: 6/3/2022 2:02:20 PM ******/
CREATE DATABASE [FCI DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FCI DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.YASSER_FCI\MSSQL\DATA\FCI DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FCI DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.YASSER_FCI\MSSQL\DATA\FCI DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FCI DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FCI DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FCI DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FCI DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FCI DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FCI DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FCI DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FCI DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FCI DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FCI DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FCI DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FCI DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FCI DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FCI DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FCI DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FCI DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FCI DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FCI DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FCI DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FCI DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FCI DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FCI DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FCI DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FCI DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FCI DB] SET RECOVERY FULL 
GO
ALTER DATABASE [FCI DB] SET  MULTI_USER 
GO
ALTER DATABASE [FCI DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FCI DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FCI DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FCI DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FCI DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FCI DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FCI DB', N'ON'
GO
ALTER DATABASE [FCI DB] SET QUERY_STORE = OFF
GO
USE [FCI DB]
GO
/****** Object:  Table [dbo].[Student 1]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student 1](
	[ID] [int] NOT NULL,
	[F_name] [nvarchar](255) NULL,
	[L_name] [nvarchar](255) NULL,
	[SSN] [int] NULL,
	[Address] [nvarchar](255) NULL,
	[Section] [int] NULL,
	[Department] [nvarchar](255) NULL,
	[GPA] [nvarchar](255) NULL,
 CONSTRAINT [Student 1$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[top_10_level_1]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[top_10_level_1]
as
SELECT  top(10)   F_name, L_name, GPA, Department
FROM            dbo.[Student 1] order  by (GPA) Desc
GO
/****** Object:  View [dbo].[sortl1]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[sortl1]
as
SELECT top(100)   F_name, L_name, GPA, Department
from    dbo.[Student 1] order  by (F_name) ;
GO
/****** Object:  Table [dbo].[Student 2]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student 2](
	[ID] [int] NOT NULL,
	[F_name] [nvarchar](255) NULL,
	[L_name] [nvarchar](255) NULL,
	[SSN] [int] NULL,
	[Address] [nvarchar](255) NULL,
	[Section] [int] NULL,
	[Department] [nvarchar](255) NULL,
	[GPA] [nvarchar](255) NULL,
 CONSTRAINT [Student 2$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[top10L2]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[top10L2]
as
SELECT top(10)   F_name, L_name, GPA, Department
from    dbo.[Student 2] order  by (GPA) DESC;
GO
/****** Object:  Table [dbo].[Student 3]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student 3](
	[ID] [int] NOT NULL,
	[F_name] [nvarchar](255) NULL,
	[L_name] [nvarchar](255) NULL,
	[SSN] [int] NULL,
	[Address] [nvarchar](255) NULL,
	[Section] [int] NULL,
	[Department] [nvarchar](255) NULL,
	[GPA] [nvarchar](255) NULL,
 CONSTRAINT [Student 3$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[top10L3]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[top10L3]
as
SELECT top(10)   F_name, L_name, GPA, Department
from    dbo.[Student 3] order  by (GPA) DESC;
GO
/****** Object:  Table [dbo].[Student 4]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student 4](
	[ID] [int] NOT NULL,
	[F_name] [nvarchar](255) NULL,
	[L_name] [nvarchar](255) NULL,
	[SSN] [int] NULL,
	[Address] [nvarchar](255) NULL,
	[Section] [int] NULL,
	[Department] [nvarchar](255) NULL,
	[GPA] [nvarchar](255) NULL,
 CONSTRAINT [Student 4$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[top10L4]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[top10L4]
as
SELECT top(10)   F_name, L_name, GPA, Department
from    dbo.[Student 4] order  by (GPA) DESC;
GO
/****** Object:  View [dbo].[sortL4]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[sortL4]
as
SELECT top(100)   F_name, L_name, GPA, Department
from    dbo.[Student 4] order  by (F_name) ASC;
GO
/****** Object:  View [dbo].[sortL3]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[sortL3]
as
SELECT top(100)   F_name, L_name, GPA, Department
from    dbo.[Student 3] order  by (F_name) ASC;
GO
/****** Object:  View [dbo].[sortL2]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[sortL2]
as
SELECT top(100)   F_name, L_name, GPA, Department
from    dbo.[Student 2] order  by (F_name) ASC;
GO
/****** Object:  Table [dbo].[Course]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Code] [int] NOT NULL,
	[Name_Course] [nvarchar](255) NULL,
	[Level] [int] NULL,
	[NumHours] [int] NULL,
	[Table_ID] [int] NULL,
	[Doctor_ID] [int] NULL,
	[Teaching Assistant_ID] [int] NULL,
	[degree] [int] NULL,
 CONSTRAINT [Course$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[sortc]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[sortc]
as
SELECT  top(200)  Code, Name_Course, NumHours, [Level]
FROM dbo.Course order by (NumHours) DESC
GO
/****** Object:  Table [dbo].[Department]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[ID] [int] NOT NULL,
	[NamDepartment] [nvarchar](255) NULL,
 CONSTRAINT [Department$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[sortd]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[sortd]
as
SELECT   top(10)     ID, NamDepartment
FROM            dbo.Department order by (NamDepartment)
GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors](
	[SSN] [int] NOT NULL,
	[F_name] [nvarchar](255) NULL,
	[L_name] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Salary] [money] NULL,
	[Dep_ID] [int] NULL,
	[Table_ID] [int] NULL,
 CONSTRAINT [Doctors$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[sortdoc]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[sortdoc]
as
SELECT    top(200)    F_name, L_name, Salary
FROM            dbo.Doctors  order by (Salary) DESC
GO
/****** Object:  Table [dbo].[Teaching Assistant]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teaching Assistant](
	[SSN2] [int] NOT NULL,
	[F_name] [nvarchar](255) NULL,
	[L_name] [nvarchar](255) NULL,
	[Salary] [money] NULL,
	[Address] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[doc_ID] [int] NULL,
	[Dep_ID] [int] NULL,
	[Table_ID] [int] NULL,
 CONSTRAINT [Teaching Assistant$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[SSN2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[sortass]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[sortass]
as
SELECT    top(200)    F_name, L_name, Salary
FROM            dbo.[Teaching Assistant]  order by (Salary) DESC
GO
/****** Object:  Table [dbo].[Doctor_Phone]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor_Phone](
	[ID] [int] NOT NULL,
	[Doctor_Phone] [nvarchar](max) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [Doctor_Phone$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stu_ l 4_phone]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stu_ l 4_phone](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[student phone] [nvarchar](255) NULL,
 CONSTRAINT [stu_ l 4_phone$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stu_l1_phone]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stu_l1_phone](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[student phone] [nvarchar](255) NULL,
 CONSTRAINT [stu_l1_phone$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stu_l2_phone]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stu_l2_phone](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[student phone] [nvarchar](255) NULL,
 CONSTRAINT [stu_l2_phone$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stu_l3_phone]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stu_l3_phone](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[student phone] [nvarchar](255) NULL,
 CONSTRAINT [stu_l3_phone$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student of FCI]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student of FCI](
	[ID_1] [int] NOT NULL,
	[F_name] [nvarchar](255) NULL,
	[L_name] [nvarchar](255) NULL,
	[SSN] [int] NULL,
	[Address] [nvarchar](255) NULL,
	[Section] [int] NULL,
	[Department] [nvarchar](255) NULL,
	[Level] [int] NULL,
	[GPA] [nvarchar](255) NULL,
	[DOC_ID] [int] NULL,
	[Dep_ID] [int] NULL,
	[Teach_ID] [int] NULL,
	[course_ID] [int] NULL,
 CONSTRAINT [student of FCI$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID_1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teach_Phone]    Script Date: 6/3/2022 2:02:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teach_Phone](
	[ID] [int] NOT NULL,
	[Teach_Phone] [nvarchar](255) NULL,
 CONSTRAINT [Teach_Phone$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (101, N'IT', 1, 3, 10, 100, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (102, N'Math', 1, 3, 10, 600, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (103, N'physics', 1, 3, 10, 500, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (104, N'Electronics', 1, 3, 10, 100, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (105, N'English', 1, 2, 10, 600, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (106, N'Math 0', 1, 0, 10, 500, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (107, N'computing history', 1, 2, 10, 500, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (108, N'Hand drawing', 1, 2, 10, 500, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (201, N'OOP', 2, 3, 20, 100, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (202, N'Information System Management', 2, 3, 20, 200, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (203, N'discrete mathematics', 2, 3, 20, 500, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (204, N'Project Management', 2, 2, 20, 200, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (205, N'Data Communication', 2, 3, 20, 700, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (206, N'Technical Writing', 2, 2, 20, 500, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (301, N'Algorithms', 3, 3, 30, 300, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (302, N'Software Engineering', 3, 3, 30, 400, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (303, N'Visual Programming', 3, 2, 30, 300, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (304, N'Computer graghics', 3, 3, 30, 300, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (305, N'Computer Network', 3, 3, 30, 400, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (306, N'Image Processing', 3, 2, 30, 100, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (307, N'Advanced Project management', 3, 3, 30, 400, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (401, N'Building Compilers', 4, 3, 40, 100, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (402, N'computer vision', 4, 2, 40, 200, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (403, N'Introduction to computer security', 4, 2, 40, 400, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (404, N'Recognize models', 4, 3, 40, 300, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (405, N'Network programming', 4, 3, 40, 200, 1000, NULL)
INSERT [dbo].[Course] ([Code], [Name_Course], [Level], [NumHours], [Table_ID], [Doctor_ID], [Teaching Assistant_ID], [degree]) VALUES (406, N'Graduation Project', 4, 3, 40, 200, 1000, NULL)
GO
INSERT [dbo].[Department] ([ID], [NamDepartment]) VALUES (1, N'General')
INSERT [dbo].[Department] ([ID], [NamDepartment]) VALUES (2, N'Computer Science')
INSERT [dbo].[Department] ([ID], [NamDepartment]) VALUES (3, N'Information System')
GO
INSERT [dbo].[Doctor_Phone] ([ID], [Doctor_Phone]) VALUES (100, N'01047638378')
INSERT [dbo].[Doctor_Phone] ([ID], [Doctor_Phone]) VALUES (200, N'01173763237')
INSERT [dbo].[Doctor_Phone] ([ID], [Doctor_Phone]) VALUES (300, N'01038734646')
INSERT [dbo].[Doctor_Phone] ([ID], [Doctor_Phone]) VALUES (400, N'01247466478')
INSERT [dbo].[Doctor_Phone] ([ID], [Doctor_Phone]) VALUES (500, N'01373738922')
INSERT [dbo].[Doctor_Phone] ([ID], [Doctor_Phone]) VALUES (600, N'01038474838')
INSERT [dbo].[Doctor_Phone] ([ID], [Doctor_Phone]) VALUES (700, N'01137664722')
GO
INSERT [dbo].[Doctors] ([SSN], [F_name], [L_name], [Phone], [Address], [Salary], [Dep_ID], [Table_ID]) VALUES (100, N'Mohamed', N'Ramadan', N'01001429428', N'Luxor', 20000.0000, 1, 70)
INSERT [dbo].[Doctors] ([SSN], [F_name], [L_name], [Phone], [Address], [Salary], [Dep_ID], [Table_ID]) VALUES (200, N'Amany', N'Salamaa', N'01112282018', N'Mansoura', 1000000.0000, 3, 70)
INSERT [dbo].[Doctors] ([SSN], [F_name], [L_name], [Phone], [Address], [Salary], [Dep_ID], [Table_ID]) VALUES (300, N'Mohamed', N'Atta', N'01088376454', N'Luxor', 15000.0000, 2, 70)
INSERT [dbo].[Doctors] ([SSN], [F_name], [L_name], [Phone], [Address], [Salary], [Dep_ID], [Table_ID]) VALUES (400, N'Mohamed', N'Abdel Hamid', N'01233658659', N'Luxor', 15000.0000, 2, 70)
INSERT [dbo].[Doctors] ([SSN], [F_name], [L_name], [Phone], [Address], [Salary], [Dep_ID], [Table_ID]) VALUES (500, N'Doaa', N'Mohamed', N'01123668777', N'Luxor', 8000.0000, 1, 70)
INSERT [dbo].[Doctors] ([SSN], [F_name], [L_name], [Phone], [Address], [Salary], [Dep_ID], [Table_ID]) VALUES (600, N'Elsayed', N'Abo_Eldahb', N'01118809978', N'Sohag', 30000.0000, 1, 70)
INSERT [dbo].[Doctors] ([SSN], [F_name], [L_name], [Phone], [Address], [Salary], [Dep_ID], [Table_ID]) VALUES (700, N'Hosny', N'Abbas', N'01176575543', N'Qena', 11000.0000, 3, 70)
GO
SET IDENTITY_INSERT [dbo].[stu_ l 4_phone] ON 

INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (1, N'01157173830')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (2, N'01032435007')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (3, N'01134578809')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (4, N'01113750590')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (5, N'01255659967')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (6, N'01222340609')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (7, N'01267670606')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (8, N'01020350507')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (9, N'01155439870')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (10, N'01004067800')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (11, N'01061617899')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (12, N'01171710606')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (13, N'01177659007')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (14, N'01534544031')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (15, N'01212020056')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (16, N'01255040696')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (17, N'01555365622')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (18, N'01254304050')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (19, N'01066030336')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (20, N'01054000345')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (21, N'01234666708')
INSERT [dbo].[stu_ l 4_phone] ([ID], [student phone]) VALUES (22, N'01012223434')
SET IDENTITY_INSERT [dbo].[stu_ l 4_phone] OFF
GO
SET IDENTITY_INSERT [dbo].[stu_l1_phone] ON 

INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (1, N'01098563325')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (2, N'01076543678')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (3, N'01187722547')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (4, N'01288653565')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (5, N'01276655645')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (6, N'01098765222')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (7, N'01198977686')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (8, N'01286765430')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (9, N'01186886532')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (10, N'01192887643')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (11, N'01287676767')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (12, N'01288765332')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (13, N'01087600765')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (14, N'01276750078')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (15, N'01098760404')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (16, N'01080675656')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (17, N'01287676760')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (18, N'01087609070')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (19, N'01209890233')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (20, N'01208308222')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (21, N'01142420085')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (22, N'01009876668')
INSERT [dbo].[stu_l1_phone] ([ID], [student phone]) VALUES (23, N'01112115508')
SET IDENTITY_INSERT [dbo].[stu_l1_phone] OFF
GO
SET IDENTITY_INSERT [dbo].[stu_l2_phone] ON 

INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (1, N'01119690838')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (2, N'01012764812')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (3, N'01101431751')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (4, N'01093063153')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (5, N'01119815832')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (6, N'01010645335')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (7, N'01276687658')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (8, N'01220350618')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (9, N'01123221464')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (10, N'01061610075')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (11, N'01069029056')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (12, N'01110766755')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (13, N'01129878079')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (14, N'01087554070')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (15, N'01287870099')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (16, N'01254456666')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (17, N'01182783322')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (18, N'01081224461')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (19, N'01013564456')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (20, N'01266549877')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (21, N'01209976078')
INSERT [dbo].[stu_l2_phone] ([ID], [student phone]) VALUES (22, N'01239993800')
SET IDENTITY_INSERT [dbo].[stu_l2_phone] OFF
GO
SET IDENTITY_INSERT [dbo].[stu_l3_phone] ON 

INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (1, N'01023163277')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (2, N'01094929531')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (3, N'01004542201')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (4, N'01126657007')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (5, N'01209889008')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (6, N'01227665070')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (7, N'01254355530')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (8, N'01032355666')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (9, N'01099004323')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (10, N'01222254554')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (11, N'01212223545')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (12, N'01023223559')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (13, N'01190987552')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (14, N'01189982232')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (15, N'01233434488')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (16, N'01000456566')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (17, N'01023005600')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (18, N'01198444210')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (19, N'01002385454')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (20, N'01117885444')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (21, N'01010182200')
INSERT [dbo].[stu_l3_phone] ([ID], [student phone]) VALUES (22, N'01221223441')
SET IDENTITY_INSERT [dbo].[stu_l3_phone] OFF
GO
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (1, N'Ahmed', N'Yahya', 303087766, N'Luxor', 1, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (2, N'Ahmed', N'Mohamed', 303087543, N'Cairo', 1, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (3, N'Esraa', N'Salah', 303076544, N'Mansoura', 1, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (4, N'Eman', N'Alaa', 303028738, N'Qena', 1, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (5, N'Ahmed', N'Nageh', 303088654, N'Alex', 1, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (6, N'Ziad', N'Ahmed', 302065655, N'Aswan', 2, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (7, N'Sally', N'Mohamed', 302043534, N'Giza', 2, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (8, N'Salma', N'Ali', 301078866, N'Alex', 2, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (9, N'Khloud', N'Khaled', 308987655, N'Aswan', 2, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (10, N'Shahd', N'Alaa Eldin', 302087677, N'Hurghada', 2, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (11, N'Saber', N'Attieh', 303087665, N'Luxor', 3, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (12, N'Saleh', N'Mohamed', 302087675, N'Qena', 3, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (13, N'Mohamed', N'Ahmed', 302087565, N'Cairo', 3, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (14, N'Mohamed', N'El_Said', 302565676, N'Sinai', 3, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (15, N'Mohamed', N'Khaled', 302090987, N'Qalyubia', 4, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (16, N'Mohamed', N'Mostafa', 303065400, N'Mansoura', 4, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (17, N'Mahmoud', N'Alaa', 302098797, N'Qena', 4, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (18, N'Mostafa', N'Ahamed', 308978767, N'Cairo', 4, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (19, N'Maha', N'Mohamed', 303076656, N'Luxor', 5, N'General', N'0')
INSERT [dbo].[Student 1] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (20, N'Nada', N'Mohamed', 302008876, N'Giza', 5, N'General', N'0')
GO
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (1, N'Adham', N'Abdo', 301019898, N'Ash Sharqiy', 1, N'General', N'3.3')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (2, N'Arwa', N'Ashraf', 302903948, N'Aswan', 1, N'General', N'3.42')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (3, N'Ahmed', N'Adel', 302086675, N'Luxor', 1, N'General', N'3.65')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (4, N'Ahmed', N'Mahmoud', 301068656, N'Luxor', 1, N'General', N'3.57')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (5, N'Amina', N'Yonis', 302098877, N'Aswan', 1, N'General', N'3.58')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (6, N'Bahaa', N'Zenhom', 302609870, N'Ash Sharqiy', 2, N'General', N'2.8')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (7, N'Josef', N'Adel', 301876788, N'Luxor', 2, N'General', N'3.6')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (8, N'Jena', N'Hana', 308378388, N'Aswan', 2, N'General', N'3.56')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (9, N'Sara', N'Abdelrahim', 303098766, N'Qena', 2, N'General', N'3.46')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (10, N'Soha', N'Gamal', 303036288, N'Qena', 2, N'General', N'3.57')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (11, N'Abdelrahim', N'Mohamed', 303087766, N'Aswan', 3, N'General', N'3.7')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (12, N'Omar', N'Yasser', 303984949, N'Cairo', 3, N'General', N'2.4')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (13, N'Afaf', N'Rady', 303076888, N'Qena', 3, N'General', N'2.3')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (14, N'Ali', N'Mohamed', 303097766, N'Cairo', 3, N'General', N'2.6')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (15, N'Ali', N'Nabil', 304098878, N'Ash Sharqiy', 3, N'General', N'2.5')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (16, N'Mohamed', N'Yasser', 303087878, N'Giza', 4, N'General', N'2.6')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (17, N'Mohamed', N'Ahmed', 303087780, N'Alex', 4, N'General', N'3.1')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (18, N'Mohamed', N'Osama', 302088722, N'Ash Sharqiy', 4, N'General', N'2.6')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (19, N'Mona', N'Assem', 303980990, N'Aswan', 4, N'General', N'3.3')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (20, N'Mostafa', N'Gamal', 303989898, N'Giza', 4, N'General', N'2.4')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (21, N'Monda', N'Atef', 302087656, N'Luxor', 4, N'General', N'2.3')
INSERT [dbo].[Student 2] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (22, N'Yousef', N'Gamal', 303988388, N'Cairo', 4, N'General', N'2.8')
GO
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (1, N'Esraa', N'Said', 300390900, N'Luxor', 1, N'Cs', N'3.3')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (2, N'Ahmed', N'Mahmoud', 300877666, N'Qena', 1, N'IT', N'3.62')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (3, N'Nada', N'Assem', 303098988, N'Qena', 3, N'CS', N'3.1')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (4, N'Ali', N'Hussin', 301089889, N'Cairo', 3, N'IT', N'3.53')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (5, N'Sara', N'Mohamed', 300877622, N'Luxor', 2, N'CS', N'3.5')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (6, N'Ahmed', N'Maher', 303028278, N'Luxor', 1, N'CS', N'3.2')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (7, N'Rawia', N'Mahmoud', 303056645, N'Luxor', 1, N'IT', N'3.8')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (8, N'Rokaya', N'Mahmoud', 303065765, N'Luxor', 1, N'Cs', N'3.4')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (9, N'Asmaa', N'Mohamed', 300383778, N'Luxor', 1, N'CS', N'3')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (10, N'Yahya', N'Abdel_Azim', 303065677, N'Luxor', 4, N'IT', N'2.4')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (11, N'Esraa', N'Ali', 302065654, N'Aswan', 1, N'IT', N'2.7')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (12, N'Mona', N'Esmail', 302032344, N'Luxor', 4, N'IT', N'3.1')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (13, N'Sara', N'Ahmed', 302056446, N'Qena', 2, N'CS', N'2.92')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (14, N'Amer', N'Ahmed', 309890898, N'Qena', 3, N'IT', N'2.6')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (15, N'Nayra', N'Mohamed', 300243534, N'Qena', 4, N'CS', N'3.2')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (16, N'Mariam', N'Abo Hurayrah', 301020456, N'Luxor', 4, N'IT', N'3.4')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (17, N'Heidi', N'Hindi', 301034545, N'Luxor', 4, N'IT', N'3.1')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (18, N'Ahmed', N'Magdy', 303098809, N'Mansoura', 1, N'IT', N'3.5')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (19, N'Soha', N'serage', 301020465, N'Sohage', 2, N'IT', N'3.1')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (20, N'Gehad', N'Abdelrahman', 301065056, N'Luxor', 2, N'CS', N'2.6')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (21, N'Mohamed', N'Ayman', 303087087, N'Hurghada', 4, N'CS', N'2.62')
INSERT [dbo].[Student 3] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (22, N'Gehad', N'Mohamed', 302054354, N'Luxor', 2, N'IT', N'2.5')
GO
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (1, N'Hany', N'Abdo', 300246464, N'Sohag', 2, N'CS', N'3.3')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (2, N'Hazem', N'Taha', 300143546, N'Qena', 1, N'CS', N'2.8')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (3, N'Mohmed', N'Ahmed', 300343487, N'Luxor', 2, N'CS', N'2.25')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (4, N'Asmaa', N'Assam', 300245455, N'Sohage', 1, N'CS', N'3.14')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (5, N'Eman', N'Mohamed', 300254656, N'Luxor', 1, N'CS', N'3.14')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (6, N'Rania', N'Ahmed', 304554567, N'Qena', 1, N'IT', N'3.1')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (7, N'Abdelkarim', N'Mostafa', 304056544, N'Luxor', 0, N'IT', N'3.06')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (8, N'Mohamed', N'Awad', 302406507, N'Cairo', 0, N'CS', N'3.34')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (9, N'Mahmoud', N'Ahmed', 302040644, N'Qiza', 0, N'CS', N'3.49')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (10, N'Nora', N'Khaled', 302025665, N'Sohag', 0, N'CS', N'3.14')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (11, N'Yasmin', N'Ahmed', 300545456, N'Luxor', 0, N'IT', N'3.31')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (12, N'Ebrahim', N'Abdelftah', 303065706, N'Mansoura', 0, N'IT', N'2.64')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (13, N'Khaled', N'Abdelwahab', 306056566, N'Qena', 0, N'IT', N'2.77')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (14, N'Mahmoud', N'Abdelrahim', 303056656, N'Luxor', 0, N'IT', N'2.79')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (15, N'Nada', N'Ahmed', 300456667, N'Hurghada', 0, N'IT', N'3.08')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (16, N'Kamal', N'Mohamed', 303065656, N'Cairo', 0, N'IT', N'2.52')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (17, N'Ahmed', N'Mohamed', 300245640, N'Qena', 1, N'IT', N'3.3')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (18, N'Esraa', N'Mohamed', 303065560, N'Qena', 1, N'IT', N'2.8')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (19, N'Mostafa', N'Ahmed', 304065665, N'Luxor', 2, N'IT', N'3.3')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (20, N'Eslam', N'Gamal', 300245679, N'Aswan', 1, N'CS', N'3.1')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (21, N'Mina', N'Naser', 300355570, N'Sohag', 2, N'CS', N'2.9')
INSERT [dbo].[Student 4] ([ID], [F_name], [L_name], [SSN], [Address], [Section], [Department], [GPA]) VALUES (22, N'Moaz', N'waheed', 300655456, N'Luxor', 2, N'CS', N'2.6')
GO
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (1, N'Ahmed', N'Yahya', 303087766, N'Luxor', 1, N'General', 1, N'0', 100, 1, 4000, 101)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (2, N'Ahmed', N'Mohamed', 303087543, N'Cairo', 1, N'General', 1, N'0', 100, 1, 5000, 101)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (3, N'Esraa', N'Salah', 303076544, N'Mansoura', 1, N'General', 1, N'0', 100, 1, 7000, 101)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (4, N'Eman', N'Alaa', 303028738, N'Qena', 1, N'General', 1, N'0', 100, 1, 3000, 102)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (5, N'Arwa', N'Ashraf', 302903948, N'Aswan', 1, N'General', 2, N'3.42', 100, 1, 5000, 102)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (6, N'Yasser', N'Ayman', 302054646, N'Ash Sharqiy', 4, N'General', 2, N'3', 200, 1, 3000, 201)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (7, N'Bahaa', N'Zenhom', 302609870, N'Ash Sharqiy', 2, N'General', 2, N'2.8', 200, 1, 1000, 202)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (8, N'Adham', N'Abdo', 301019898, N'Ash Sharqiy', 1, N'General', 2, N'3.3', 200, 1, 3000, 202)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (9, N'Sara', N'Abdelrahim', 303098766, N'Qena', 2, N'General', 3, N'3.46', 200, 1, 6000, 203)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (10, N'Soha', N'Gamal', 303036288, N'Qena', 2, N'General', 2, N'3.57', 200, 1, 3000, 204)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (11, N'Abdelrahim', N'Mohamed', 303087766, N'Aswan', 3, N'General', 2, N'3.7', 300, 1, 2000, 301)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (12, N'Mona', N'Esmail', 302032344, N'Luxor', 4, N'IT', 3, N'3.1', 300, 2, 6000, 302)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (13, N'Sara', N'Ahmed', 302056446, N'Qena', 2, N'CS', 3, N'2.29', 300, 2, 2000, 303)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (14, N'Amer', N'Ahmed', 309890898, N'Qena', 3, N'IT', 3, N'2.6', 300, 2, 6000, 303)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (15, N'Nayra', N'Mohamed', 300243534, N'Qena', 4, N'CS', 3, N'3.2', 300, 2, 2000, 302)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (16, N'Hany', N'Abdo', 300246464, N'Sohag', 2, N'CS', 4, N'3.3', 400, 2, 7000, 401)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (17, N'Moaz', N'waheed', 300655456, N'Luxor', 2, N'CS', 4, N'2.6', 400, 2, 7000, 402)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (18, N'Hazem', N'Taha', 300143546, N'Qena', 1, N'CS', 4, N'2.8', 400, 2, 7000, 403)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (19, N'Nada', N'Ahmed', 300456667, N'Hurghada', 0, N'IT', 4, N'3.08', 400, 2, 7000, 404)
INSERT [dbo].[student of FCI] ([ID_1], [F_name], [L_name], [SSN], [Address], [Section], [Department], [Level], [GPA], [DOC_ID], [Dep_ID], [Teach_ID], [course_ID]) VALUES (20, N'Esraa', N'Mohamed', 303065560, N'Qena', 1, N'IT', 4, N'2.8', 400, 2, 7000, 404)
GO
INSERT [dbo].[Teach_Phone] ([ID], [Teach_Phone]) VALUES (1, N'01027637667')
INSERT [dbo].[Teach_Phone] ([ID], [Teach_Phone]) VALUES (2, N'01266975565')
INSERT [dbo].[Teach_Phone] ([ID], [Teach_Phone]) VALUES (3, N'01286867655')
INSERT [dbo].[Teach_Phone] ([ID], [Teach_Phone]) VALUES (4, N'01128865344')
INSERT [dbo].[Teach_Phone] ([ID], [Teach_Phone]) VALUES (5, N'01021325405')
INSERT [dbo].[Teach_Phone] ([ID], [Teach_Phone]) VALUES (6, N'01203076707')
INSERT [dbo].[Teach_Phone] ([ID], [Teach_Phone]) VALUES (7, N'01071710065')
INSERT [dbo].[Teach_Phone] ([ID], [Teach_Phone]) VALUES (8, N'01054050050')
GO
INSERT [dbo].[Teaching Assistant] ([SSN2], [F_name], [L_name], [Salary], [Address], [Phone], [doc_ID], [Dep_ID], [Table_ID]) VALUES (1000, N'Mohamed', N'Fathy', 7000.0000, N'Aswan', N'01064679925', 200, 2, 80)
INSERT [dbo].[Teaching Assistant] ([SSN2], [F_name], [L_name], [Salary], [Address], [Phone], [doc_ID], [Dep_ID], [Table_ID]) VALUES (2000, N'Ebrahim', N'Shawky', 10000.0000, N'Giza', N'01229938383', 100, 2, 80)
INSERT [dbo].[Teaching Assistant] ([SSN2], [F_name], [L_name], [Salary], [Address], [Phone], [doc_ID], [Dep_ID], [Table_ID]) VALUES (3000, N'Doaa', N'AbdelKareem', 7000.0000, N'Sohag', N'01229943276', 700, 3, 80)
INSERT [dbo].[Teaching Assistant] ([SSN2], [F_name], [L_name], [Salary], [Address], [Phone], [doc_ID], [Dep_ID], [Table_ID]) VALUES (4000, N'Samar', N'Mahmoud', 6000.0000, N'Qena', N'01239384748', 100, 1, 80)
INSERT [dbo].[Teaching Assistant] ([SSN2], [F_name], [L_name], [Salary], [Address], [Phone], [doc_ID], [Dep_ID], [Table_ID]) VALUES (5000, N'Mohamed', N'Rabie', 10000.0000, N'Luxor', N'01292344760', 100, 1, 80)
INSERT [dbo].[Teaching Assistant] ([SSN2], [F_name], [L_name], [Salary], [Address], [Phone], [doc_ID], [Dep_ID], [Table_ID]) VALUES (6000, N'Omar', N'Atef', 6000.0000, N'Luxor', N'01076522989', 300, 2, 80)
INSERT [dbo].[Teaching Assistant] ([SSN2], [F_name], [L_name], [Salary], [Address], [Phone], [doc_ID], [Dep_ID], [Table_ID]) VALUES (7000, N'Mohamed', N'Foad', 11000.0000, N'Mansoura', N'01128237364', 400, 1, 80)
INSERT [dbo].[Teaching Assistant] ([SSN2], [F_name], [L_name], [Salary], [Address], [Phone], [doc_ID], [Dep_ID], [Table_ID]) VALUES (8000, N'Mosa', N'ElKhader', 8000.0000, N'Luxor', N'01119690838', 200, 1, 80)
GO
/****** Object:  Index [Course$Code]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [Course$Code] ON [dbo].[Course]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Course$Doctor_ID]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [Course$Doctor_ID] ON [dbo].[Course]
(
	[Doctor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Course$NumHours]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [Course$NumHours] ON [dbo].[Course]
(
	[NumHours] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Course$Table_ID]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [Course$Table_ID] ON [dbo].[Course]
(
	[Table_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Course$Teaching Assistant_ID]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [Course$Teaching Assistant_ID] ON [dbo].[Course]
(
	[Teaching Assistant_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Department$ID]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [Department$ID] ON [dbo].[Department]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Doctors$DOC_ID]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [Doctors$DOC_ID] ON [dbo].[Doctors]
(
	[Dep_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Doctors$SSN]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [Doctors$SSN] ON [dbo].[Doctors]
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Student 1$SSN]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [Student 1$SSN] ON [dbo].[Student 1]
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Student 2$SSN]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [Student 2$SSN] ON [dbo].[Student 2]
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Student 3$SSN]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [Student 3$SSN] ON [dbo].[Student 3]
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Student 4$SSN]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [Student 4$SSN] ON [dbo].[Student 4]
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [student of FCI$course_ID]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [student of FCI$course_ID] ON [dbo].[student of FCI]
(
	[course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [student of FCI$Dep_ID]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [student of FCI$Dep_ID] ON [dbo].[student of FCI]
(
	[Dep_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [student of FCI$DOC_ID]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [student of FCI$DOC_ID] ON [dbo].[student of FCI]
(
	[DOC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [student of FCI$ID_1]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [student of FCI$ID_1] ON [dbo].[student of FCI]
(
	[ID_1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [student of FCI$stdSSN]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [student of FCI$stdSSN] ON [dbo].[student of FCI]
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [student of FCI$Student 1std]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [student of FCI$Student 1std] ON [dbo].[student of FCI]
(
	[ID_1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [student of FCI$Student 2std]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [student of FCI$Student 2std] ON [dbo].[student of FCI]
(
	[ID_1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [student of FCI$Student 3std]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [student of FCI$Student 3std] ON [dbo].[student of FCI]
(
	[ID_1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [student of FCI$Student 4std]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [student of FCI$Student 4std] ON [dbo].[student of FCI]
(
	[ID_1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [student of FCI$Teach_ID]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [student of FCI$Teach_ID] ON [dbo].[student of FCI]
(
	[Teach_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Teaching Assistant$doc_ID]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [Teaching Assistant$doc_ID] ON [dbo].[Teaching Assistant]
(
	[doc_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Teaching Assistant$SSN]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [Teaching Assistant$SSN] ON [dbo].[Teaching Assistant]
(
	[SSN2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Teaching Assistant$Table_ID]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [Teaching Assistant$Table_ID] ON [dbo].[Teaching Assistant]
(
	[Table_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Teaching Assistant$Teach_ID]    Script Date: 6/3/2022 2:02:21 PM ******/
CREATE NONCLUSTERED INDEX [Teaching Assistant$Teach_ID] ON [dbo].[Teaching Assistant]
(
	[Dep_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT ((0)) FOR [Code]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT ((0)) FOR [Level]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT ((0)) FOR [NumHours]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT ((0)) FOR [Doctor_ID]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT ((0)) FOR [Teaching Assistant_ID]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT ((0)) FOR [degree]
GO
ALTER TABLE [dbo].[Department] ADD  DEFAULT ((0)) FOR [ID]
GO
ALTER TABLE [dbo].[Doctor_Phone] ADD  DEFAULT ((0)) FOR [ID]
GO
ALTER TABLE [dbo].[Doctors] ADD  DEFAULT ((0)) FOR [SSN]
GO
ALTER TABLE [dbo].[Doctors] ADD  DEFAULT ((0)) FOR [Salary]
GO
ALTER TABLE [dbo].[Doctors] ADD  DEFAULT ((0)) FOR [Dep_ID]
GO
ALTER TABLE [dbo].[Doctors] ADD  DEFAULT ((0)) FOR [Table_ID]
GO
ALTER TABLE [dbo].[Student 1] ADD  DEFAULT ((0)) FOR [ID]
GO
ALTER TABLE [dbo].[Student 1] ADD  DEFAULT ((0)) FOR [SSN]
GO
ALTER TABLE [dbo].[Student 1] ADD  DEFAULT ((0)) FOR [Section]
GO
ALTER TABLE [dbo].[Student 2] ADD  DEFAULT ((0)) FOR [ID]
GO
ALTER TABLE [dbo].[Student 2] ADD  DEFAULT ((0)) FOR [SSN]
GO
ALTER TABLE [dbo].[Student 2] ADD  DEFAULT ((0)) FOR [Section]
GO
ALTER TABLE [dbo].[Student 3] ADD  DEFAULT ((0)) FOR [ID]
GO
ALTER TABLE [dbo].[Student 3] ADD  DEFAULT ((0)) FOR [SSN]
GO
ALTER TABLE [dbo].[Student 3] ADD  DEFAULT ((0)) FOR [Section]
GO
ALTER TABLE [dbo].[Student 4] ADD  DEFAULT ((0)) FOR [ID]
GO
ALTER TABLE [dbo].[Student 4] ADD  DEFAULT ((0)) FOR [SSN]
GO
ALTER TABLE [dbo].[Student 4] ADD  DEFAULT ((0)) FOR [Section]
GO
ALTER TABLE [dbo].[student of FCI] ADD  DEFAULT ((0)) FOR [ID_1]
GO
ALTER TABLE [dbo].[student of FCI] ADD  DEFAULT ((0)) FOR [SSN]
GO
ALTER TABLE [dbo].[student of FCI] ADD  DEFAULT ((0)) FOR [Section]
GO
ALTER TABLE [dbo].[student of FCI] ADD  DEFAULT ((0)) FOR [Level]
GO
ALTER TABLE [dbo].[student of FCI] ADD  DEFAULT ((0)) FOR [DOC_ID]
GO
ALTER TABLE [dbo].[student of FCI] ADD  DEFAULT ((0)) FOR [Dep_ID]
GO
ALTER TABLE [dbo].[student of FCI] ADD  DEFAULT ((0)) FOR [Teach_ID]
GO
ALTER TABLE [dbo].[student of FCI] ADD  DEFAULT ((0)) FOR [course_ID]
GO
ALTER TABLE [dbo].[Teach_Phone] ADD  DEFAULT ((0)) FOR [ID]
GO
ALTER TABLE [dbo].[Teaching Assistant] ADD  DEFAULT ((0)) FOR [SSN2]
GO
ALTER TABLE [dbo].[Teaching Assistant] ADD  DEFAULT ((0)) FOR [Salary]
GO
ALTER TABLE [dbo].[Teaching Assistant] ADD  DEFAULT ((0)) FOR [doc_ID]
GO
ALTER TABLE [dbo].[Teaching Assistant] ADD  DEFAULT ((0)) FOR [Dep_ID]
GO
ALTER TABLE [dbo].[Teaching Assistant] ADD  DEFAULT ((0)) FOR [Table_ID]
GO
ALTER TABLE [dbo].[Course]  WITH NOCHECK ADD  CONSTRAINT [Course$DoctorsCourse] FOREIGN KEY([Doctor_ID])
REFERENCES [dbo].[Doctors] ([SSN])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [Course$DoctorsCourse]
GO
ALTER TABLE [dbo].[Course]  WITH NOCHECK ADD  CONSTRAINT [Course$TeachingCourse] FOREIGN KEY([Teaching Assistant_ID])
REFERENCES [dbo].[Teaching Assistant] ([SSN2])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [Course$TeachingCourse]
GO
ALTER TABLE [dbo].[Doctors]  WITH NOCHECK ADD  CONSTRAINT [Doctors$DepartmentDoctors] FOREIGN KEY([Dep_ID])
REFERENCES [dbo].[Department] ([ID])
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [Doctors$DepartmentDoctors]
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [FK_Doctors_Doctor_Phone] FOREIGN KEY([SSN])
REFERENCES [dbo].[Doctor_Phone] ([ID])
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [FK_Doctors_Doctor_Phone]
GO
ALTER TABLE [dbo].[Student 1]  WITH CHECK ADD  CONSTRAINT [FK_Student 1_stu_l1_phone] FOREIGN KEY([ID])
REFERENCES [dbo].[stu_l1_phone] ([ID])
GO
ALTER TABLE [dbo].[Student 1] CHECK CONSTRAINT [FK_Student 1_stu_l1_phone]
GO
ALTER TABLE [dbo].[Student 2]  WITH CHECK ADD  CONSTRAINT [FK_Student 2_stu_l2_phone] FOREIGN KEY([ID])
REFERENCES [dbo].[stu_l2_phone] ([ID])
GO
ALTER TABLE [dbo].[Student 2] CHECK CONSTRAINT [FK_Student 2_stu_l2_phone]
GO
ALTER TABLE [dbo].[Student 3]  WITH CHECK ADD  CONSTRAINT [FK_Student 3_stu_l3_phone] FOREIGN KEY([ID])
REFERENCES [dbo].[stu_l3_phone] ([ID])
GO
ALTER TABLE [dbo].[Student 3] CHECK CONSTRAINT [FK_Student 3_stu_l3_phone]
GO
ALTER TABLE [dbo].[Student 4]  WITH CHECK ADD  CONSTRAINT [FK_Student 4_stu_ l 4_phone] FOREIGN KEY([ID])
REFERENCES [dbo].[stu_ l 4_phone] ([ID])
GO
ALTER TABLE [dbo].[Student 4] CHECK CONSTRAINT [FK_Student 4_stu_ l 4_phone]
GO
ALTER TABLE [dbo].[student of FCI]  WITH NOCHECK ADD  CONSTRAINT [student of FCI$Coursestd] FOREIGN KEY([course_ID])
REFERENCES [dbo].[Course] ([Code])
GO
ALTER TABLE [dbo].[student of FCI] CHECK CONSTRAINT [student of FCI$Coursestd]
GO
ALTER TABLE [dbo].[student of FCI]  WITH NOCHECK ADD  CONSTRAINT [student of FCI$Departmentstd] FOREIGN KEY([Dep_ID])
REFERENCES [dbo].[Department] ([ID])
GO
ALTER TABLE [dbo].[student of FCI] CHECK CONSTRAINT [student of FCI$Departmentstd]
GO
ALTER TABLE [dbo].[student of FCI]  WITH NOCHECK ADD  CONSTRAINT [student of FCI$Doctorsstd] FOREIGN KEY([DOC_ID])
REFERENCES [dbo].[Doctors] ([SSN])
GO
ALTER TABLE [dbo].[student of FCI] CHECK CONSTRAINT [student of FCI$Doctorsstd]
GO
ALTER TABLE [dbo].[student of FCI]  WITH NOCHECK ADD  CONSTRAINT [student of FCI$Student 1std] FOREIGN KEY([ID_1])
REFERENCES [dbo].[Student 1] ([ID])
GO
ALTER TABLE [dbo].[student of FCI] CHECK CONSTRAINT [student of FCI$Student 1std]
GO
ALTER TABLE [dbo].[student of FCI]  WITH NOCHECK ADD  CONSTRAINT [student of FCI$Student 2std] FOREIGN KEY([ID_1])
REFERENCES [dbo].[Student 2] ([ID])
GO
ALTER TABLE [dbo].[student of FCI] CHECK CONSTRAINT [student of FCI$Student 2std]
GO
ALTER TABLE [dbo].[student of FCI]  WITH NOCHECK ADD  CONSTRAINT [student of FCI$Student 3std] FOREIGN KEY([ID_1])
REFERENCES [dbo].[Student 3] ([ID])
GO
ALTER TABLE [dbo].[student of FCI] CHECK CONSTRAINT [student of FCI$Student 3std]
GO
ALTER TABLE [dbo].[student of FCI]  WITH NOCHECK ADD  CONSTRAINT [student of FCI$Student 4std] FOREIGN KEY([ID_1])
REFERENCES [dbo].[Student 4] ([ID])
GO
ALTER TABLE [dbo].[student of FCI] CHECK CONSTRAINT [student of FCI$Student 4std]
GO
ALTER TABLE [dbo].[student of FCI]  WITH NOCHECK ADD  CONSTRAINT [student of FCI$Teachingstd] FOREIGN KEY([Teach_ID])
REFERENCES [dbo].[Teaching Assistant] ([SSN2])
GO
ALTER TABLE [dbo].[student of FCI] CHECK CONSTRAINT [student of FCI$Teachingstd]
GO
ALTER TABLE [dbo].[Teaching Assistant]  WITH NOCHECK ADD  CONSTRAINT [Teaching Assistant$DepartmentTeaching] FOREIGN KEY([Dep_ID])
REFERENCES [dbo].[Department] ([ID])
GO
ALTER TABLE [dbo].[Teaching Assistant] CHECK CONSTRAINT [Teaching Assistant$DepartmentTeaching]
GO
ALTER TABLE [dbo].[Teaching Assistant]  WITH NOCHECK ADD  CONSTRAINT [Teaching Assistant$DoctorsTeaching] FOREIGN KEY([doc_ID])
REFERENCES [dbo].[Doctors] ([SSN])
GO
ALTER TABLE [dbo].[Teaching Assistant] CHECK CONSTRAINT [Teaching Assistant$DoctorsTeaching]
GO
ALTER TABLE [dbo].[Teaching Assistant]  WITH NOCHECK ADD  CONSTRAINT [Teaching Assistant$Teach_PhoneTeaching Assistant] FOREIGN KEY([SSN2])
REFERENCES [dbo].[Teach_Phone] ([ID])
GO
ALTER TABLE [dbo].[Teaching Assistant] CHECK CONSTRAINT [Teaching Assistant$Teach_PhoneTeaching Assistant]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course].[Code]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course].[Name_Course]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'Name_Course'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course].[Level]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'Level'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course].[NumHours]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'NumHours'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course].[Table_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'Table_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course].[Doctor_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'Doctor_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course].[Teaching Assistant_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'Teaching Assistant_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course].[degree]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'degree'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'CONSTRAINT',@level2name=N'Course$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course].[Code]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'INDEX',@level2name=N'Course$Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course].[Doctor_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'INDEX',@level2name=N'Course$Doctor_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course].[NumHours]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'INDEX',@level2name=N'Course$NumHours'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course].[Table_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'INDEX',@level2name=N'Course$Table_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course].[Teaching Assistant_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'INDEX',@level2name=N'Course$Teaching Assistant_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course].[DoctorsCourse]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'CONSTRAINT',@level2name=N'Course$DoctorsCourse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Course].[TeachingCourse]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'CONSTRAINT',@level2name=N'Course$TeachingCourse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Department].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Department].[NamDepartment]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'NamDepartment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Department].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'CONSTRAINT',@level2name=N'Department$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Department].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'INDEX',@level2name=N'Department$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Department]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Department'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctor_Phone].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctor_Phone', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctor_Phone].[Doctor_Phone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctor_Phone', @level2type=N'COLUMN',@level2name=N'Doctor_Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctor_Phone].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctor_Phone', @level2type=N'CONSTRAINT',@level2name=N'Doctor_Phone$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctor_Phone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctor_Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctors].[SSN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctors', @level2type=N'COLUMN',@level2name=N'SSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctors].[F_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctors', @level2type=N'COLUMN',@level2name=N'F_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctors].[L_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctors', @level2type=N'COLUMN',@level2name=N'L_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctors].[Phone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctors', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctors].[Address]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctors', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctors].[Salary]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctors', @level2type=N'COLUMN',@level2name=N'Salary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctors].[Dep_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctors', @level2type=N'COLUMN',@level2name=N'Dep_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctors].[Table_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctors', @level2type=N'COLUMN',@level2name=N'Table_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctors].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctors', @level2type=N'CONSTRAINT',@level2name=N'Doctors$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctors].[DOC_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctors', @level2type=N'INDEX',@level2name=N'Doctors$DOC_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctors].[SSN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctors', @level2type=N'INDEX',@level2name=N'Doctors$SSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctors]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctors'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Doctors].[DepartmentDoctors]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Doctors', @level2type=N'CONSTRAINT',@level2name=N'Doctors$DepartmentDoctors'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[stu_ l 4_phone].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stu_ l 4_phone', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[stu_ l 4_phone].[student phone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stu_ l 4_phone', @level2type=N'COLUMN',@level2name=N'student phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[stu_ l 4_phone].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stu_ l 4_phone', @level2type=N'CONSTRAINT',@level2name=N'stu_ l 4_phone$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[stu_ l 4_phone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stu_ l 4_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[stu_l1_phone].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stu_l1_phone', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[stu_l1_phone].[student phone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stu_l1_phone', @level2type=N'COLUMN',@level2name=N'student phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[stu_l1_phone].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stu_l1_phone', @level2type=N'CONSTRAINT',@level2name=N'stu_l1_phone$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[stu_l1_phone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stu_l1_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[stu_l2_phone].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stu_l2_phone', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[stu_l2_phone].[student phone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stu_l2_phone', @level2type=N'COLUMN',@level2name=N'student phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[stu_l2_phone].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stu_l2_phone', @level2type=N'CONSTRAINT',@level2name=N'stu_l2_phone$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[stu_l2_phone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stu_l2_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[stu_l3_phone].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stu_l3_phone', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[stu_l3_phone].[student phone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stu_l3_phone', @level2type=N'COLUMN',@level2name=N'student phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[stu_l3_phone].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stu_l3_phone', @level2type=N'CONSTRAINT',@level2name=N'stu_l3_phone$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[stu_l3_phone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stu_l3_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 1].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 1', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 1].[F_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 1', @level2type=N'COLUMN',@level2name=N'F_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 1].[L_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 1', @level2type=N'COLUMN',@level2name=N'L_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 1].[SSN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 1', @level2type=N'COLUMN',@level2name=N'SSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 1].[Address]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 1', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 1].[Section]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 1', @level2type=N'COLUMN',@level2name=N'Section'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 1].[Department]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 1', @level2type=N'COLUMN',@level2name=N'Department'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 1].[GPA]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 1', @level2type=N'COLUMN',@level2name=N'GPA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 1].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 1', @level2type=N'CONSTRAINT',@level2name=N'Student 1$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 1].[SSN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 1', @level2type=N'INDEX',@level2name=N'Student 1$SSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 1]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 2].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 2', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 2].[F_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 2', @level2type=N'COLUMN',@level2name=N'F_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 2].[L_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 2', @level2type=N'COLUMN',@level2name=N'L_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 2].[SSN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 2', @level2type=N'COLUMN',@level2name=N'SSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 2].[Address]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 2', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 2].[Section]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 2', @level2type=N'COLUMN',@level2name=N'Section'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 2].[Department]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 2', @level2type=N'COLUMN',@level2name=N'Department'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 2].[GPA]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 2', @level2type=N'COLUMN',@level2name=N'GPA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 2].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 2', @level2type=N'CONSTRAINT',@level2name=N'Student 2$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 2].[SSN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 2', @level2type=N'INDEX',@level2name=N'Student 2$SSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 2]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 3].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 3', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 3].[F_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 3', @level2type=N'COLUMN',@level2name=N'F_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 3].[L_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 3', @level2type=N'COLUMN',@level2name=N'L_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 3].[SSN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 3', @level2type=N'COLUMN',@level2name=N'SSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 3].[Address]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 3', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 3].[Section]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 3', @level2type=N'COLUMN',@level2name=N'Section'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 3].[Department]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 3', @level2type=N'COLUMN',@level2name=N'Department'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 3].[GPA]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 3', @level2type=N'COLUMN',@level2name=N'GPA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 3].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 3', @level2type=N'CONSTRAINT',@level2name=N'Student 3$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 3].[SSN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 3', @level2type=N'INDEX',@level2name=N'Student 3$SSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 3]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 4].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 4', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 4].[F_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 4', @level2type=N'COLUMN',@level2name=N'F_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 4].[L_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 4', @level2type=N'COLUMN',@level2name=N'L_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 4].[SSN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 4', @level2type=N'COLUMN',@level2name=N'SSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 4].[Address]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 4', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 4].[Section]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 4', @level2type=N'COLUMN',@level2name=N'Section'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 4].[Department]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 4', @level2type=N'COLUMN',@level2name=N'Department'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 4].[GPA]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 4', @level2type=N'COLUMN',@level2name=N'GPA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 4].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 4', @level2type=N'CONSTRAINT',@level2name=N'Student 4$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 4].[SSN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 4', @level2type=N'INDEX',@level2name=N'Student 4$SSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Student 4]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student 4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[ID_1]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'COLUMN',@level2name=N'ID_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[F_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'COLUMN',@level2name=N'F_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[L_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'COLUMN',@level2name=N'L_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[SSN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'COLUMN',@level2name=N'SSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Address]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Section]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'COLUMN',@level2name=N'Section'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Department]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'COLUMN',@level2name=N'Department'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Level]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'COLUMN',@level2name=N'Level'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[GPA]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'COLUMN',@level2name=N'GPA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[DOC_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'COLUMN',@level2name=N'DOC_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Dep_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'COLUMN',@level2name=N'Dep_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Teach_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'COLUMN',@level2name=N'Teach_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[course_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'COLUMN',@level2name=N'course_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'CONSTRAINT',@level2name=N'student of FCI$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[course_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'INDEX',@level2name=N'student of FCI$course_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Dep_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'INDEX',@level2name=N'student of FCI$Dep_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[DOC_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'INDEX',@level2name=N'student of FCI$DOC_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[ID_1]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'INDEX',@level2name=N'student of FCI$ID_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[stdSSN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'INDEX',@level2name=N'student of FCI$stdSSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Student 1std]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'INDEX',@level2name=N'student of FCI$Student 1std'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Student 2std]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'INDEX',@level2name=N'student of FCI$Student 2std'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Student 3std]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'INDEX',@level2name=N'student of FCI$Student 3std'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Student 4std]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'INDEX',@level2name=N'student of FCI$Student 4std'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Teach_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'INDEX',@level2name=N'student of FCI$Teach_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Coursestd]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'CONSTRAINT',@level2name=N'student of FCI$Coursestd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Departmentstd]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'CONSTRAINT',@level2name=N'student of FCI$Departmentstd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Doctorsstd]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'CONSTRAINT',@level2name=N'student of FCI$Doctorsstd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Student 1std]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'CONSTRAINT',@level2name=N'student of FCI$Student 1std'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Student 2std]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'CONSTRAINT',@level2name=N'student of FCI$Student 2std'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Student 3std]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'CONSTRAINT',@level2name=N'student of FCI$Student 3std'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Student 4std]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'CONSTRAINT',@level2name=N'student of FCI$Student 4std'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[student of FCI].[Teachingstd]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'student of FCI', @level2type=N'CONSTRAINT',@level2name=N'student of FCI$Teachingstd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teach_Phone].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teach_Phone', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teach_Phone].[Teach_Phone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teach_Phone', @level2type=N'COLUMN',@level2name=N'Teach_Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teach_Phone].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teach_Phone', @level2type=N'CONSTRAINT',@level2name=N'Teach_Phone$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teach_Phone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teach_Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[SSN2]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'COLUMN',@level2name=N'SSN2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[F_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'COLUMN',@level2name=N'F_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[L_name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'COLUMN',@level2name=N'L_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[Salary]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'COLUMN',@level2name=N'Salary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[Address]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[Phone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[doc_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'COLUMN',@level2name=N'doc_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[Dep_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'COLUMN',@level2name=N'Dep_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[Table_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'COLUMN',@level2name=N'Table_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'CONSTRAINT',@level2name=N'Teaching Assistant$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[doc_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'INDEX',@level2name=N'Teaching Assistant$doc_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[SSN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'INDEX',@level2name=N'Teaching Assistant$SSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[Table_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'INDEX',@level2name=N'Teaching Assistant$Table_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[Teach_ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'INDEX',@level2name=N'Teaching Assistant$Teach_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[DepartmentTeaching]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'CONSTRAINT',@level2name=N'Teaching Assistant$DepartmentTeaching'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[DoctorsTeaching]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'CONSTRAINT',@level2name=N'Teaching Assistant$DoctorsTeaching'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Database1111122.[Teaching Assistant].[Teach_PhoneTeaching Assistant]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teaching Assistant', @level2type=N'CONSTRAINT',@level2name=N'Teaching Assistant$Teach_PhoneTeaching Assistant'
GO
USE [master]
GO
ALTER DATABASE [FCI DB] SET  READ_WRITE 
GO
