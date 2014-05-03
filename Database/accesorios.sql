USE [GICR]
GO

/****** Object:  Table [dbo].[accesorios]    Script Date: 25/03/2014 02:47:35 p. m. ******/
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

