USE [master]
GO
/****** Object:  Database [ATestProject]    Script Date: 2/26/2023 3:31:07 PM ******/
CREATE DATABASE [ATestProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ATestProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ATestProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ATestProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ATestProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ATestProject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ATestProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ATestProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ATestProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ATestProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ATestProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ATestProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [ATestProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ATestProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ATestProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ATestProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ATestProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ATestProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ATestProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ATestProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ATestProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ATestProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ATestProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ATestProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ATestProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ATestProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ATestProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ATestProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ATestProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ATestProject] SET RECOVERY FULL 
GO
ALTER DATABASE [ATestProject] SET  MULTI_USER 
GO
ALTER DATABASE [ATestProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ATestProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ATestProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ATestProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ATestProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ATestProject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ATestProject', N'ON'
GO
ALTER DATABASE [ATestProject] SET QUERY_STORE = OFF
GO
USE [ATestProject]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2/26/2023 3:31:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[username] [nvarchar](40) NULL,
	[name1] [nvarchar](40) NULL,
	[email] [nvarchar](40) NULL,
	[phone] [nvarchar](10) NULL,
	[password1] [nvarchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/26/2023 3:31:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[idProduct] [nvarchar](6) NOT NULL,
	[idType] [nvarchar](6) NULL,
	[nameProduct] [nvarchar](40) NULL,
	[price] [decimal](10, 4) NULL,
	[soLuong] [int] NULL,
	[img] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 2/26/2023 3:31:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProduct](
	[idType] [nvarchar](6) NOT NULL,
	[nameType] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[idType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Customer] ([username], [name1], [email], [phone], [password1]) VALUES (N'iamhaao', N'Le Hao', N'Haolde160051@fpt.edu.vn', N'0899202235', N'lehao1911')
INSERT [dbo].[Customer] ([username], [name1], [email], [phone], [password1]) VALUES (N'nhatlinh', N'Le Hoang Nhat Linh', N'linhlhnde160587@fpt.edu.vn', N'0899203235', N'lehao1911')
INSERT [dbo].[Customer] ([username], [name1], [email], [phone], [password1]) VALUES (N'tinly', N'Ly Duc Tin', N'Tinlde160347@fpt.edu.vn', N'0899202335', N'lehao1911')
INSERT [dbo].[Customer] ([username], [name1], [email], [phone], [password1]) VALUES (NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([username], [name1], [email], [phone], [password1]) VALUES (N'thang', N'Thang', N'abc@abc.com', N'0386562704', N'abc@123')
INSERT [dbo].[Customer] ([username], [name1], [email], [phone], [password1]) VALUES (N'huylee', N'Le Huy', N'huylee@gmail.com', N'0123456789', N'huyne')
INSERT [dbo].[Customer] ([username], [name1], [email], [phone], [password1]) VALUES (N'haohao', N'Lê Hào', N'haolee2002tst@gmail.com', N'0899202222', N'lehao2002')
GO
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'ac1', N'ac', N'Gift-Valentine', CAST(1200.0000 AS Decimal(10, 4)), 11, N'./images/ac1.png')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'ac2', N'ac', N'MKDE', CAST(1000.0000 AS Decimal(10, 4)), 14, N'./images/ac2.png')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'bg1', N'bg', N'BAG-Summer', CAST(7000.0000 AS Decimal(10, 4)), 21, N'./images/bg1.jpg')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'bg2', N'bg', N'Bag-ABX', CAST(3600.0000 AS Decimal(10, 4)), 8, N'./images/bg2.png')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'bg3', N'bg', N'LouisVuitton Ps', CAST(9000.0000 AS Decimal(10, 4)), 2, N'./images/bg3.png')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'bg4', N'bg', N'Bag-NMD', CAST(5000.0000 AS Decimal(10, 4)), 6, N'./images/bg4.png')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'sh1', N'sh', N'Shoes-ABX', CAST(4000.0000 AS Decimal(10, 4)), 4, N'./images/sh1.jpg')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'sh2', N'sh', N'Shoe-LVxNike', CAST(8000.0000 AS Decimal(10, 4)), 7, N'./images/sh2.jpg')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'sh3', N'sh', N'Summer-shoe', CAST(6500.0000 AS Decimal(10, 4)), 4, N'./images/sh3.jpg')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'st1', N'st', N'Jacket Demin', CAST(6000.0000 AS Decimal(10, 4)), 8, N'./images/ts1.jpg')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'st2', N'st', N'T-Shirt Basic', CAST(2000.0000 AS Decimal(10, 4)), 15, N'./images/ts2.jpg')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'st3', N'st', N'Shirts Summer', CAST(3500.0000 AS Decimal(10, 4)), 12, N'./images/ts3.jpg')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'st4', N'st', N'Varsity Summer', CAST(8500.0000 AS Decimal(10, 4)), 8, N'./images/st4.png')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'st5', N'st', N'Blazer Summer', CAST(6500.0000 AS Decimal(10, 4)), 4, N'./images/st5.png')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'st6', N'st', N'Shirts LVxYSL', CAST(4600.0000 AS Decimal(10, 4)), 11, N'./images/st6.png')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'st7', N'st', N'Jacket ABX', CAST(8000.0000 AS Decimal(10, 4)), 3, N'./images/st7.png')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'st8', N'st', N'S-SS', CAST(5000.0000 AS Decimal(10, 4)), 6, N'./images/st8.png')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'tr1', N'tr', N'Trousers Basic', CAST(4000.0000 AS Decimal(10, 4)), 5, N'./images/tr1.png')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'tr2', N'tr', N'Jeans ABX', CAST(6500.0000 AS Decimal(10, 4)), 8, N'./images/tr2.png')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'tr3', N'tr', N'Trousers Baggy', CAST(5000.0000 AS Decimal(10, 4)), 14, N'./images/tr3.png')
INSERT [dbo].[Product] ([idProduct], [idType], [nameProduct], [price], [soLuong], [img]) VALUES (N'tr4', N'tr', N'Trousers-Summer ', CAST(5200.0000 AS Decimal(10, 4)), 10, N'./images/tr4.png')
GO
INSERT [dbo].[TypeProduct] ([idType], [nameType]) VALUES (N'ac', N'Accessory')
INSERT [dbo].[TypeProduct] ([idType], [nameType]) VALUES (N'bg', N'Bag')
INSERT [dbo].[TypeProduct] ([idType], [nameType]) VALUES (N'ht', N'Hat')
INSERT [dbo].[TypeProduct] ([idType], [nameType]) VALUES (N'sh', N'Shoe')
INSERT [dbo].[TypeProduct] ([idType], [nameType]) VALUES (N'st', N'Shirt')
INSERT [dbo].[TypeProduct] ([idType], [nameType]) VALUES (N'tr', N'Trousers')
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([idType])
REFERENCES [dbo].[TypeProduct] ([idType])
GO
USE [master]
GO
ALTER DATABASE [ATestProject] SET  READ_WRITE 
GO
