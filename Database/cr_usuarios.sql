USE [GICR]
GO

/****** Object:  Table [dbo].[cr_Usuarios]    Script Date: 25/03/2014 02:48:29 p. m. ******/
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

