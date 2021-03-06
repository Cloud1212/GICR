USE [master]
GO
/****** Object:  Database [GICR]    Script Date: 31/05/2014 04:10:18 p. m. ******/
CREATE DATABASE [GICR]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GICR', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\GICR.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GICR_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\GICR_log.ldf' , SIZE = 1600KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GICR] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GICR].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GICR] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GICR] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GICR] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GICR] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GICR] SET ARITHABORT OFF 
GO
ALTER DATABASE [GICR] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GICR] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [GICR] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GICR] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GICR] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GICR] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GICR] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GICR] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GICR] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GICR] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GICR] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GICR] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GICR] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GICR] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GICR] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GICR] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GICR] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GICR] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GICR] SET RECOVERY FULL 
GO
ALTER DATABASE [GICR] SET  MULTI_USER 
GO
ALTER DATABASE [GICR] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GICR] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GICR] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GICR] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'GICR', N'ON'
GO
USE [GICR]
GO
/****** Object:  StoredProcedure [dbo].[actualizar_Separados]    Script Date: 31/05/2014 04:10:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[actualizar_Separados]
AS
BEGIN

update excel
set excel.nombre_cliente = tempTable.nombre_cliente
from tempTable
where excel.ord_num = tempTable.ord_num

drop table tempTable

END

GO
/****** Object:  StoredProcedure [dbo].[vaciaExcel]    Script Date: 31/05/2014 04:10:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[vaciaExcel]

as

IF OBJECT_ID('tempTable') IS NOT NULL
begin
  drop table tempTable
end


select ord_num, nombre_cliente 
Into tempTable
from excel
where nombre_cliente <> ''

insert into excel2
select * from excel 

truncate table excel
GO
/****** Object:  Table [dbo].[accesorios]    Script Date: 31/05/2014 04:10:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accesorios](
	[cdgo_accesorio] [numeric](5, 0) IDENTITY(1,1) NOT NULL,
	[cve_accesorio] [varchar](3) NULL,
	[descr_accesorio] [varchar](200) NULL,
	[foto_accesorio] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[cdgo_accesorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[apartados]    Script Date: 31/05/2014 04:10:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[apartados](
	[FolioApartado] [varchar](7) NOT NULL,
	[nombreCliente] [varchar](50) NULL,
	[telCliente] [varchar](10) NULL,
	[mailCliente] [varchar](50) NULL,
	[usuario] [varchar](10) NULL,
	[modeloAuto] [varchar](20) NULL,
	[anioAuto] [numeric](4, 0) NULL,
	[colorAuto] [varchar](30) NULL,
	[paqueteAuto] [varchar](3) NULL,
	[ordenAuto] [varchar](10) NULL,
	[status] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[FolioApartado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Carline]    Script Date: 31/05/2014 04:10:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carline](
	[CodigoCarline] [varchar](10) NOT NULL,
	[NombreCarline] [varchar](20) NOT NULL,
	[AnoProd] [numeric](4, 0) NOT NULL,
	[StatusCarline] [varchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoCarline] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[color_auto]    Script Date: 31/05/2014 04:10:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[color_auto](
	[cdgo_color] [numeric](5, 0) IDENTITY(1,1) NOT NULL,
	[cve_color] [varchar](3) NULL,
	[descr_color] [varchar](200) NULL,
	[foto_color] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[cdgo_color] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cr_Usuarios]    Script Date: 31/05/2014 04:10:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cr_Usuarios](
	[cdgo_Usuarios] [numeric](5, 0) IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](10) NOT NULL,
	[nom_Usuario] [varchar](50) NOT NULL,
	[contra_Usuario] [varchar](20) NOT NULL,
	[correo_Usuario] [varchar](50) NOT NULL,
	[perfil_Usuario] [varchar](50) NOT NULL,
	[status_Usuario] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cdgo_Usuarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[excel]    Script Date: 31/05/2014 04:10:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[excel](
	[id_excel] [int] IDENTITY(1,1) NOT NULL,
	[date_create] [date] NULL,
	[num] [int] NULL,
	[ord_num] [varchar](20) NULL,
	[clave_1] [varchar](10) NULL,
	[dan] [varchar](50) NULL,
	[modelo] [varchar](15) NULL,
	[tpw] [date] NULL,
	[fecha_estimada_entrega] [date] NULL,
	[vin] [varchar](20) NULL,
	[antiguedad_inventario] [int] NULL,
	[clave_2] [varchar](10) NULL,
	[color_secundario] [varchar](10) NULL,
	[vestidura] [varchar](10) NULL,
	[modificado] [varchar](5) NULL,
	[inventario_no] [varchar](50) NULL,
	[paquete] [varchar](10) NULL,
	[anio_modelo] [numeric](4, 0) NULL,
	[gpo_asig] [varchar](15) NULL,
	[clave_3] [int] NULL,
	[calve_4] [varchar](50) NULL,
	[clave_5] [varchar](15) NULL,
	[embarcar_bac] [int] NULL,
	[embarcar_bfc] [numeric](5, 0) NULL,
	[clave_6] [varchar](10) NULL,
	[evento_actual] [varchar](10) NULL,
	[fecha_evento_actual] [date] NULL,
	[opciones_ordenadas] [varchar](160) NULL,
	[nombre_cliente] [varchar](60) NULL,
 CONSTRAINT [PK_excel] PRIMARY KEY CLUSTERED 
(
	[id_excel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[excel2]    Script Date: 31/05/2014 04:10:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[excel2](
	[id_excel] [int] NOT NULL,
	[date_create] [date] NULL,
	[num] [int] NULL,
	[ord_num] [varchar](20) NULL,
	[clave_1] [varchar](10) NULL,
	[dan] [varchar](50) NULL,
	[modelo] [varchar](15) NULL,
	[tpw] [date] NULL,
	[fecha_estimada_entrega] [date] NULL,
	[vin] [varchar](20) NULL,
	[antiguedad_inventario] [int] NULL,
	[clave_2] [varchar](10) NULL,
	[color_secundario] [varchar](10) NULL,
	[vestidura] [varchar](10) NULL,
	[modificado] [varchar](5) NULL,
	[inventario_no] [varchar](50) NULL,
	[paquete] [varchar](10) NULL,
	[anio_modelo] [numeric](4, 0) NULL,
	[gpo_asig] [varchar](15) NULL,
	[clave_3] [int] NULL,
	[calve_4] [varchar](50) NULL,
	[clave_5] [varchar](15) NULL,
	[embarcar_bac] [int] NULL,
	[embarcar_bfc] [numeric](5, 0) NULL,
	[clave_6] [varchar](10) NULL,
	[evento_actual] [varchar](10) NULL,
	[fecha_evento_actual] [date] NULL,
	[opciones_ordenadas] [varchar](160) NULL,
	[nombre_cliente] [varchar](60) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[folioApartados]    Script Date: 31/05/2014 04:10:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[folioApartados](
	[id] [numeric](7, 0) IDENTITY(1,1) NOT NULL,
	[apartado] [varchar](5) NULL,
	[orden] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[perfiles]    Script Date: 31/05/2014 04:10:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[perfiles](
	[idPerfil] [varchar](20) NOT NULL,
	[descripcionPefil] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[vestiduras]    Script Date: 31/05/2014 04:10:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[vestiduras](
	[claveVestidura] [char](3) NOT NULL,
	[descVestidura] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[claveVestidura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [GICR] SET  READ_WRITE 
GO
