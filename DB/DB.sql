USE [master]
GO
/****** Object:  Database [crudmmr]    Script Date: 03/25/2019 23:31:15 ******/
CREATE DATABASE [crudmmr] ON  PRIMARY 
( NAME = N'crudmmr', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\crudmmr.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'crudmmr_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\crudmmr_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [crudmmr] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [crudmmr].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [crudmmr] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [crudmmr] SET ANSI_NULLS OFF
GO
ALTER DATABASE [crudmmr] SET ANSI_PADDING OFF
GO
ALTER DATABASE [crudmmr] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [crudmmr] SET ARITHABORT OFF
GO
ALTER DATABASE [crudmmr] SET AUTO_CLOSE ON
GO
ALTER DATABASE [crudmmr] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [crudmmr] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [crudmmr] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [crudmmr] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [crudmmr] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [crudmmr] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [crudmmr] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [crudmmr] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [crudmmr] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [crudmmr] SET  ENABLE_BROKER
GO
ALTER DATABASE [crudmmr] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [crudmmr] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [crudmmr] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [crudmmr] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [crudmmr] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [crudmmr] SET READ_COMMITTED_SNAPSHOT ON
GO
ALTER DATABASE [crudmmr] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [crudmmr] SET  READ_WRITE
GO
ALTER DATABASE [crudmmr] SET RECOVERY SIMPLE
GO
ALTER DATABASE [crudmmr] SET  MULTI_USER
GO
ALTER DATABASE [crudmmr] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [crudmmr] SET DB_CHAINING OFF
GO
USE [crudmmr]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 03/25/2019 23:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 03/25/2019 23:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201903180655337_AutomaticMigration', N'CrudApplication.Migrations.Configuration', 0x1F8B0800000000000400ED5C5B8FE3B6157E2FD0FF20E8A92D26F65CBA8BEDC04E30994B3AE8CE25EBD9A06F0B5AA23DC24A942352931914F96579C84FEA5F282951B27893285BB6E4220810AC25F23B87871FC9C3A373E6BFBFFD3EF9EE350A9D1798E0204653F76474EC3A1079B11FA0E5D44DC9E29B0FEE77DFFEF94F936B3F7A757E2ADA9DB176B427C253F79990D5F9788CBD6718013C8A022F8971BC20232F8EC6C08FC7A7C7C7FF189F9C8C2185702996E34C3EA5880411CC7ED09F9731F2E08AA420BC8B7D1862FE9CBE9965A8CE3D88205E010F4EDDCB24F52F56AB30F000A1BA8CF21EAE731106806A3383E1C275004231C9DE9F7FC6704692182D672BFA00844F6F2B48DB2D4088211FC3F9BAB9ED708E4FD970C6EB8E0594976212472D014FCEB87DC672F78DACEC96F6A316BCA696266F6CD49915A7EE6312FBA9475C4796757E1926AC9DC9C623DEF3C891DE1F95C4A0FC61FFD1166948D2044E114C4902C223E7319DD3E6FF826F4FF15788A6280DC3AA9A5451FA4E78401F51812B9890B74F70C195BFF55D672CF61BCB1DCB6E953EF9B86E11393B759D7B2A1CCC4358B2A06283198913F80344300104FA8F801098208601333B2AD22559ECFF85344A3BBA8A5CE70EBC7E8468499EA7EE295D3637C12BF48B075C81CF28A06B8EF621490A350AD60B7D4C02AF4E2AFDA795D87A293FB2D1772A63325E93B396B285F53FC521ACE3ED5DB92A2EF0EA1E9251D1719443DE2414EE9738F93AAA221E39D6FDD64C3FB565FAD9C97C71F6E1DD7BE09FBDFF3B3C7BB77FD66B66EBE4F4C32E88D8C4FE77EF3B917A0F5E826536F5927CBAD727F428F804C3EC2D7E0E56F98920CCF717DEEC268923F65BE457FEF6CB2C4E936C51C5C6264F205942B225A51954F7B42E50874F6DA6A94A6F6D5336A04D56422162DFABA1D077B772AD1937A3B44AF106C77EDEF18F537FF37D6F27A7FE6D049610F775245788C0D6D706B492100E975FFBDB51AE2310841D1CB01652E8956C1124112C47F97D4CB73380DA3BA700637ABEF8FF04F879E73EEA0C7A6942894AB7AC68B573698FCF3182F7693467FCDF9FACCEA6E6E997F8067874EBBB46ACD7D6781F63EF6B9C926BE45FD16DF433F10A40F6F32988EC013A51E7C2F320C63794CCD0BF8C53449A0E847A38B649F5EDE05E862088F41EAEB49D7E299AAEBD5C7D0BC5D33534D379BB75AA7E8C9701B253B5686A56356FD1A82A6FD656550666A7296F6956346BD0A867DEAAB3FB433643DD5F2032D8E1DF2086EE1CF675FDC8A68F09DDF9D99449FA098469D7A2365A0DD926D0FD6AC86087BF1A3235E9E397C0675E89C5B5BA684CE1ADDAEB6FECCD6B4ED26CDFCB4118E6BE85EF670F302D970B8C632FC8568126A0CAC361A2FED487739A6363F968E4F81A1D18257AC08E3CFA848ECD9549F580AE600809742EBCFC1BC925C01EF05533D201F92D142B4E548D62EB389BA8DCDF149994E930619D00BB0461BA520344D46511202F5881B0D14A524FCB238C8DBD9421BFB9822B8898C0464BD808D787D59802A51C69529A2C34195718574F4483D76A9AF32617763DEF4A7C622F9C6CF09D0DBCE4FEDB4E88596FB13D90B3DE24360A1843C47D1094DF556C09205F5C864650E9C664202877A9F64250D1623D105434C9C11134BFA2DACEBF745F1D1A3DC58BF2FE8FF55A73F5C04DC11E03A366EE7BD23E84F680894ACFAB397B095F75A927544F7E3FC3DCD59529C2C0679088492CD875D62E2FA74699DF32AE87E0B11CA5BFE8CA3680C83CAC035C73B501B4F852A720152F1AFAF3EFDB4A77654DB7185C114EAC1D1D77645AC016A1BF5A587EFC48B0151AAAD8D5EFFC9586E66C00797D585D80CA91956C52D699D57DA582A32194BC7F8A03B7308A2934AC1AC6C61D6FE3905706C627A3C6400DCEB3C148C5603AB75241CD662BE97CC2365EE15656923C3883958AC1746E25CED1662369FC92169EC9562612BD888E165B116C290FBCF2DD649C67ADF20793B121BD75720756AB002D2BE9AEFC8933E3B9AEDFCCDA27804639C6D8C39A3CD052DB52128913B084D25B2A9A6A7A1324985C0102E680859A2EFD4869A63DDE0DDB7F21523AC1D5792C8E82A203FB378F34D726A66A3C220E7143C71831B72A8BE5571860ECE9B0DC63108244F3E5E0320ED308991D3C73EFFCFB61B57FFEC41E81E77A5621F8237B8C2C93B38AF0A3FA152367AE643EC58954E64A71F5C5B9B7628669A7684D0BC1936BCF8DFAEE7D13A4A7C951B7CC0E27AAF490379F2C3384C9E4C515A96A74D3B5C98C524451AB28A6C86A6F93C7EF0F1DCC981EC9629E4C1DFB5E4E46F93CCB4ED0813F1BCCBC9AAE30ADA755BE21B69FDF4684DD4C34CF8CAB02F0472D312AC9550A58E55D8B035BC87F13CE6DE18D3DA294E45685945EB5D0B29ACA2628597DB1119EC1A2FA16F612D4E4B52ABAFAD61E5993C65685D6BCDE005BA3B3FCCE1E5593E95605D6BCB6C75EA7BDC907E4803D1363DC622BD7240F6F6DE79B183076B32B76E3DA541289AA4095C72DB178AA9002C69F0F9251C618CF568CCA239BDB31CA8061DE8184341C7103AACD1D32630AB935E2D5B426B7C88CD78EB73B658712E6919B94D2CB708F14D699F0108B4569B31C73C99BB84E61467AC0BF6102A3116B309AFD1C5E860164DB79D1E00EA0600131C9F3C9DCD3E3E30F5265F470AA94C718FBA12644A5295516A76B0F59A101336A63DEE716D591E80524DE3348943AA16D4A7F0BD0BF44E0F5AF55A896E5BD2D70362BE1DDFB7C6ACD9DE5DC753287CAE7CC5BE4C3D7A9FB9FACD779169666FFCA1E1F39B7F8330A7E4EE98B276A50E757B586A09B8A3F8B1AD352D15F0FA278D3DEE4B7FFFE92773D721E12BA339E3BC792A137997EB1A4B3953679D72DB4695BE8F9C7A6695459A89CDCC56E571B0539A80D4F2839D44F80B8616D5E61380F4827D5855B1D83DA0AC2AD103555825DE17562425315E02658C60A409FFE24590560BBC1EA2B023751CD580D986D5B5BD602DA9F0445CF1E5D014D08E2608F8761B9074AC9D5560B5D2DABDAA5635E573AB59D97786025499D1D9D9A8AA3CEB0FBE4FDCECB8C865259B4BE37F55B50B4CF1AA29A4FF0FF57A543034876D764CEF65F20B46FAE99BEA90CBCCAA25D19D0C0C8C68FF9FE8B7DF64D36D3E7968193AD5549CFC0B8D6D7F9D933D3AC8FD0DE0B74D4445F795AB59537758537F9672B7AE99FC774EA733F725DB063591D9273431122BED649CAFF2E833E9DDB246C4D46A3C07513B350731EB92CB8B1C44727C4B2FC4759F48A10A545FD90DAD9913B2BB586E46DEAC51A2A3BEA64F3B3AB56366F532FDB502FD147CD91B662415747D6B007D725CB1E528D9130928692B6267FBB3649E7904A8A3A318AB07A0C7926875341D48949BA5C3A2D2A86D494117AEE57FE663EF53D70B05C43B0BFA08FA0279CF8659B5BB4880BC743D2A868224597EE20013E75072E12122C8047E86B163CCFFE684D1690649F70E6D0BF450F2959A5840E1946F35008D63107A64E7E561625EA3C7958B15FB88B21503503F6D1E1017D9F06A15FEA7DA3896719209867C443D56C2E090B592FDF4AA4FB18590271F3950EDD138C562105C30F68065EE026BA51FA7D844BE0BDADA3972690E68910CD3EB90AC0320111E618EBFEF427E5B01FBD7EFB3F251F954D3A620000, N'6.2.0-61023')
/****** Object:  Table [dbo].[Status]    Script Date: 03/25/2019 23:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Images] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Status] ON
INSERT [dbo].[Status] ([Id], [Name], [Images]) VALUES (1, N'active ', NULL)
INSERT [dbo].[Status] ([Id], [Name], [Images]) VALUES (2, N'inactive ', NULL)
SET IDENTITY_INSERT [dbo].[Status] OFF
/****** Object:  Table [dbo].[Products]    Script Date: 03/25/2019 23:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Price] [nvarchar](max) NULL,
	[Qty] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([Id], [Name], [Price], [Qty]) VALUES (1, N'Kiosk', N'1200', N'4')
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 03/25/2019 23:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers] 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 03/25/2019 23:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 03/25/2019 23:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 03/25/2019 23:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]    Script Date: 03/25/2019 23:31:17 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]    Script Date: 03/25/2019 23:31:17 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]    Script Date: 03/25/2019 23:31:17 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]    Script Date: 03/25/2019 23:31:17 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
