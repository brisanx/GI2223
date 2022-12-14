USE [master]
GO
DROP DATABASE [Nhibernate]
GO
/****** Object:  Database [Nhibernate]    Script Date: 14/12/2022 16:35:05 ******/
CREATE DATABASE [Nhibernate]
GO
USE [Nhibernate]
GO
/****** Object:  Table [dbo].[tClient]    Script Date: 14/12/2022 16:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tClient](
	[NIF] [varchar](50) NOT NULL,
	[NOMBRE] [varchar](250) NOT NULL,
	[APELLIDOS] [varchar](250) NOT NULL,
	[EDAD] [int] NOT NULL,
 CONSTRAINT [PK_tClient] PRIMARY KEY CLUSTERED 
(
	[NIF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tEye]    Script Date: 14/12/2022 16:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tEye](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NIF] [varchar](50) NOT NULL,
	[CONSULTA] [date] NOT NULL,
	[OD_ESFERA] [real] NOT NULL,
	[OD_CILINDRO] [real] NOT NULL,
	[OD_ADICION] [real] NOT NULL,
	[OD_AGUDEZA] [real] NOT NULL,
	[OI_ESFERA] [real] NOT NULL,
	[OI_CILINDRO] [real] NOT NULL,
	[OI_ADICION] [real] NOT NULL,
	[OI_AGUDEZA] [real] NOT NULL,
 CONSTRAINT [PK_tEye] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tEye]  WITH CHECK ADD  CONSTRAINT [FK_NIF] FOREIGN KEY([NIF])
REFERENCES [dbo].[tClient] ([NIF])
GO
ALTER TABLE [dbo].[tEye] CHECK CONSTRAINT [FK_NIF]
GO

/****** INSERTS   Script Date: 14/12/2022 16:35:05 ******/
INSERT INTO tClient VALUES('00000000A', 'Nombre0', 'Apellidos0', 20);
GO
INSERT INTO tClient VALUES('11111111A', 'Nombre1', 'Apellidos1', 21);
GO
INSERT INTO tClient VALUES('22222222A', 'Nombre2', 'Apellidos2', 22);
GO
INSERT INTO tClient VALUES('33333333A', 'Nombre3', 'Apellidos3', 23);
GO
INSERT INTO tClient VALUES('44444444A', 'Nombre4', 'Apellidos4', 24);
GO
INSERT INTO tClient VALUES('55555555A', 'Nombre5', 'Apellidos5', 25);
GO
INSERT INTO tClient VALUES('66666666A', 'Nombre6', 'Apellidos6', 26);
GO
INSERT INTO tClient VALUES('77777777A', 'Nombre7', 'Apellidos7', 27);
GO
INSERT INTO tClient VALUES('88888888A', 'Nombre8', 'Apellidos8', 28);
GO
INSERT INTO tClient VALUES('99999999A', 'Nombre9', 'Apellidos9', 29);
GO

INSERT INTO [dbo].[tEye]
           ([NIF]
           ,[CONSULTA]
           ,[OD_ESFERA]
           ,[OD_CILINDRO]
           ,[OD_ADICION]
           ,[OD_AGUDEZA]
           ,[OI_ESFERA]
           ,[OI_CILINDRO]
           ,[OI_ADICION]
           ,[OI_AGUDEZA])
     VALUES
           ('11111111A', '16/09/2018', 2, -1.5, 85, 1, 2.25, -1.75, 80, 1);
GO
INSERT INTO [dbo].[tEye]
           ([NIF]
           ,[CONSULTA]
           ,[OD_ESFERA]
           ,[OD_CILINDRO]
           ,[OD_ADICION]
           ,[OD_AGUDEZA]
           ,[OI_ESFERA]
           ,[OI_CILINDRO]
           ,[OI_ADICION]
           ,[OI_AGUDEZA])
     VALUES
           ('11111111A', '16/09/2019', 2.25, -1.5, 85, 1, 2.5, -1.75, 80, 1);
GO
INSERT INTO [dbo].[tEye]
           ([NIF]
           ,[CONSULTA]
           ,[OD_ESFERA]
           ,[OD_CILINDRO]
           ,[OD_ADICION]
           ,[OD_AGUDEZA]
           ,[OI_ESFERA]
           ,[OI_CILINDRO]
           ,[OI_ADICION]
           ,[OI_AGUDEZA])
     VALUES
           ('11111111A', '16/09/2020', 2.5, -1.5, 85, 1, 2.75, -1.75, 80, 1);
GO
INSERT INTO [dbo].[tEye]
           ([NIF]
           ,[CONSULTA]
           ,[OD_ESFERA]
           ,[OD_CILINDRO]
           ,[OD_ADICION]
           ,[OD_AGUDEZA]
           ,[OI_ESFERA]
           ,[OI_CILINDRO]
           ,[OI_ADICION]
           ,[OI_AGUDEZA])
     VALUES
           ('11111111A', '11/09/2021', 2.75, -1.5, 85, 1, 3, -1.75, 80, 1);
GO
