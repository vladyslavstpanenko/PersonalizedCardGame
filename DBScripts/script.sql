USE [DBCardGame]
GO
/****** Object:  Table [dbo].[ActionType]    Script Date: 12/12/2020 10:18:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](15) NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_ActionType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameHashTemp]    Script Date: 12/12/2020 10:18:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameHashTemp](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GameCode] [nvarchar](25) NULL,
	[GameHash] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[GamePlayerHash] [nvarchar](max) NULL,
 CONSTRAINT [PK_GameHashTemp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameLog]    Script Date: 12/12/2020 10:18:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GameId] [bigint] NULL,
	[PlayerId] [bigint] NULL,
	[Action] [nvarchar](250) NULL,
	[Created] [datetime] NULL,
	[Amount] [bigint] NULL,
 CONSTRAINT [PK_GameLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Player]    Script Date: 12/12/2020 10:18:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Player](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PlayerUniqueId] [nvarchar](150) NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[IsActive] [bit] NULL,
	[SignalRConnectionId] [nvarchar](150) NULL,
	[IsConnected] [bit] NULL,
	[CurrentGameCode] [nvarchar](25) NULL,
	[CurrentGameId] [bigint] NULL,
	[PlayerSno] [int] NULL,
	[IsDealer] [bit] NULL,
	[IsCurrent] [bit] NULL,
	[LastActionTime] [datetime] NULL,
	[IsFolded] [bit] NULL,
	[IsSitOut] [bit] NULL,
 CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayerAction]    Script Date: 12/12/2020 10:18:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayerAction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GameId] [bigint] NULL,
	[PlayerId] [bigint] NULL,
	[Action] [int] NULL,
	[Amount] [bigint] NULL,
	[BeforeStatus] [nvarchar](20) NULL,
	[AfterStatus] [nvarchar](20) NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[Round] [int] NULL,
	[Hand] [int] NULL,
 CONSTRAINT [PK_PlayerAction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayerCard]    Script Date: 12/12/2020 10:18:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayerCard](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PlayerId] [bigint] NULL,
	[GameId] [bigint] NULL,
	[PlayerCardHash] [bigint] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
 CONSTRAINT [PK_Table8] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
