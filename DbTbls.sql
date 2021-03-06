Create database Telecom
go
USE [Telecom]
GO
CREATE TABLE [dbo].[FileLogging](
	[FileName] [varchar](100) NULL,
	[IsExist] [bit] NULL,
	[IsDownload] [bit] NULL,
	[IsInsert] [bit] NULL,
	[FileSize] [decimal](4, 2) NULL,
	[CreateDate] [datetime] NULL,
	[ModiFiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Folders]    Script Date: 3/6/2020 7:11:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Folders](
	[FolderName] [varchar](30) NULL,
	[IsExist] [bit] NULL,
	[IsCreate] [bit] NULL,
	[CreatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Naming]    Script Date: 3/6/2020 7:11:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Naming](
	[FileName] [varchar](50) NULL,
	[TableName] [varchar](50) NULL,
	[SchemaName] [varchar](50) NULL,
	[FileExtention] [varchar](50) NULL,
	[sheetname] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telecom2G_Tbl]    Script Date: 3/6/2020 7:11:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telecom2G_Tbl](
	[CellName] [nvarchar](255) NULL,
	[Distance(KM)] [float] NULL,
	[Tech Tag] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Technology] [nvarchar](255) NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telecom3G_Tbl]    Script Date: 3/6/2020 7:11:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telecom3G_Tbl](
	[CellName] [nvarchar](255) NULL,
	[Location] [nvarchar](255) NULL,
	[BTS Installation Type] [nvarchar](255) NULL,
	[Tech Tag] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Technology] [nvarchar](255) NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telecom4G_Tbl]    Script Date: 3/6/2020 7:11:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telecom4G_Tbl](
	[Distance(KM)] [float] NULL,
	[Tech Tag] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Technology] [nvarchar](255) NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Naming] ([FileName], [TableName], [SchemaName], [FileExtention], [sheetname]) VALUES (N'Telecom2G_Tbl', N'Telecom2G', N'dbo', N'.xlsx', NULL)
INSERT [dbo].[Naming] ([FileName], [TableName], [SchemaName], [FileExtention], [sheetname]) VALUES (N'Telecom3G_Tbl', N'Telecom3G', N'dbo', N'.xlsx', NULL)
INSERT [dbo].[Naming] ([FileName], [TableName], [SchemaName], [FileExtention], [sheetname]) VALUES (N'Telecom4G_Tbl', N'Telecom4G', N'dbo', N'.xlsx', NULL)
