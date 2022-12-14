USE [master]
GO
/****** Object:  Database [Estacionamiento]    Script Date: 8/19/2022 7:41:35 PM ******/
CREATE DATABASE [Estacionamiento]
GO

ALTER DATABASE [Estacionamiento] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Estacionamiento].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Estacionamiento] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Estacionamiento] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Estacionamiento] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Estacionamiento] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Estacionamiento] SET ARITHABORT OFF 
GO
ALTER DATABASE [Estacionamiento] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Estacionamiento] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Estacionamiento] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Estacionamiento] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Estacionamiento] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Estacionamiento] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Estacionamiento] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Estacionamiento] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Estacionamiento] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Estacionamiento] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Estacionamiento] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Estacionamiento] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Estacionamiento] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Estacionamiento] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Estacionamiento] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Estacionamiento] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Estacionamiento] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Estacionamiento] SET RECOVERY FULL 
GO
ALTER DATABASE [Estacionamiento] SET  MULTI_USER 
GO
ALTER DATABASE [Estacionamiento] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Estacionamiento] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Estacionamiento] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Estacionamiento] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Estacionamiento] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Estacionamiento', N'ON'
GO
ALTER DATABASE [Estacionamiento] SET QUERY_STORE = OFF
GO
USE [Estacionamiento]
GO
/****** Object:  Synonym [dbo].[JSONVALUE]    Script Date: 8/19/2022 7:41:37 PM ******/
CREATE SYNONYM [dbo].[JSONVALUE] FOR [master].[dbo].[JSONVALUE]
GO
/****** Object:  Table [dbo].[tbl_RegistroVehiculos]    Script Date: 8/19/2022 7:41:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_RegistroVehiculos](
	[IdRegistro] [int] IDENTITY(1,1) NOT NULL,
	[NumPlaca] [varchar](30) NULL,
	[Tipo] [varchar](30) NULL,
	[Entrada] [datetime] NULL,
	[Salida] [datetime] NULL,
	[Importe] [float] NULL,
	[TiempoMin] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TiposVehiculos]    Script Date: 8/19/2022 7:41:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TiposVehiculos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TipoVehiculo] [varchar](50) NULL,
	[Importe] [float] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_RegistroVehiculos] ON 

INSERT [dbo].[tbl_RegistroVehiculos] ([IdRegistro], [NumPlaca], [Tipo], [Entrada], [Salida], [Importe], [TiempoMin]) VALUES (1, N'AA-11-22-A', N'Residentes', CAST(N'2022-08-19T09:26:49.563' AS DateTime), NULL, NULL, 190)
INSERT [dbo].[tbl_RegistroVehiculos] ([IdRegistro], [NumPlaca], [Tipo], [Entrada], [Salida], [Importe], [TiempoMin]) VALUES (2, N'BB-11-22-B', N'Oficiales', CAST(N'2022-08-19T11:12:32.187' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tbl_RegistroVehiculos] ([IdRegistro], [NumPlaca], [Tipo], [Entrada], [Salida], [Importe], [TiempoMin]) VALUES (3, N'QWS-14W-22A', N'No Residentes', CAST(N'2022-08-19T11:26:36.130' AS DateTime), NULL, NULL, 82)
INSERT [dbo].[tbl_RegistroVehiculos] ([IdRegistro], [NumPlaca], [Tipo], [Entrada], [Salida], [Importe], [TiempoMin]) VALUES (4, N'32A-AG3-SS2', N'Residentes', CAST(N'2022-08-19T11:26:55.423' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tbl_RegistroVehiculos] ([IdRegistro], [NumPlaca], [Tipo], [Entrada], [Salida], [Importe], [TiempoMin]) VALUES (6, N'31A-5G3-F31', N'No Residentes', CAST(N'2022-08-19T12:49:48.627' AS DateTime), NULL, NULL, 226)
INSERT [dbo].[tbl_RegistroVehiculos] ([IdRegistro], [NumPlaca], [Tipo], [Entrada], [Salida], [Importe], [TiempoMin]) VALUES (7, N'AYA-2S7-5Y4', N'Residentes', CAST(N'2022-08-19T12:50:14.050' AS DateTime), NULL, NULL, 200)
INSERT [dbo].[tbl_RegistroVehiculos] ([IdRegistro], [NumPlaca], [Tipo], [Entrada], [Salida], [Importe], [TiempoMin]) VALUES (9, N'AA-11-22-A', N'Residentes', CAST(N'2022-08-19T16:35:46.603' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tbl_RegistroVehiculos] ([IdRegistro], [NumPlaca], [Tipo], [Entrada], [Salida], [Importe], [TiempoMin]) VALUES (10, N'BB-11-22-4', N'Visita', CAST(N'2022-08-19T18:38:34.087' AS DateTime), NULL, NULL, 14)
INSERT [dbo].[tbl_RegistroVehiculos] ([IdRegistro], [NumPlaca], [Tipo], [Entrada], [Salida], [Importe], [TiempoMin]) VALUES (11, N'PMK7754', N'Visita', CAST(N'2022-08-19T13:40:03.597' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tbl_RegistroVehiculos] ([IdRegistro], [NumPlaca], [Tipo], [Entrada], [Salida], [Importe], [TiempoMin]) VALUES (12, N'PMA1359', N'Oficial', CAST(N'2022-08-19T13:40:03.597' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tbl_RegistroVehiculos] ([IdRegistro], [NumPlaca], [Tipo], [Entrada], [Salida], [Importe], [TiempoMin]) VALUES (13, N'PVP2631', N'No Residentes', CAST(N'2022-08-19T13:40:03.597' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tbl_RegistroVehiculos] ([IdRegistro], [NumPlaca], [Tipo], [Entrada], [Salida], [Importe], [TiempoMin]) VALUES (14, N'HZL3652', N'Residente', CAST(N'2022-08-19T13:40:03.597' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[tbl_RegistroVehiculos] ([IdRegistro], [NumPlaca], [Tipo], [Entrada], [Salida], [Importe], [TiempoMin]) VALUES (15, N'PMG6290', N'Residente', CAST(N'2022-08-19T13:40:03.597' AS DateTime), CAST(N'2022-08-19T19:08:30.307' AS DateTime), NULL, 328)
INSERT [dbo].[tbl_RegistroVehiculos] ([IdRegistro], [NumPlaca], [Tipo], [Entrada], [Salida], [Importe], [TiempoMin]) VALUES (8, N'AA-11-22-A', N'No Residentes', CAST(N'2022-08-19T13:40:03.597' AS DateTime), CAST(N'2022-08-19T19:08:34.440' AS DateTime), 984, 328)
SET IDENTITY_INSERT [dbo].[tbl_RegistroVehiculos] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_TiposVehiculos] ON 

INSERT [dbo].[tbl_TiposVehiculos] ([Id], [TipoVehiculo], [Importe]) VALUES (1, N'Oficiales', 0)
INSERT [dbo].[tbl_TiposVehiculos] ([Id], [TipoVehiculo], [Importe]) VALUES (2, N'Residentes', 1)
INSERT [dbo].[tbl_TiposVehiculos] ([Id], [TipoVehiculo], [Importe]) VALUES (3, N'No Residentes', 3)
INSERT [dbo].[tbl_TiposVehiculos] ([Id], [TipoVehiculo], [Importe]) VALUES (4, N'Visita', 0.5)
SET IDENTITY_INSERT [dbo].[tbl_TiposVehiculos] OFF
GO
/****** Object:  StoredProcedure [dbo].[Estacionamiento]    Script Date: 8/19/2022 7:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Estacionamiento]
	-- Add the parameters for the stored procedure here
	@Operacion varchar(10) = null,
	@NumeroPlaca varchar(30) = null,
	@TipoVehiculo varchar(30) = null,
	@IdRegistroVehiculo int = null,
	@FechaFiltro varchar (30)= null,
	@newTipoV varchar(30) = null,
	@newTarifaV float = null,
	@PlacaFiltro varchar(30) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @varOut datetime = null,
			@varImporte float = null,
			@varTipoVehiculo varchar(30) = null,
			@varTiempoMin float = null
    -- Insert statements for procedure here
	if(@Operacion = '1')
	begin
		select Id,TipoVehiculo from tbl_TiposVehiculos
	end
	if(@Operacion = '1.1')
	begin
		select top(10) IdRegistro,NumPlaca,Tipo,
			   FORMAT(ISNULL(Salida,Entrada),'dd/MM/yyyy hh:mm') as Salida,
			   FORMAT(Entrada,'dd/MM/yyyy hh:mm') as Entrada,
			   ISNULL(TiempoMin,'0') as Tiempo,ISNULL(Importe,'0') as Importe
			from tbl_RegistroVehiculos order by IdRegistro desc

	end
	if(@Operacion = '1.2')
	begin
		select @varTipoVehiculo = Tipo from tbl_RegistroVehiculos
			where IdRegistro = @IdRegistroVehiculo
		
		set @varImporte = (select DATEDIFF(MINUTE,(select Entrada from tbl_RegistroVehiculos where IdRegistro = @IdRegistroVehiculo),GETDATE())) * (select Importe from tbl_TiposVehiculos where TipoVehiculo = @varTipoVehiculo)
		
		set @varTiempoMin = (select DATEDIFF(MINUTE,(select Entrada from tbl_RegistroVehiculos where IdRegistro = @IdRegistroVehiculo),GETDATE()))

		select IdRegistro,NumPlaca,Tipo,Entrada,ISNULL(Salida,GETDATE()) as Salida,@varTiempoMin as TiempoMin,ISNULL(@varImporte, 0) as Tarifa from tbl_RegistroVehiculos
			where IdRegistro = @IdRegistroVehiculo
	end
	if(@Operacion = '1.3')
	begin
		if(@FechaFiltro != '')
		begin
			select IdRegistro,NumPlaca,Tipo,ISNULL(Importe,'0') as Importe,TiempoMin
				from tbl_RegistroVehiculos where Salida <= @FechaFiltro
		end
		else
		begin
			select IdRegistro,NumPlaca,Tipo,ISNULL(Importe,'0') as Importe,TiempoMin
				from tbl_RegistroVehiculos where Salida is not null
		end
		
	end
	if(@Operacion = '1.4')
	begin
		if(@PlacaFiltro != '')
		begin
			select IdRegistro,NumPlaca,Tipo,
			   FORMAT(ISNULL(Salida,Entrada),'dd/MM/yyyy hh:mm') as Salida,
			   FORMAT(Entrada,'dd/MM/yyyy hh:mm') as Entrada,
			   ISNULL(TiempoMin,'0') as Tiempo,ISNULL(Importe,'0') as Importe
				from tbl_RegistroVehiculos where NumPlaca like '%'+@PlacaFiltro+'%' 
		end
		else
		begin
			select IdRegistro,NumPlaca,Tipo,
			   FORMAT(ISNULL(Salida,Entrada),'dd/MM/yyyy hh:mm') as Salida,
			   FORMAT(Entrada,'dd/MM/yyyy hh:mm') as Entrada,
			   ISNULL(TiempoMin,'0') as Tiempo,ISNULL(Importe,'0') as Importe
				from tbl_RegistroVehiculos where NumPlaca like '%'+@PlacaFiltro+'%' 
		end
		
	end
	if(@Operacion = '2')
	begin
		if(select count(*) from tbl_RegistroVehiculos where NumPlaca like'%'+@NumeroPlaca+'%' and Salida is null) !=1
		begin
			insert into tbl_RegistroVehiculos
				(NumPlaca,Tipo,Entrada)
				values
				(@NumeroPlaca,@TipoVehiculo,GETDATE())

			select 'success' as Tipo, 'Vehiculo Registrado' as Mensaje
			return;
		end
		select 'error' as Tipo, 'El Vehiculo aun no registra su salida' as Mensaje
		
	end
	if(@Operacion = '2.1')
	begin
		select @varTipoVehiculo = Tipo from tbl_RegistroVehiculos
			where IdRegistro = @IdRegistroVehiculo
		
		set @varTiempoMin = (select DATEDIFF(MINUTE,(select Entrada from tbl_RegistroVehiculos where IdRegistro = @IdRegistroVehiculo),GETDATE()))

		set @varImporte = @varTiempoMin * (select Importe from tbl_TiposVehiculos where TipoVehiculo = @varTipoVehiculo)
		
		update tbl_RegistroVehiculos
			set Salida = GETDATE(),
				Importe = @varImporte,
				TiempoMin = @varTiempoMin
			where IdRegistro = @IdRegistroVehiculo

		select 'success' as Tipo, 'Salida del Vehiculo Registrada' as Mensaje
	end
	if(@Operacion = '2.2')
	begin
		if(select count(*) from tbl_TiposVehiculos where TipoVehiculo like '%'+@newTipoV+'%') != 1
		begin
			insert into tbl_TiposVehiculos values (@newTipoV,@newTarifaV)
			select 'success' as Tipo, 'Nuevo Tipo de Vehiculo agregado' as Mensaje
			return;
		end
		select 'error' as Tipo, 'Ya existe una tarifa para ese tipo de vehiculo' as Mensaje
	end
END
GO
USE [master]
GO
ALTER DATABASE [Estacionamiento] SET  READ_WRITE 
GO
