USE [GICR]
GO

/****** Object:  Table [dbo].[excel2]    Script Date: 25/03/2014 02:48:43 p. m. ******/
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

