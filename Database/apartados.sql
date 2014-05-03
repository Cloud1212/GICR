USE [GICR]
GO

/****** Object:  Table [dbo].[apartados]    Script Date: 25/03/2014 02:47:47 p. m. ******/
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

