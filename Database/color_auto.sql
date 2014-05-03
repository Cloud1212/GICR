USE [GICR]
GO

/****** Object:  Table [dbo].[color_auto]    Script Date: 25/03/2014 02:48:20 p. m. ******/
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

