

use [asp.net]
CREATE TABLE [dbo].[tbl_adv](
	[PK_AdvID] [int] NOT NULL,
	[C_Name] [nvarchar](2000) NULL,
	[C_Des] [ntext] NULL,
	[C_Img] [nvarchar](2000) NULL,
	[C_Url] [nvarchar](2000) NULL,
	[FK_LangID] [int] NULL,
	[C_Place] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Page] [int] NULL,
	[C_Width] [int] NULL,
	[C_Height] [int] NULL,
	[C_Video] [ntext] NULL,
	[C_IsImages] [int] NULL,
	[C_IsFlash] [int] NULL,
	[C_IsVideo] [int] NULL,
	[C_Music] [ntext] NULL,
	[C_IsMusic] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_category_news]    Script Date: 7/9/2017 12:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_category_news](
	[PK_CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[FK_ParentID] [int] NULL,
	[FK_LangID] [int] NOT NULL,
	[C_Name] [nvarchar](500) NULL,
	[C_Des] [ntext] NULL,
	[C_Url] [nvarchar](500) NULL,
	[C_Product] [int] NULL,
	[C_PointUrl] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Granite] [int] NULL,
	[C_MenuNgang] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_category_nhaxuong]    Script Date: 7/9/2017 12:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_category_nhaxuong](
	[PK_CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[C_Name] [nvarchar](500) NULL,
	[C_Des] [ntext] NULL,
	[FK_LangID] [int] NOT NULL,
	[C_Active] [int] NOT NULL,
	[C_Rank] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_category_product]    Script Date: 7/9/2017 12:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_category_product](
	[PK_CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[FK_ParentID] [int] NULL,
	[FK_LangID] [int] NOT NULL,
	[C_Name] [nvarchar](500) NULL,
	[C_Des] [ntext] NULL,
	[C_Url] [nvarchar](500) NULL,
	[C_Product] [int] NULL,
	[C_PointUrl] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Granite] [int] NULL,
	[C_MenuNgang] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_granit]    Script Date: 7/9/2017 12:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_granit](
	[PK_GranitID] [int] IDENTITY(1,1) NOT NULL,
	[FK_CategoryID] [int] NULL,
	[C_Name] [nvarchar](4000) NULL,
	[C_Des] [ntext] NULL,
	[C_Img] [nvarchar](500) NULL,
	[FK_LangID] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_groupmember]    Script Date: 7/9/2017 12:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_groupmember](
	[PK_GroupMemberID] [int] IDENTITY(1,1) NOT NULL,
	[C_Name] [nvarchar](500) NULL,
	[C_Des] [ntext] NULL,
	[FK_LangID] [int] NULL,
	[C_System] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Add] [int] NULL,
	[C_Edit] [int] NULL,
	[C_Del] [int] NULL,
	[C_Lock] [int] NULL,
	[C_View] [int] NULL,
	[C_ProcessLock] [int] NULL,
	[C_ProcessUnLock] [int] NULL,
	[C_ProcessDel] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_menu]    Script Date: 7/9/2017 12:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_menu](
	[PK_MenuID] [int] IDENTITY(1,1) NOT NULL,
	[FK_ParentID] [int] NULL,
	[FK_LangID] [int] NULL,
	[C_Name] [nvarchar](500) NULL,
	[C_Icon] [nvarchar](200) NULL,
	[C_Url] [nvarchar](2000) NULL,
	[C_Active] [int] NOT NULL,
	[C_Rank] [int] NULL,
	[C_Add] [int] NULL,
	[C_Edit] [int] NULL,
	[C_Del] [int] NULL,
	[C_Lock] [int] NOT NULL,
	[C_BackEnd] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_news]    Script Date: 7/9/2017 12:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_news](
	[PK_NewsID] [int] IDENTITY(1,1) NOT NULL,
	[FK_CategoryID] [int] NULL,
	[FK_LangID] [int] NULL,
	[C_Name] [nvarchar](500) NULL,
	[C_Des] [ntext] NULL,
	[C_Content] [ntext] NULL,
	[C_Hot] [int] NULL,
	[C_Img] [nvarchar](500) NULL,
	[C_Create] [datetime] NULL,
	[C_Author] [nvarchar](500) NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Attach] [nvarchar](500) NULL,
	[C_Download] [int] NULL,
	[C_SupperHot] [int] NULL,
	[C_Tieudiem] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_nhaxuong]    Script Date: 7/9/2017 12:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_nhaxuong](
	[PK_NhaxuongID] [int] IDENTITY(1,1) NOT NULL,
	[FK_CategoryID] [int] NULL,
	[FK_LangID] [int] NULL,
	[C_Name] [nvarchar](4000) NULL,
	[C_Des] [ntext] NULL,
	[C_Content] [ntext] NULL,
	[C_Hot] [int] NULL,
	[C_Img] [nvarchar](500) NULL,
	[C_Create] [datetime] NULL,
	[C_Author] [nvarchar](500) NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Attach] [nvarchar](4000) NULL,
	[C_Download] [int] NULL,
	[C_SupperHot] [int] NULL,
	[C_Tieudiem] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_permission]    Script Date: 7/9/2017 12:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_permission](
	[PK_PermissionID] [int] IDENTITY(1,1) NOT NULL,
	[FK_MenuID] [int] NULL,
	[FK_GroupMemberID] [int] NULL,
	[C_Change] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_product]    Script Date: 7/9/2017 12:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_product](
	[PK_ProductID] [int] IDENTITY(1,1) NOT NULL,
	[FK_CategoryID] [int] NULL,
	[C_Name] [nvarchar](4000) NULL,
	[C_Des] [ntext] NULL,
	[C_Img] [nvarchar](500) NULL,
	[FK_LangID] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Code] [nvarchar](100) NULL,
	[C_Price] [decimal](18, 0) NULL,
	[C_Create] [datetime] NULL,
	[C_Hot] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_product_price]    Script Date: 7/9/2017 12:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_product_price](
	[PK_ProductPriceID] [int] IDENTITY(1,1) NOT NULL,
	[C_Name] [nvarchar](4000) NULL,
	[C_Des] [ntext] NULL,
	[FK_LangID] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Attach] [nvarchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_resquest]    Script Date: 7/9/2017 12:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_resquest](
	[PK_ResquestID] [int] IDENTITY(1,1) NOT NULL,
	[C_Name] [nvarchar](255) NULL,
	[C_Mobile] [nvarchar](50) NULL,
	[C_Email] [nvarchar](255) NULL,
	[C_Address] [nvarchar](255) NULL,
	[C_Content] [ntext] NULL,
	[C_Rank] [int] NULL,
	[C_Status] [int] NULL,
	[C_Create] [datetime] NULL,
	[FK_ProductID] [int] NULL,
	[FK_LangID] [int] NULL,
	[C_Active] [int] NULL,
 CONSTRAINT [PK_tbl_resquest] PRIMARY KEY CLUSTERED 
(
	[PK_ResquestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_siteinfo]    Script Date: 7/9/2017 12:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_siteinfo](
	[SiteInfoID] [int] NOT NULL,
	[Email] [nvarchar](500) NULL,
	[Counter] [int] NULL,
	[Contact] [ntext] NULL,
	[Footer] [ntext] NULL,
	[Yahoo1] [nvarchar](500) NULL,
	[Yahoo2] [nvarchar](500) NULL,
	[Skype1] [nvarchar](500) NULL,
	[Skype2] [nvarchar](500) NULL,
	[Congty] [nvarchar](500) NULL,
	[Diachi] [nvarchar](500) NULL,
	[Dienthoai] [nvarchar](500) NULL,
	[Mobile] [nvarchar](500) NULL,
	[TieudeGioithieu] [nvarchar](500) NULL,
	[Gioithieu1] [ntext] NULL,
	[Gioithieu2] [ntext] NULL,
	[FK_LangID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_slide]    Script Date: 7/9/2017 12:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_slide](
	[PK_SlideID] [int] IDENTITY(1,1) NOT NULL,
	[C_Name] [nvarchar](4000) NULL,
	[C_Des] [ntext] NULL,
	[C_Img] [nvarchar](500) NULL,
	[FK_LangID] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[FK_CategoryID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 7/9/2017 12:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[PK_UserID] [int] IDENTITY(1,1) NOT NULL,
	[C_UserName] [nvarchar](255) NULL,
	[C_UserPass] [nvarchar](2000) NULL,
	[FK_LangID] [int] NULL,
	[C_FullName] [nvarchar](2000) NULL,
	[C_Email] [nvarchar](255) NULL,
	[C_Sex] [int] NULL,
	[C_Des] [ntext] NULL,
	[C_Birth] [nvarchar](50) NULL,
	[C_Add] [nvarchar](500) NULL,
	[C_Phone] [nvarchar](50) NULL,
	[C_Mobile] [nvarchar](50) NULL,
	[C_Company] [nvarchar](500) NULL,
	[C_Image] [nvarchar](500) NULL,
	[C_Permission] [int] NULL,
	[C_Active] [int] NULL,
	[C_Rank] [int] NULL,
	[C_Change] [int] NULL,
	[C_ActiveCode] [nvarchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user_groupmember]    Script Date: 7/9/2017 12:50:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user_groupmember](
	[PK_ID] [int] IDENTITY(1,1) NOT NULL,
	[FK_UserID] [int] NULL,
	[FK_GroupMemberID] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (1, N'1', N'', N'data/images/adv/29_06_2011_14581_317.png', N'#', 1, 3, 1, 1, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (2, N'2', N'', N'data/images/adv/29_06_2011_145816_605.png', N'#', 1, 3, 1, 2, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (3, N'3', N'', N'data/images/adv/29_06_2011_145828_692.png', N'#', 1, 3, 1, 3, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (4, N'4', N'', N'data/images/adv/29_06_2011_145847_943.png', N'#', 1, 3, 1, 4, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (5, N'5', N'', N'data/images/adv/29_06_2011_14593_932.png', N'#', 1, 3, 1, 5, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (6, N'6', N'', N'data/images/adv/29_06_2011_145917_923.png', N'#', 1, 3, 1, 6, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (7, N'7', N'', N'data/images/adv/29_06_2011_145932_217.png', N'#', 1, 3, 1, 7, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (8, N'adv 1', N'', N'data/images/adv/30_06_2011_093845_132.png', N'#', 1, 1, 1, 8, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (9, N'adv 2', N'', N'data/images/adv/30_06_2011_093928_369.jpg', N'#', 1, 1, 1, 9, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (10, N'adv 3', N'', N'data/images/adv/30_06_2011_093941_739.jpg', N'#', 1, 1, 1, 10, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (11, N'adv 4', N'', N'data/images/adv/30_06_2011_094026_340.png', N'#', 1, 2, 1, 11, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (12, N'adv 6', N'', N'data/images/adv/30_06_2011_094040_937.png', N'#', 1, 2, 1, 12, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (13, N'1', N'', N'data/images/adv/30_06_2011_094345_254.GIF', N'#', 1, 2, 1, 13, 1, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (14, N'2', N'', N'data/images/adv/30_06_2011_094358_757.jpg', N'#', 1, 1, 1, 14, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (15, N'3', N'', N'data/images/adv/30_06_2011_094431_68.JPG', N'#', 1, 1, 1, 15, 0, NULL, NULL, N'0', 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (16, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 0, NULL, 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (17, N'Banner', N'', N'data/images/adv/15_07_2011_14385_297.swf', NULL, 1, 4, 0, 17, 1, 930, 122, NULL, 0, 1, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (18, N'Banner 1', N'', N'data/images/adv/15_07_2011_144140_11.jpg', N'#', 1, 4, 1, 18, 1, 0, 0, NULL, 1, 0, 0, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (19, N'Video', N'', NULL, NULL, 1, 2, 1, 19, 1, 0, 0, N'&lt;p&gt;&lt;iframe width=&#34;200&#34; height=&#34;250&#34; frameborder=&#34;0&#34; allowfullscreen=&#34;&#34; src=&#34;http://www.youtube.com/embed/kyYXDf4oQVE&#34;&gt;&lt;/iframe&gt;&lt;/p&gt;', 0, 0, 1, NULL, 0)
INSERT [dbo].[tbl_adv] ([PK_AdvID], [C_Name], [C_Des], [C_Img], [C_Url], [FK_LangID], [C_Place], [C_Active], [C_Rank], [C_Page], [C_Width], [C_Height], [C_Video], [C_IsImages], [C_IsFlash], [C_IsVideo], [C_Music], [C_IsMusic]) VALUES (20, N'123', N'&lt;p&gt;2&lt;/p&gt;', NULL, NULL, 1, 1, 1, 20, 1, 0, 0, NULL, 0, 0, 0, N'&lt;p&gt;1&lt;/p&gt;', 1)
SET IDENTITY_INSERT [dbo].[tbl_category_news] ON 

INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (36, 0, 1, N'Khuyến Mại', N'', N'', 0, 0, 1, 36, 0, 1)
INSERT [dbo].[tbl_category_news] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (44, 0, 1, N'Giới thiệu', N'', N'', 0, 0, 1, 44, 0, 1)
SET IDENTITY_INSERT [dbo].[tbl_category_news] OFF
SET IDENTITY_INSERT [dbo].[tbl_category_nhaxuong] ON 

INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (1, N'Hoà Bình', NULL, 1, 1, 1)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (2, N'Sơn La', NULL, 1, 1, 2)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (3, N'Quảng Ninh', NULL, 1, 1, 3)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (4, N'Hải Phòng', NULL, 1, 1, 4)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (5, N'Hưng Yên', NULL, 1, 1, 5)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (6, N'Lai Châu', NULL, 1, 1, 6)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (7, N'Hải Dương', NULL, 1, 1, 7)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (8, N'Lạng Sơn', NULL, 1, 1, 8)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (9, N'Cao Bằng', NULL, 1, 1, 9)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (10, N'Nghệ An', NULL, 1, 1, 10)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (11, N'Lào cai', NULL, 1, 1, 11)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (12, N'Bắc Giang', NULL, 1, 1, 12)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (13, N'Hà Giang', NULL, 1, 1, 13)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (14, N'Tuyên Quang', NULL, 1, 1, 14)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (15, N'Thái Nguyên', NULL, 1, 1, 15)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (16, N'Thái Bình', NULL, 1, 1, 16)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (17, N'Hà Tây', NULL, 1, 1, 17)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (18, N'Hà Nam', NULL, 1, 1, 18)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (19, N'Bắc Kạn', NULL, 1, 1, 19)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (20, N'Hà Nội', NULL, 1, 1, 20)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (21, N'Phú Thọ', NULL, 1, 1, 21)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (22, N'Quảng Bình', NULL, 1, 1, 22)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (23, N'Bắc Ninh', NULL, 1, 1, 23)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (24, N'Hà Tĩnh', NULL, 1, 1, 24)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (25, N'Quảng Trị', NULL, 1, 1, 25)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (26, N'Thanh Hoá', NULL, 1, 1, 26)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (27, N'Yên Bái', NULL, 1, 1, 27)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (28, N'Điện Biên', NULL, 1, 1, 28)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (29, N'Bà Rịa - Vũng Tàu', NULL, 1, 1, 29)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (30, N'Bình Dương', NULL, 1, 1, 30)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (31, N'Bình Phước', NULL, 1, 1, 31)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (32, N'Bình Thuận', NULL, 1, 1, 32)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (33, N'Long An', NULL, 1, 1, 33)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (34, N'Ninh Thuận', NULL, 1, 1, 34)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (35, N'Đồng Nai', NULL, 1, 1, 35)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (36, N'Tiền Giang', NULL, 1, 1, 36)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (37, N'Thành phố. Hồ Chí Minh', NULL, 1, 1, 37)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (38, N'An Giang', NULL, 1, 1, 38)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (39, N'Bạc Liêu', NULL, 1, 1, 39)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (40, N'Bến Tre', NULL, 1, 1, 40)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (41, N'Cà Mau', NULL, 1, 1, 41)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (42, N'Cần Thơ', NULL, 1, 1, 42)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (43, N'Đồng Tháp', NULL, 1, 1, 43)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (44, N'Hậu Giang', NULL, 1, 1, 44)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (45, N'Kiên Giang', NULL, 1, 1, 45)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (46, N'Sóc Trăng', NULL, 1, 1, 46)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (47, N'Trà Vinh', NULL, 1, 1, 47)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (48, N'Vĩnh Long', NULL, 1, 1, 48)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (49, N'Thừa Thiên Huế', NULL, 1, 1, 49)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (50, N'Đà Nẵng', NULL, 1, 1, 50)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (51, N'Quảng Nam', NULL, 1, 1, 51)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (52, N'Quảng Ngãi', NULL, 1, 1, 52)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (53, N'Bình Định', NULL, 1, 1, 53)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (54, N'Phú Yên', NULL, 1, 1, 54)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (55, N'Khánh Hoà', NULL, 1, 1, 55)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (56, N'Hoa Binh', NULL, 2, 1, 56)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (57, N'Son La', NULL, 2, 1, 57)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (58, N'QuangNinh', NULL, 2, 1, 58)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (59, N'Hai Phong', NULL, 2, 1, 59)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (60, N'Hung Yen', NULL, 2, 1, 60)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (61, N'Lai Chau', NULL, 2, 1, 61)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (62, N'Hai Duong', NULL, 2, 1, 62)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (63, N'Lang Son', NULL, 2, 1, 63)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (64, N'Cao Bang', NULL, 2, 1, 64)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (65, N'Nghe An', NULL, 2, 1, 65)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (66, N'Lao Cai', NULL, 2, 1, 66)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (67, N'Bac Giang', NULL, 2, 1, 67)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (68, N'Ha Giang', NULL, 2, 1, 68)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (69, N'Tuyen Quang', NULL, 2, 1, 69)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (70, N'Thai Nguyen', NULL, 2, 1, 70)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (71, N'Thai Binh', NULL, 2, 1, 71)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (72, N'Ha Tay', NULL, 2, 1, 72)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (73, N'Ha Nam', NULL, 2, 1, 73)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (74, N'Bac Kan', NULL, 2, 1, 74)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (75, N'Hanoi', NULL, 2, 1, 75)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (76, N'Phu Tho', NULL, 2, 1, 76)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (77, N'Quang Binh', NULL, 2, 1, 77)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (78, N'Bac Ninh', NULL, 2, 1, 78)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (79, N'Ha Tinh', NULL, 2, 1, 79)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (80, N'Quang Tri', NULL, 2, 1, 80)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (81, N'Thanh Hoa', NULL, 2, 1, 81)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (82, N'Yen Bai', NULL, 2, 1, 82)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (83, N'Dien Bien', NULL, 2, 1, 83)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (84, N'Ba Ria - Vung Tau', NULL, 2, 1, 84)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (85, N'Binh Duong', NULL, 2, 1, 85)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (86, N'Binh Phuoc', NULL, 2, 1, 86)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (87, N'Binh Thuan', NULL, 2, 1, 87)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (88, N'Long An', NULL, 2, 1, 88)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (89, N'Ninh Thuan', NULL, 2, 1, 89)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (90, N'Dong Nai', NULL, 2, 1, 90)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (91, N'Tien Giang', NULL, 2, 1, 91)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (92, N'Ho Chi Minh City', NULL, 2, 1, 92)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (93, N'An Giang', NULL, 2, 1, 93)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (94, N'Bac Lieu', NULL, 2, 1, 94)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (95, N'Ben Tre', NULL, 2, 1, 95)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (96, N'Ca Mau', NULL, 2, 1, 96)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (97, N'Can Tho', NULL, 2, 1, 97)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (98, N'Dong Thap', NULL, 2, 1, 98)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (99, N'Hau Giang', NULL, 2, 1, 99)
GO
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (100, N'Kien Giang', NULL, 2, 1, 100)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (101, N'Sóc Trăng', NULL, 2, 1, 101)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (102, N'Tra Vinh', NULL, 2, 1, 102)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (103, N'Vinh Long', NULL, 2, 1, 103)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (104, N'Thua Thien - Hue', NULL, 2, 1, 104)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (105, N'Da Nang', NULL, 2, 1, 105)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (106, N'Quang Nam', NULL, 2, 1, 106)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (107, N'Quang Ngai', NULL, 2, 1, 107)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (108, N'Binh Dinh', NULL, 2, 1, 108)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (109, N'Phu Yen', NULL, 2, 1, 109)
INSERT [dbo].[tbl_category_nhaxuong] ([PK_CategoryID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank]) VALUES (110, N'Khanh Hoa', NULL, 2, 1, 110)
SET IDENTITY_INSERT [dbo].[tbl_category_nhaxuong] OFF
SET IDENTITY_INSERT [dbo].[tbl_category_product] ON 

INSERT [dbo].[tbl_category_product] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (1, 0, 1, N'Dành cho mẹ', N'', N'', 0, 0, 1, 7, 0, 1)
INSERT [dbo].[tbl_category_product] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (2, 0, 1, N'Dành cho bé', N'', N'', 0, 0, 1, 6, 0, 1)
INSERT [dbo].[tbl_category_product] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (3, 1, 1, N'Thuốc và thực phẩm chức năng', N'', N'', 0, 0, 1, 5, 0, 1)
INSERT [dbo].[tbl_category_product] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (4, 1, 1, N'Mỹ phẩm - Thời trang', N'', N'', 0, 0, 1, 3, 0, 1)
INSERT [dbo].[tbl_category_product] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (5, 1, 1, N'Đồ dùng cá nhân', N'', N'', 0, 0, 1, 4, 0, 1)
INSERT [dbo].[tbl_category_product] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (6, 0, 1, N'Dành cho bố', N'', N'', 0, 0, 1, 2, 0, 1)
INSERT [dbo].[tbl_category_product] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (7, 0, 1, N'Dành cho ông bà', N'', N'', 0, 0, 1, 1, 0, 1)
INSERT [dbo].[tbl_category_product] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (8, 6, 1, N'Đặt hàng theo yêu cầu', N'', N'', 0, 0, 1, 8, 0, 1)
INSERT [dbo].[tbl_category_product] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (9, 6, 1, N'Hàng công nghệ xách tay', N'', N'', 0, 0, 1, 9, 0, 1)
INSERT [dbo].[tbl_category_product] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (10, 6, 1, N'Thuốc và thực phẩm chức năng', N'', N'', 0, 0, 1, 10, 0, 1)
INSERT [dbo].[tbl_category_product] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (11, 2, 1, N'Mỹ phẩm - Thời trang', N'', N'', 0, 0, 1, 11, 0, 1)
INSERT [dbo].[tbl_category_product] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (12, 2, 1, N'Đồ dùng cá nhân', N'', N'', 0, 0, 1, 12, 0, 1)
INSERT [dbo].[tbl_category_product] ([PK_CategoryID], [FK_ParentID], [FK_LangID], [C_Name], [C_Des], [C_Url], [C_Product], [C_PointUrl], [C_Active], [C_Rank], [C_Granite], [C_MenuNgang]) VALUES (13, 2, 1, N'Thuốc và thực phẩm chức năng', N'', N'', 0, 0, 1, 13, 0, 1)
SET IDENTITY_INSERT [dbo].[tbl_category_product] OFF
SET IDENTITY_INSERT [dbo].[tbl_granit] ON 

INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (13, 17, N'GHL3', N'&lt;p&gt;&lt;img alt=&#34;&#34; src=&#34;file:///C:/Users/NAMSON/AppData/Local/Temp/moz-screenshot-4.png&#34; /&gt;Đá trắng&lt;/p&gt;', N'data/images/granit/19_10_2011_161428_262.jpg', 1, 1, 140)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (14, 17, N'GHL4', N'', N'data/images/granit/19_10_2011_161648_395.jpg', 1, 1, 12)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (3, 17, N'GHL2', N'&lt;p&gt;V&agrave;ng x&agrave; cừ&lt;/p&gt;
&lt;p&gt;M&atilde; s&ocirc;́: GHL2&lt;/p&gt;
&lt;p&gt;Gi&aacute; b&aacute;n&lt;/p&gt;
&lt;p&gt;(Gi&aacute; mang t&iacute;nh thời đi&ecirc;̉m. Gọi cho ch&uacute;ng t&ocirc;i đ&ecirc;̉ c&oacute; gi&aacute; ch&iacute;nh x&aacute;c nh&acirc;́t)&lt;/p&gt;', N'data/images/granit/08_10_2011_0880_590.jpg', 1, 1, 147)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (15, 17, N'GHL5', N'', N'data/images/granit/19_10_2011_161713_352.jpg', 1, 1, 13)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (5, 16, N'NTHL1', N'&lt;p&gt;Mã s&ocirc;́:&lt;/p&gt;
&lt;p&gt;Xu&acirc;́t xứ:&lt;/p&gt;
&lt;p&gt;Giá bán:&lt;/p&gt;
&lt;p&gt;(Giá mang tính thời đi&ecirc;̉m. Gọi cho chúng t&ocirc;i đ&ecirc;̉ có giá chính xác nh&acirc;́t)&lt;/p&gt;', N'data/images/granit/19_10_2011_132924_630.jpg', 1, 1, 3)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (22, 45, N'TTHL1', N'', N'data/images/granit/27_10_2011_164217_920.jpg', 1, 1, 19)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (23, 45, N'TTHL2', N'', N'data/images/granit/27_10_2011_164233_391.jpg', 1, 1, 20)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (24, 45, N'TTHL3', N'', N'data/images/granit/27_10_2011_16437_189.jpg', 1, 1, 22)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (25, 45, N'TTHL4', N'', N'data/images/granit/27_10_2011_164323_33.jpg', 1, 1, 23)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (10, 17, N'GHL10', N'', N'data/images/granit/08_10_2011_12813_895.jpg', 1, 1, 5)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (148, 47, N'DSHL1', N'', N'data/images/granit/14_11_2011_085751_926.jpg', 2, 1, 149)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (12, 17, N'GHL1', N'', N'data/images/granit/08_10_2011_12834_95.jpg', 1, 1, 10)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (16, 17, N'GHL6', N'', N'data/images/granit/19_10_2011_161736_99.jpg', 1, 1, 14)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (17, 17, N'GHL67', N'&lt;p&gt;Đỏ Hồng Ngọc&lt;/p&gt;', N'data/images/granit/19_10_2011_16188_120.jpg', 1, 1, 15)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (18, 17, N'GHL7', N'', N'data/images/granit/19_10_2011_161832_77.jpg', 1, 1, 16)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (19, 17, N'GHL8', N'', N'data/images/granit/19_10_2011_16192_499.jpg', 1, 1, 17)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (20, 17, N'GHL9', N'', N'data/images/granit/19_10_2011_161931_10.jpg', 1, 1, 18)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (26, 45, N'TTHL5', N'', N'data/images/granit/27_10_2011_164340_458.jpg', 1, 1, 24)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (27, 45, N'TTHL6', N'', N'data/images/granit/27_10_2011_164357_758.jpg', 1, 1, 25)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (28, 45, N'TTHL7', N'', N'data/images/granit/27_10_2011_164418_118.jpg', 1, 1, 26)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (29, 45, N'TTHL8', N'', N'data/images/granit/27_10_2011_164435_401.jpg', 1, 1, 27)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (30, 45, N'TTHL9', N'', N'data/images/granit/27_10_2011_164450_962.jpg', 1, 1, 28)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (31, 45, N'TTHL10', N'', N'data/images/granit/27_10_2011_16459_917.jpg', 1, 1, 29)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (32, 45, N'TTHL11', N'', N'data/images/granit/27_10_2011_164525_684.jpg', 1, 1, 30)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (33, 45, N'TTHL12', N'', N'data/images/granit/27_10_2011_16478_634.jpg', 1, 1, 31)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (34, 45, N'TTHL13', N'', N'data/images/granit/27_10_2011_16467_49.jpg', 1, 1, 32)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (35, 45, N'TTHL14', N'', N'data/images/granit/27_10_2011_164637_540.jpg', 1, 1, 33)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (36, 45, N'TTHL15', N'', N'data/images/granit/27_10_2011_164738_488.jpg', 1, 1, 34)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (37, 45, N'TTHL16', N'', N'data/images/granit/27_10_2011_164755_589.jpg', 1, 1, 35)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (38, 15, N'MHL2', N'&lt;p&gt;beige jura&lt;/p&gt;', N'data/images/granit/27_10_2011_16539_678.jpg', 1, 1, 36)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (39, 15, N'MHL3', N'', N'data/images/granit/27_10_2011_165330_909.jpg', 1, 1, 37)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (40, 15, N'MHL7', N'&lt;p&gt;cream imperial&lt;/p&gt;', N'data/images/granit/27_10_2011_191037_77.jpg', 1, 1, 38)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (41, 15, N'MHL4', N'&lt;p&gt;cream valencia&lt;/p&gt;', N'data/images/granit/27_10_2011_19112_121.jpg', 1, 1, 39)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (42, 15, N'MHL5', N'&lt;p&gt;cream mafil 2&lt;/p&gt;', N'data/images/granit/27_10_2011_191218_229.jpg', 1, 1, 40)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (43, 15, N'MHL6', N'&lt;p&gt;dark - emperado&lt;/p&gt;', N'data/images/granit/27_10_2011_191432_970.jpg', 1, 1, 41)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (44, 15, N'MHL8', N'&lt;p&gt;den chi xanh&lt;/p&gt;', N'data/images/granit/27_10_2011_191545_164.jpg', 1, 1, 42)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (45, 15, N'MHL9', N'&lt;p&gt;Đen tia chớp&lt;/p&gt;', N'data/images/granit/27_10_2011_191621_260.jpg', 1, 1, 43)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (46, 15, N'MHL10', N'&lt;p&gt;Den tia chop chi do&lt;/p&gt;', N'data/images/granit/27_10_2011_192016_69.jpg', 1, 1, 44)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (47, 15, N'MHL11', N'&lt;p&gt;Giallo-sunny&lt;/p&gt;', N'data/images/granit/27_10_2011_192053_248.jpg', 1, 1, 45)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (48, 15, N'MHL12', N'&lt;p&gt;Guan chi do&lt;/p&gt;', N'data/images/granit/27_10_2011_192117_421.jpg', 1, 1, 46)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (49, 15, N'MHL13', N'&lt;p&gt;Hong rio&lt;/p&gt;', N'data/images/granit/27_10_2011_192143_873.jpg', 1, 1, 47)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (50, 15, N'MHL14', N'&lt;p&gt;hong so&lt;/p&gt;', N'data/images/granit/27_10_2011_192212_350.jpg', 1, 1, 48)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (51, 15, N'MHL15', N'&lt;p&gt;Kem chi do&lt;/p&gt;', N'data/images/granit/27_10_2011_192252_21.jpg', 1, 1, 49)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (52, 15, N'MHL16', N'&lt;p&gt;Kem sua&lt;/p&gt;', N'data/images/granit/27_10_2011_192321_501.jpg', 1, 1, 50)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (53, 15, N'MHL17', N'&lt;p&gt;Kem van go&lt;/p&gt;', N'data/images/granit/27_10_2011_192511_481.jpg', 1, 1, 51)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (54, 15, N'MHL18', N'&lt;p&gt;Kem vo so&lt;/p&gt;', N'data/images/granit/27_10_2011_192649_500.jpg', 1, 1, 52)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (55, 15, N'MHL19', N'&lt;p&gt;Light emperado&lt;/p&gt;', N'data/images/granit/27_10_2011_192750_535.jpg', 1, 1, 53)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (56, 15, N'MHL20', N'&lt;p&gt;Maron emperado&lt;/p&gt;', N'data/images/granit/13_02_2012_174956_14.png', 1, 1, 54)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (57, 15, N'MHL21', N'&lt;p&gt;Nau multicolour&lt;/p&gt;', N'data/images/granit/27_10_2011_192910_490.jpg', 1, 1, 55)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (58, 15, N'MHL22', N'&lt;p&gt;Rainforest&lt;/p&gt;', N'data/images/granit/27_10_2011_192957_996.jpg', 1, 1, 56)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (59, 15, N'MHL23', N'&lt;p&gt;Snow&nbsp; white&lt;/p&gt;', N'data/images/granit/27_10_2011_193039_859.jpg', 1, 1, 57)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (60, 15, N'MHL24', N'&lt;p&gt;Snow white 2&lt;/p&gt;', N'data/images/granit/27_10_2011_193114_278.jpg', 1, 1, 58)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (61, 15, N'MHL25', N'&lt;p&gt;Trang hat gao&lt;/p&gt;', N'data/images/granit/27_10_2011_193149_812.jpg', 1, 1, 59)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (62, 15, N'MHL26', N'&lt;p&gt;Trang hilap&lt;/p&gt;', N'data/images/granit/27_10_2011_193236_547.jpg', 1, 1, 60)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (63, 15, N'MHL27', N'&lt;p&gt;Trắng Volocat&lt;/p&gt;', N'data/images/granit/27_10_2011_193314_800.jpg', 1, 1, 61)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (64, 15, N'MHL28', N'&lt;p&gt;Trang kem&lt;/p&gt;', N'data/images/granit/27_10_2011_19347_251.jpg', 1, 1, 62)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (65, 15, N'MHL29', N'&lt;p&gt;Trang van nui&lt;/p&gt;', N'data/images/granit/27_10_2011_193617_755.jpg', 1, 1, 63)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (66, 15, N'MHL30', N'&lt;p&gt;Vang A Chau&lt;/p&gt;', N'data/images/granit/27_10_2011_193734_347.jpg', 1, 1, 64)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (67, 15, N'MHL31', N'&lt;p&gt;Vang Ai Cap&lt;/p&gt;', N'data/images/granit/27_10_2011_193820_16.jpg', 1, 1, 65)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (68, 15, N'MHL32', N'&lt;p&gt;Vang Grojo&lt;/p&gt;', N'data/images/granit/27_10_2011_193927_655.jpg', 1, 1, 66)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (69, 15, N'MHL33', N'&lt;p&gt;Vang nero&lt;/p&gt;', N'data/images/granit/27_10_2011_194025_274.jpg', 1, 1, 67)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (70, 15, N'MHL34', N'&lt;p&gt;Vang thach anh&lt;/p&gt;', N'data/images/granit/27_10_2011_194147_826.jpg', 1, 1, 68)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (71, 15, N'MHL35', N'&lt;p&gt;Vang van go&lt;/p&gt;', N'data/images/granit/27_10_2011_194245_100.jpg', 1, 1, 69)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (72, 15, N'MHL36', N'&lt;p&gt;White botico&lt;/p&gt;', N'data/images/granit/27_10_2011_194359_500.jpg', 1, 1, 70)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (73, 15, N'MHL37', N'&lt;p&gt;White cacara&lt;/p&gt;', N'data/images/granit/27_10_2011_194510_771.jpg', 1, 1, 71)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (74, 15, N'MHL38', N'&lt;p&gt;White volocat&lt;/p&gt;', N'data/images/granit/27_10_2011_195954_874.jpg', 1, 1, 72)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (75, 15, N'MHL39', N'&lt;p&gt;Xam duc y&lt;/p&gt;', N'data/images/granit/00_10_2011_20028_746.jpg', 1, 1, 73)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (76, 15, N'MHL40', N'&lt;p&gt;Xanh com&lt;/p&gt;', N'data/images/granit/00_10_2011_20056_153.jpg', 1, 1, 74)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (77, 15, N'MHL41', N'&lt;p&gt;Xanh Italia&lt;/p&gt;', N'data/images/granit/01_10_2011_20129_369.jpg', 1, 1, 75)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (78, 15, N'MHL42', N'&lt;p&gt;Xanh ngoc&lt;/p&gt;', N'data/images/granit/03_10_2011_2035_911.jpg', 1, 1, 76)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (79, 15, N'MHL43', N'&lt;p&gt;Xanh van ngoc Y&lt;/p&gt;', N'data/images/granit/03_10_2011_20335_206.jpg', 1, 1, 77)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (80, 17, N'GHL11', N'&lt;p&gt;&nbsp;Đen b&ocirc;ng tuy&ecirc;́t&lt;/p&gt;', N'data/images/granit/06_11_2011_202846_851.jpg', 1, 1, 78)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (81, 17, N'GHL12', N'&lt;p&gt;&nbsp;Đen ch&acirc;́m h&ocirc;̀ng&lt;/p&gt;', N'data/images/granit/06_11_2011_202911_696.jpg', 1, 1, 79)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (82, 17, N'GHL13', N'&lt;p&gt;&nbsp;Đen Hu&ecirc;́ b&ocirc;ng chìm&lt;/p&gt;', N'data/images/granit/06_11_2011_202938_288.jpg', 1, 1, 80)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (83, 17, N'GHL14', N'&lt;p&gt;&nbsp;Đen Hu&ecirc;́ b&ocirc;ng n&ocirc;̉i&lt;/p&gt;', N'data/images/granit/06_11_2011_20302_976.jpg', 1, 1, 81)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (84, 17, N'GHL15', N'&lt;p&gt;&nbsp;Đen Indo b&ocirc;ng nhỏ&lt;/p&gt;', N'data/images/granit/06_11_2011_203026_187.jpg', 1, 1, 82)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (85, 17, N'GHL16', N'&lt;p&gt;&nbsp;Đen Indo b&ocirc;ng lớn&lt;/p&gt;', N'data/images/granit/06_11_2011_20313_585.jpg', 1, 1, 83)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (86, 17, N'GHL17', N'&lt;p&gt;&nbsp;Đen Campuchia b&ocirc;ng b&eacute;&lt;/p&gt;', N'data/images/granit/06_11_2011_203142_27.jpg', 1, 1, 84)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (87, 17, N'GHL18', N'&lt;p&gt;&nbsp;Đen Phú Y&ecirc;n&lt;/p&gt;', N'data/images/granit/06_11_2011_203213_696.jpg', 1, 1, 85)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (88, 17, N'GHL19', N'&lt;p&gt;&nbsp;Đen Rubi&lt;/p&gt;', N'data/images/granit/06_11_2011_203242_939.jpg', 1, 1, 86)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (89, 17, N'GHL20', N'&lt;p&gt;&nbsp;Đen Rubi &Acirc;́n Đ&ocirc;̣&lt;/p&gt;', N'data/images/granit/06_11_2011_20338_548.jpg', 1, 1, 87)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (90, 17, N'GHL21', N'&lt;p&gt;&nbsp;Đen sa mạc&lt;/p&gt;', N'data/images/granit/06_11_2011_203342_12.jpg', 1, 1, 88)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (91, 17, N'GHL22', N'&lt;p&gt;&nbsp;Đen xà cừ b&ocirc;ng tím&lt;/p&gt;', N'data/images/granit/06_11_2011_203412_629.jpg', 1, 1, 89)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (92, 17, N'GHL23', N'&lt;p&gt;&nbsp;Đỏ ánh kim&lt;/p&gt;', N'data/images/granit/06_11_2011_203443_650.jpg', 1, 1, 90)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (93, 17, N'GHL24', N'&lt;p&gt;&nbsp;Đỏ b&ocirc;ng xanh Bình Định&lt;/p&gt;', N'data/images/granit/06_11_2011_203516_472.jpg', 1, 1, 91)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (94, 17, N'GHL25', N'&lt;p&gt;&nbsp;Đỏ Karena&lt;/p&gt;', N'data/images/granit/06_11_2011_203543_565.jpg', 1, 1, 92)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (95, 17, N'GHL26', N'&lt;p&gt;&nbsp;Đỏ rubi&lt;/p&gt;', N'data/images/granit/06_11_2011_203614_88.jpg', 1, 1, 93)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (96, 17, N'GHL27', N'&lt;p&gt;&nbsp;Đỏ Rubi Bình Định&lt;/p&gt;', N'data/images/granit/06_11_2011_203643_921.jpg', 1, 1, 94)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (97, 17, N'GHL28', N'&lt;p&gt;&nbsp;Đỏ Rubi B&ocirc;ng lớn&lt;/p&gt;', N'data/images/granit/06_11_2011_203714_517.jpg', 1, 1, 95)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (98, 17, N'GHL29', N'&lt;p&gt;&nbsp;Đỏ Rubi Brazin&lt;/p&gt;', N'data/images/granit/06_11_2011_20386_187.jpg', 1, 1, 96)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (99, 17, N'GHL30', N'&lt;p&gt;&nbsp;Đỏ sa mạc&lt;/p&gt;', N'data/images/granit/06_11_2011_203840_595.jpg', 1, 1, 97)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (100, 17, N'GHL31', N'&lt;p&gt;&nbsp;H&ocirc;̀ng Ánh kim&lt;/p&gt;', N'data/images/granit/06_11_2011_203917_186.jpg', 1, 1, 98)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (101, 17, N'GHL32', N'&lt;p&gt;&nbsp;H&ocirc;̀ng ban đ&ecirc;m&lt;/p&gt;', N'data/images/granit/06_11_2011_203949_405.jpg', 1, 1, 99)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (102, 17, N'GHL33', N'&lt;p&gt;&nbsp;H&ocirc;̀ng Bantic&lt;/p&gt;', N'data/images/granit/06_11_2011_204017_816.jpg', 1, 1, 100)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (103, 17, N'GHL34', N'&lt;p&gt;&nbsp;H&ocirc;̀ng Gia Lai&lt;/p&gt;', N'data/images/granit/06_11_2011_204056_581.jpg', 1, 1, 101)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (104, 17, N'GHL35', N'&lt;p&gt;&nbsp;H&ocirc;̀ng Hiudong&lt;/p&gt;', N'data/images/granit/06_11_2011_204124_204.jpg', 1, 1, 102)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (105, 17, N'GHL36', N'&lt;p&gt;&nbsp;H&ocirc;̀ng Hoa Kỳ&lt;/p&gt;', N'data/images/granit/06_11_2011_204156_420.jpg', 1, 1, 103)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (106, 17, N'GHL37', N'&lt;p&gt;&nbsp;H&ocirc;̀ng H&ograve;a T&acirc;m&lt;/p&gt;', N'data/images/granit/06_11_2011_204229_135.jpg', 1, 1, 104)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (107, 17, N'GHL38', N'&lt;p&gt;&nbsp;H&ocirc;̀ng nhạt&lt;/p&gt;', N'data/images/granit/06_11_2011_20433_42.jpg', 1, 1, 105)
GO
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (108, 17, N'GHL39', N'&lt;p&gt;&nbsp;H&ocirc;̀ng nhạt Phú Y&ecirc;n&lt;/p&gt;', N'data/images/granit/06_11_2011_204343_553.jpg', 1, 1, 106)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (109, 17, N'GHL40', N'&lt;p&gt;&nbsp;H&ocirc;̀ng ph&acirc;́n&lt;/p&gt;', N'data/images/granit/06_11_2011_204416_393.jpg', 1, 1, 107)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (110, 17, N'GHL41', N'&lt;p&gt;&nbsp;H&ocirc;̀ng Phước H&ograve;a&lt;/p&gt;', N'data/images/granit/06_11_2011_204448_770.jpg', 1, 1, 108)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (111, 17, N'GHL42', N'&lt;p&gt;&nbsp;H&ocirc;̀ng Rosso Multicolor&lt;/p&gt;', N'data/images/granit/03_11_2011_21330_867.jpg', 1, 1, 109)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (112, 17, N'GHL43', N'&lt;p&gt;H&ocirc;̀ng b&ocirc;ng lớn&lt;/p&gt;', N'data/images/granit/04_11_2011_21428_640.jpg', 1, 1, 110)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (113, 17, N'GHL44', N'&lt;p&gt;&nbsp;H&ocirc;̀ng xu&acirc;n dung&lt;/p&gt;', N'data/images/granit/05_11_2011_21535_384.jpg', 1, 1, 111)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (114, 17, N'GHL45', N'&lt;p&gt;&nbsp;Kim sa cám&lt;/p&gt;', N'data/images/granit/06_11_2011_21610_311.jpg', 1, 1, 138)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (115, 17, N'GHL46', N'&lt;p&gt;&nbsp;Kim sa bap&lt;/p&gt;', N'data/images/granit/06_11_2011_21641_566.jpg', 1, 1, 112)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (116, 17, N'GHL47', N'&lt;p&gt;&nbsp;Kim sa trung&lt;/p&gt;', N'data/images/granit/07_11_2011_2179_670.jpg', 1, 1, 122)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (117, 17, N'GHL48', N'&lt;p&gt;&nbsp;N&acirc;u Bantich&lt;/p&gt;', N'data/images/granit/07_11_2011_21738_558.jpg', 1, 1, 113)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (118, 17, N'GHL49', N'&lt;p&gt;&nbsp;Tím đỏ Khánh Hòa&lt;/p&gt;', N'data/images/granit/08_11_2011_21813_479.jpg', 1, 1, 114)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (119, 17, N'GHL50', N'&lt;p&gt;&nbsp;Tím hoa cà&lt;/p&gt;', N'data/images/granit/09_11_2011_2197_198.jpg', 1, 1, 115)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (120, 17, N'GHL51', N'&lt;p&gt;&nbsp;Tím Khánh Hòa&lt;/p&gt;', N'data/images/granit/09_11_2011_21940_875.jpg', 1, 1, 116)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (121, 17, N'GHL52', N'&lt;p&gt;&nbsp;Tím m&ocirc;ng c&ocirc;̉&lt;/p&gt;', N'data/images/granit/06_11_2011_21106_543.jpg', 1, 1, 117)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (122, 17, N'GHL53', N'&lt;p&gt;&nbsp;Trắng &Acirc;́n Đ&ocirc;̣&lt;/p&gt;', N'data/images/granit/06_11_2011_211040_233.jpg', 1, 1, 118)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (123, 17, N'GHL54', N'&lt;p&gt;&nbsp;Trắng ánh kim&lt;/p&gt;', N'data/images/granit/06_11_2011_211116_315.jpg', 1, 1, 119)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (124, 17, N'GHL55', N'&lt;p&gt;&nbsp;Trắng Belhel&lt;/p&gt;', N'data/images/granit/06_11_2011_211149_936.jpg', 1, 1, 120)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (125, 17, N'GHL56', N'&lt;p&gt;&nbsp;Trắng Bình Định&lt;/p&gt;', N'data/images/granit/06_11_2011_211225_17.jpg', 1, 1, 121)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (126, 17, N'GHL57', N'&lt;p&gt;&nbsp;Trắng Kasmir&lt;/p&gt;', N'data/images/granit/06_11_2011_211311_132.jpg', 1, 1, 123)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (127, 17, N'GHL58', N'&lt;p&gt;&nbsp;Trắng mắt r&ocirc;̀ng&lt;/p&gt;', N'data/images/granit/06_11_2011_211349_85.jpg', 1, 1, 124)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (128, 17, N'GHL59', N'&lt;p&gt;&nbsp;Trắng mu&ocirc;́i Ngh&ecirc;̣ An&lt;/p&gt;', N'data/images/granit/06_11_2011_21156_722.jpg', 1, 1, 125)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (129, 17, N'GHL60', N'&lt;p&gt;&nbsp;Trắng mu&ocirc;́i ti&ecirc;u&lt;/p&gt;', N'data/images/granit/06_11_2011_211546_129.jpg', 1, 1, 126)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (130, 17, N'GHL61', N'&lt;p&gt;Trắng Nepal&lt;/p&gt;', N'data/images/granit/06_11_2011_211623_437.jpg', 1, 1, 127)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (131, 17, N'GHL62', N'&lt;p&gt;&nbsp;Trắng sa mạc&lt;/p&gt;', N'data/images/granit/06_11_2011_211749_801.jpg', 1, 1, 128)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (132, 17, N'GHL63', N'&lt;p&gt;&nbsp;Trắng T&acirc;y Ban Nha&lt;/p&gt;', N'data/images/granit/06_11_2011_211824_147.jpg', 1, 1, 129)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (133, 17, N'GHL64', N'&lt;p&gt;&nbsp;Trắng su&ocirc;́i l&acirc;u&lt;/p&gt;', N'data/images/granit/06_11_2011_211916_518.jpg', 1, 1, 130)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (134, 17, N'GHL65', N'&lt;p&gt;&nbsp;Trắng su&ocirc;́i l&acirc;u 2&lt;/p&gt;', N'data/images/granit/06_11_2011_211953_164.jpg', 1, 1, 131)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (135, 17, N'GHL66', N'&lt;p&gt;&nbsp;Trắng Trung &Acirc;́n&lt;/p&gt;', N'data/images/granit/06_11_2011_212032_588.jpg', 1, 1, 132)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (136, 17, N'GHL67', N'&lt;p&gt;&nbsp;Trắng váng mỡ&lt;/p&gt;', N'data/images/granit/06_11_2011_212116_503.jpg', 1, 1, 133)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (137, 17, N'GHL68', N'&lt;p&gt;&nbsp;Vàng Bình Định&lt;/p&gt;', N'data/images/granit/06_11_2011_21374_806.jpg', 1, 1, 134)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (138, 17, N'GHL69', N'&lt;p&gt;&nbsp;Vàng b&ocirc;ng lớn&lt;/p&gt;', N'data/images/granit/06_11_2011_213738_604.jpg', 1, 1, 135)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (139, 17, N'GHL70', N'&lt;p&gt;&nbsp;Vàng Multicolor&lt;/p&gt;', N'data/images/granit/06_11_2011_214016_466.jpg', 1, 1, 136)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (140, 17, N'GHL71', N'&lt;p&gt;&nbsp;Vàng nhạt&lt;/p&gt;', N'data/images/granit/06_11_2011_214045_190.jpg', 1, 1, 137)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (141, 17, N'GHL72', N'&lt;p&gt;&nbsp;Vàng TQ&lt;/p&gt;', N'data/images/granit/06_11_2011_214114_991.jpg', 1, 1, 139)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (142, 17, N'GHL73', N'&lt;p&gt;&nbsp;Xà cừ xanh&lt;/p&gt;', N'data/images/granit/06_11_2011_214144_587.jpg', 1, 1, 141)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (143, 17, N'GHL74', N'&lt;p&gt;&nbsp;Xám Quảng Ngãi&lt;/p&gt;', N'data/images/granit/06_11_2011_214254_56.jpg', 1, 1, 142)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (144, 17, N'GHL75', N'&lt;p&gt;&nbsp;Xanh C&ocirc;n Đảo&lt;/p&gt;', N'data/images/granit/06_11_2011_214345_607.jpg', 1, 1, 143)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (145, 17, N'GHL76', N'&lt;p&gt;&nbsp;Xanh đen&lt;/p&gt;', N'data/images/granit/06_11_2011_214413_499.jpg', 1, 1, 144)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (146, 17, N'GHL77', N'&lt;p&gt;&nbsp;Xanh Nam Mỹ&lt;/p&gt;', N'data/images/granit/06_11_2011_214439_735.jpg', 1, 1, 145)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (147, 17, N'GHL78', N'&lt;p&gt;&nbsp;Xanh TQ&lt;/p&gt;', N'data/images/granit/06_11_2011_21455_183.jpg', 1, 1, 146)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (149, 47, N'DSHL2', N'', N'data/images/granit/14_11_2011_08588_926.jpg', 2, 1, 150)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (150, 47, N'DSHL3', N'', N'data/images/granit/14_11_2011_085826_188.jpg', 2, 1, 151)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (151, 47, N'DSHL4', N'', N'data/images/granit/14_11_2011_085846_245.jpg', 2, 1, 152)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (152, 47, N'DSHL5', N'', N'data/images/granit/14_11_2011_08596_752.jpg', 2, 1, 153)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (153, 47, N'DSHL6', N'', N'data/images/granit/14_11_2011_085925_582.jpg', 2, 1, 154)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (154, 47, N'DSHL7', N'', N'data/images/granit/14_11_2011_085947_566.jpg', 2, 1, 155)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (155, 47, N'DSHL8', N'', N'data/images/granit/00_11_2011_0904_618.jpg', 2, 1, 156)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (156, 47, N'DSHL9', N'', N'data/images/granit/00_11_2011_09021_330.jpg', 2, 1, 157)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (157, 47, N'DSHL10', N'', N'data/images/granit/00_11_2011_09038_811.jpg', 2, 1, 159)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (158, 47, N'DSHL11', N'', N'data/images/granit/00_11_2011_09054_867.jpg', 2, 1, 160)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (159, 47, N'DSHL12', N'', N'data/images/granit/01_11_2011_09110_135.jpg', 2, 1, 158)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (160, 47, N'DSHL13', N'', N'data/images/granit/01_11_2011_09126_170.jpg', 2, 1, 148)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (161, 47, N'DHL14', N'', N'data/images/granit/01_11_2011_09152_89.jpg', 2, 1, 161)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (162, 47, N'DSHL15', N'', N'data/images/granit/02_11_2011_09257_985.jpg', 2, 1, 162)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (163, 47, N'DSHL16', N'', N'data/images/granit/03_11_2011_09324_664.jpg', 2, 1, 163)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (164, 24, N'MHL1', N'&lt;p&gt;&nbsp;Beige Jura&lt;/p&gt;', N'data/images/granit/04_11_2011_09452_858.jpg', 2, 1, 164)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (165, 24, N'MHL2', N'&lt;p&gt;&nbsp;Cream Imperial&lt;/p&gt;', N'data/images/granit/05_11_2011_09536_910.jpg', 2, 1, 165)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (166, 24, N'MHL3', N'&lt;p&gt;&nbsp;Crema mafil&lt;/p&gt;', N'data/images/granit/14_11_2011_091017_336.jpg', 2, 1, 166)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (167, 24, N'MHL4', N'&lt;p&gt;&nbsp;Crema mafil 2&lt;/p&gt;', N'data/images/granit/09_11_2011_09954_749.jpg', 2, 1, 167)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (168, 24, N'MHL5', N'&lt;p&gt;&nbsp;Cream Valencia&lt;/p&gt;', N'data/images/granit/03_11_2011_10342_914.jpg', 2, 1, 168)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (169, 24, N'MHL6', N'&lt;p&gt;&nbsp;Dack Emperado&lt;/p&gt;', N'data/images/granit/06_11_2011_10650_479.jpg', 2, 1, 169)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (170, 24, N'MHL7', N'&lt;p&gt;&nbsp;Black &amp; green&lt;/p&gt;', N'data/images/granit/09_11_2011_1099_96.jpg', 2, 1, 170)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (171, 24, N'MHL8', N'&lt;p&gt;&nbsp;Black &amp; Lightning&lt;/p&gt;', N'data/images/granit/14_11_2011_101018_572.jpg', 2, 1, 171)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (172, 24, N'MHL9', N'&lt;p&gt;&nbsp;Black &amp; lightning &amp; Red&lt;/p&gt;', N'data/images/granit/14_11_2011_101056_396.jpg', 2, 1, 172)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (173, 24, N'MHL10', N'&lt;p&gt;&nbsp;Giallo sunny&lt;/p&gt;', N'data/images/granit/14_11_2011_101126_399.jpg', 2, 1, 173)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (174, 24, N'MHL11', N'&lt;p&gt;&nbsp;Guan Red&lt;/p&gt;', N'data/images/granit/14_11_2011_101154_168.jpg', 2, 1, 174)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (175, 24, N'MHL12', N'&lt;p&gt;&nbsp;Rose rio&lt;/p&gt;', N'data/images/granit/14_11_2011_101225_531.jpg', 2, 1, 175)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (176, 24, N'MHL13', N'&lt;p&gt;&nbsp;Cream&amp;red&lt;/p&gt;', N'data/images/granit/16_11_2011_152528_785.jpg', 2, 1, 176)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (177, 24, N'MHL14', N'&lt;p&gt;&nbsp;Cream&amp;milk&lt;/p&gt;', N'data/images/granit/16_11_2011_152558_81.jpg', 2, 1, 177)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (178, 24, N'MHL15', N'', N'data/images/granit/16_11_2011_152622_449.jpg', 2, 1, 178)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (179, 24, N'MHL16', N'', N'data/images/granit/16_11_2011_152643_272.jpg', 2, 1, 179)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (180, 24, N'MHL17', N'&lt;p&gt;&nbsp;Light Emperado&lt;/p&gt;', N'data/images/granit/16_11_2011_152710_812.jpg', 2, 1, 180)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (181, 24, N'MHL18', N'&lt;p&gt;Brown Multicolor&lt;/p&gt;', N'data/images/granit/16_11_2011_152827_146.jpg', 2, 1, 181)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (182, 24, N'MHL19', N'&lt;p&gt;&nbsp;Rain forest&lt;/p&gt;', N'data/images/granit/16_11_2011_15297_448.jpg', 2, 1, 182)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (183, 24, N'MHL20', N'&lt;p&gt;&nbsp;Snow white&lt;/p&gt;', N'data/images/granit/16_11_2011_152933_862.jpg', 2, 1, 183)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (184, 24, N'MHL21', N'&lt;p&gt;&nbsp;Snow white 2&lt;/p&gt;', N'data/images/granit/16_11_2011_152959_418.jpg', 2, 1, 184)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (185, 24, N'MHL22', N'&lt;p&gt;&nbsp;White rice&lt;/p&gt;', N'data/images/granit/16_11_2011_153035_750.jpg', 2, 1, 185)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (186, 24, N'MHL23', N'&lt;p&gt;&nbsp;white greek&lt;/p&gt;', N'data/images/granit/16_11_2011_153225_674.jpg', 2, 1, 186)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (187, 24, N'MHL24', N'&lt;p&gt;&nbsp;White &amp; cream&lt;/p&gt;', N'data/images/granit/16_11_2011_153256_845.jpg', 2, 1, 187)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (188, 24, N'MHL25', N'&lt;p&gt;&nbsp;White &amp; river cloud&lt;/p&gt;', N'data/images/granit/16_11_2011_153434_843.jpg', 2, 1, 188)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (189, 24, N'MHL26', N'', N'data/images/granit/16_11_2011_15353_483.jpg', 2, 1, 189)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (190, 24, N'MHL27', N'', N'data/images/granit/16_11_2011_153553_303.jpg', 2, 1, 190)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (191, 24, N'MHL29', N'&lt;p&gt;&nbsp;Gold Egypt&lt;/p&gt;', N'data/images/granit/16_11_2011_153616_266.jpg', 2, 1, 191)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (192, 24, N'MHL28', N'&lt;p&gt;&nbsp;Gold Grojo&lt;/p&gt;', N'data/images/granit/16_11_2011_153647_465.jpg', 2, 1, 192)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (193, 24, N'MHL30', N'&lt;p&gt;&nbsp;Gold nero&lt;/p&gt;', N'data/images/granit/16_11_2011_153725_969.jpg', 2, 1, 193)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (194, 24, N'MHL31', N'', N'data/images/granit/16_11_2011_153941_860.jpg', 2, 1, 194)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (195, 24, N'MHL32', N'', N'data/images/granit/16_11_2011_15404_932.jpg', 2, 1, 195)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (196, 24, N'MHL33', N'&lt;p&gt;&nbsp;White botico&lt;/p&gt;', N'data/images/granit/16_11_2011_154040_995.jpg', 2, 1, 196)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (197, 24, N'MHL34', N'&lt;p&gt;White cacara&lt;/p&gt;', N'data/images/granit/16_11_2011_154116_377.jpg', 2, 1, 197)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (198, 24, N'MHL35', N'&lt;p&gt;&nbsp;white volacat&lt;/p&gt;', N'data/images/granit/16_11_2011_154157_97.jpg', 2, 1, 198)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (199, 24, N'MHL36', N'', N'data/images/granit/16_11_2011_154224_869.jpg', 2, 1, 199)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (200, 24, N'MHL37', N'', N'data/images/granit/16_11_2011_15430_93.jpg', 2, 1, 200)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (201, 24, N'MHL38', N'&lt;p&gt;&nbsp;Green Italia&lt;/p&gt;', N'data/images/granit/16_11_2011_154326_971.jpg', 2, 1, 201)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (202, 24, N'MHL39', N'&lt;p&gt;&nbsp;Green Gem&lt;/p&gt;', N'data/images/granit/16_11_2011_154439_1.jpg', 2, 1, 202)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (203, 24, N'MHL40', N'&lt;p&gt;&nbsp;Green Gem Italia&lt;/p&gt;', N'data/images/granit/16_11_2011_154512_893.jpg', 2, 1, 203)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (204, 26, N'GHL1', N'&lt;p&gt;&nbsp;Black &amp; snow&lt;/p&gt;', N'data/images/granit/16_11_2011_154617_734.jpg', 2, 1, 204)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (205, 26, N'GHL2', N'&lt;p&gt;&nbsp;Back &amp; pink&lt;/p&gt;', N'data/images/granit/16_11_2011_154654_777.jpg', 2, 1, 205)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (206, 26, N'GHL3', N'', N'data/images/granit/16_11_2011_154713_196.jpg', 2, 1, 206)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (207, 26, N'GHL4', N'', N'data/images/granit/16_11_2011_154727_398.jpg', 2, 1, 207)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (208, 26, N'GHL5', N'', N'data/images/granit/16_11_2011_154741_49.jpg', 2, 1, 208)
GO
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (209, 26, N'GHL6', N'', N'data/images/granit/16_11_2011_154759_545.jpg', 2, 1, 209)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (210, 26, N'GHL7', N'', N'data/images/granit/16_11_2011_155954_111.jpg', 2, 1, 210)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (211, 26, N'GHL8', N'', N'data/images/granit/00_11_2011_16010_575.jpg', 2, 1, 211)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (212, 26, N'GHL9', N'&lt;p&gt;&nbsp;Black rubi&lt;/p&gt;', N'data/images/granit/00_11_2011_16056_927.jpg', 2, 1, 212)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (213, 26, N'GHL10', N'&lt;p&gt;&nbsp;Black rubi Egypt&lt;/p&gt;', N'data/images/granit/01_11_2011_16130_959.jpg', 2, 1, 213)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (214, 26, N'GHL11', N'', N'data/images/granit/01_11_2011_16148_792.jpg', 2, 1, 214)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (215, 26, N'GHL12', N'', N'data/images/granit/02_11_2011_1626_253.jpg', 2, 1, 215)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (216, 26, N'GHL13', N'', N'data/images/granit/02_11_2011_16222_110.jpg', 2, 1, 216)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (217, 26, N'GHL14', N'', N'data/images/granit/16_11_2011_161327_892.jpg', 2, 1, 217)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (218, 26, N'GHL15', N'&lt;p&gt;&nbsp;Red Karena&lt;/p&gt;', N'data/images/granit/16_11_2011_161742_970.jpg', 2, 1, 218)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (219, 26, N'GHL16', N'&lt;p&gt;&nbsp;red rubi&lt;/p&gt;', N'data/images/granit/16_11_2011_161817_393.jpg', 2, 1, 219)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (220, 26, N'GHL17', N'&lt;p&gt;&nbsp;Red Rubi Binh Dinh&lt;/p&gt;', N'data/images/granit/16_11_2011_16197_819.jpg', 2, 1, 220)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (221, 26, N'GHL18', N'', N'data/images/granit/16_11_2011_161957_370.jpg', 2, 1, 221)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (222, 26, N'GHL19', N'&lt;p&gt;&nbsp;Red rubi brazin&lt;/p&gt;', N'data/images/granit/16_11_2011_164013_159.jpg', 2, 1, 222)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (223, 26, N'GHL20', N'', N'data/images/granit/16_11_2011_164036_885.jpg', 2, 1, 223)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (224, 26, N'GHL21', N'', N'data/images/granit/16_11_2011_16415_505.jpg', 2, 1, 224)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (225, 26, N'GHL22', N'', N'data/images/granit/16_11_2011_164153_384.jpg', 2, 1, 225)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (226, 26, N'GHL23', N'&lt;p&gt;&nbsp;Pink bantic&lt;/p&gt;', N'data/images/granit/16_11_2011_164239_150.jpg', 2, 1, 226)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (227, 26, N'GHL24', N'&lt;p&gt;&nbsp;Pink Gialai&lt;/p&gt;', N'data/images/granit/16_11_2011_16434_783.jpg', 2, 1, 227)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (228, 26, N'GHL25', N'&lt;p&gt;&nbsp;Pink hiudong&lt;/p&gt;', N'data/images/granit/16_11_2011_164337_264.jpg', 2, 1, 228)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (229, 26, N'GHL26', N'&lt;p&gt;&nbsp;Pink Unite State of American&lt;/p&gt;', N'data/images/granit/16_11_2011_164423_721.jpg', 2, 1, 229)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (230, 26, N'GHL27', N'', N'data/images/granit/16_11_2011_164457_589.jpg', 2, 1, 230)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (231, 26, N'GHL28', N'&lt;p&gt;&nbsp;Pink&lt;/p&gt;', N'data/images/granit/16_11_2011_164519_946.jpg', 2, 1, 231)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (232, 26, N'GHL29', N'&lt;p&gt;&nbsp;Pink Phu Yen&lt;/p&gt;', N'data/images/granit/16_11_2011_164547_893.jpg', 2, 1, 232)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (233, 26, N'GHL30', N'&lt;p&gt;&nbsp;Pink 2&lt;/p&gt;', N'data/images/granit/16_11_2011_164611_348.jpg', 2, 1, 233)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (234, 26, N'GHL31', N'', N'data/images/granit/16_11_2011_164630_791.jpg', 2, 1, 234)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (235, 26, N'GHL32', N'&lt;p&gt;&nbsp;Ponk rosso multicolor&lt;/p&gt;', N'data/images/granit/16_11_2011_16472_255.jpg', 2, 1, 235)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (236, 26, N'GHL33', N'&lt;p&gt;&nbsp;Pink China&lt;/p&gt;', N'data/images/granit/16_11_2011_164729_937.jpg', 2, 1, 236)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (237, 26, N'GHL34', N'', N'data/images/granit/16_11_2011_164749_50.jpg', 2, 1, 237)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (238, 26, N'GHL35', N'', N'data/images/granit/16_11_2011_164823_956.jpg', 2, 1, 238)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (239, 26, N'GHL36', N'', N'data/images/granit/16_11_2011_164844_905.jpg', 2, 1, 239)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (240, 26, N'GHL37', N'', N'data/images/granit/16_11_2011_16497_973.jpg', 2, 1, 240)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (241, 26, N'GHL38', N'&lt;p&gt;&nbsp;Brown bantic&lt;/p&gt;', N'data/images/granit/16_11_2011_164933_676.jpg', 2, 1, 241)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (242, 26, N'GHL39', N'&lt;p&gt;&nbsp;violet &amp; red Khanh Hoa&lt;/p&gt;', N'data/images/granit/16_11_2011_165017_672.jpg', 2, 1, 242)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (243, 26, N'GHL40', N'&lt;p&gt;&nbsp;Violet &amp; Lilac&lt;/p&gt;', N'data/images/granit/16_11_2011_165057_239.jpg', 2, 1, 243)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (244, 26, N'GHL41', N'&lt;p&gt;&nbsp;Violet Khanh Hoa&lt;/p&gt;', N'data/images/granit/16_11_2011_165122_781.jpg', 2, 1, 244)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (245, 26, N'GHL42', N'&lt;p&gt;Violet&nbsp;&lt;span class=&#34;Apple-style-span&#34; style=&#34;color: rgb(34, 34, 34); font-family: arial, sans-serif; line-height: 16px; font-size: small; &#34;&gt;Mongolia&lt;/span&gt;&lt;/p&gt;', N'data/images/granit/16_11_2011_165749_273.jpg', 2, 1, 245)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (246, 26, N'GHL43', N'&lt;p&gt;&nbsp;White India&lt;/p&gt;', N'data/images/granit/16_11_2011_16590_415.jpg', 2, 1, 246)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (247, 26, N'GHL44', N'', N'data/images/granit/16_11_2011_165924_803.jpg', 2, 1, 247)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (248, 26, N'GHL45', N'&lt;p&gt;&nbsp;White Belhel&lt;/p&gt;', N'data/images/granit/16_11_2011_165952_50.jpg', 2, 1, 248)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (249, 26, N'GHL46', N'&lt;p&gt;White Binh Dinh&lt;/p&gt;', N'data/images/granit/00_11_2011_17022_649.jpg', 2, 1, 249)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (250, 26, N'GHL47', N'&lt;p&gt;&nbsp;White Kasmir&lt;/p&gt;', N'data/images/granit/00_11_2011_17055_632.jpg', 2, 1, 250)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (251, 26, N'GHL48', N'', N'data/images/granit/01_11_2011_17119_300.jpg', 2, 1, 251)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (252, 26, N'GHL49', N'&lt;p&gt;&nbsp;White salt Nghe An&lt;/p&gt;', N'data/images/granit/02_11_2011_17216_191.jpg', 2, 1, 252)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (253, 26, N'GHL50', N'&lt;p&gt;&nbsp;White salt&lt;/p&gt;', N'data/images/granit/02_11_2011_17248_906.jpg', 2, 1, 253)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (254, 26, N'GHL51', N'&lt;p&gt;&nbsp;White nepal&lt;/p&gt;', N'data/images/granit/03_11_2011_17311_723.jpg', 2, 1, 254)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (255, 26, N'GHL52', N'', N'data/images/granit/03_11_2011_17334_829.jpg', 2, 1, 255)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (256, 26, N'GHL53', N'', N'data/images/granit/03_11_2011_17354_617.jpg', 2, 1, 256)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (257, 26, N'GHL54', N'', N'data/images/granit/04_11_2011_17416_281.jpg', 2, 1, 257)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (258, 26, N'GHL55', N'', N'data/images/granit/04_11_2011_17439_795.jpg', 2, 1, 258)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (259, 26, N'GHL56', N'', N'data/images/granit/05_11_2011_1756_404.jpg', 2, 1, 259)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (260, 26, N'GHL57', N'', N'data/images/granit/05_11_2011_17532_765.jpg', 2, 1, 260)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (261, 26, N'GHL58', N'&lt;p&gt;&nbsp;Gold Binh Dinh&lt;/p&gt;', N'data/images/granit/05_11_2011_17553_839.jpg', 2, 1, 261)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (262, 26, N'GHL59', N'&lt;p&gt;&nbsp;Gold max&lt;/p&gt;', N'data/images/granit/06_11_2011_17622_13.jpg', 2, 1, 262)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (263, 26, N'GHL60', N'', N'data/images/granit/06_11_2011_17642_321.jpg', 2, 1, 263)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (264, 26, N'GHL61', N'&lt;p&gt;&nbsp;Gold multicolor&lt;/p&gt;', N'data/images/granit/07_11_2011_1776_281.jpg', 2, 1, 264)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (265, 26, N'GHL62', N'', N'data/images/granit/07_11_2011_17726_0.jpg', 2, 1, 265)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (266, 26, N'GHL63', N'&lt;p&gt;&nbsp;Gold China&lt;/p&gt;', N'data/images/granit/07_11_2011_17756_745.jpg', 2, 1, 266)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (267, 26, N'GHL64', N'', N'data/images/granit/08_11_2011_17819_186.jpg', 2, 1, 267)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (268, 26, N'GHL65', N'', N'data/images/granit/08_11_2011_17839_226.jpg', 2, 1, 268)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (269, 26, N'GHL66', N'', N'data/images/granit/09_11_2011_1790_673.jpg', 2, 1, 269)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (270, 26, N'GHL67', N'&lt;p&gt;&nbsp;green Con Dao&lt;/p&gt;', N'data/images/granit/09_11_2011_17926_128.jpg', 2, 1, 270)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (271, 26, N'GHL68', N'&lt;p&gt;&nbsp;Blue &amp; black&lt;/p&gt;', N'data/images/granit/09_11_2011_17956_191.jpg', 2, 1, 271)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (272, 26, N'GHL69', N'', N'data/images/granit/16_11_2011_171050_353.jpg', 2, 1, 272)
INSERT [dbo].[tbl_granit] ([PK_GranitID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank]) VALUES (273, 26, N'GHL70', N'&lt;p&gt;&nbsp;blue china&lt;/p&gt;', N'data/images/granit/16_11_2011_171213_940.jpg', 2, 1, 273)
SET IDENTITY_INSERT [dbo].[tbl_granit] OFF
SET IDENTITY_INSERT [dbo].[tbl_groupmember] ON 

INSERT [dbo].[tbl_groupmember] ([PK_GroupMemberID], [C_Name], [C_Des], [FK_LangID], [C_System], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_View], [C_ProcessLock], [C_ProcessUnLock], [C_ProcessDel]) VALUES (1, N'Quản lý hệ thống', N'', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[tbl_groupmember] ([PK_GroupMemberID], [C_Name], [C_Des], [FK_LangID], [C_System], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_View], [C_ProcessLock], [C_ProcessUnLock], [C_ProcessDel]) VALUES (7, N'Administrator', N'', 2, 0, 1, 7, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[tbl_groupmember] ([PK_GroupMemberID], [C_Name], [C_Des], [FK_LangID], [C_System], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_View], [C_ProcessLock], [C_ProcessUnLock], [C_ProcessDel]) VALUES (3, N'Group Đại lý', N'', 1, 0, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[tbl_groupmember] ([PK_GroupMemberID], [C_Name], [C_Des], [FK_LangID], [C_System], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_View], [C_ProcessLock], [C_ProcessUnLock], [C_ProcessDel]) VALUES (4, N'Group Người đăng ký để đăng tin', N'', 1, 0, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[tbl_groupmember] OFF
SET IDENTITY_INSERT [dbo].[tbl_menu] ON 

INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (150, 0, 1, N'Yêu cầu khách hàng', N'arrow.png', N'Default.aspx?page=resquest&mod=resquest', 1, 75, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (2, 0, 1, N'Quản lý hệ thống', N'news_new.png', N'#', 1, 37, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (3, 2, 1, N'Danh sách người dùng', N'note_find.png', N'Default.aspx?page=user&mod=user', 1, 4, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (4, 2, 1, N'Phân quyền người dùng', N'mass_email.png', N'Default.aspx?page=group&mod=permission', 1, 3, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (27, 2, 1, N'Cấu hình website', N'briefcase.png', N'Default.aspx?page=siteinfo&mod=siteinfo', 1, 1, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (6, 5, 1, N'Giới thiệu', N'graduation_hat2.png', N'Default.aspx?page=gioi_thieu&mod=gioi_thieu', 1, 6, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (7, 5, 1, N'Đào tạo tuyển sinh', N'laptop2.png', N'Default.aspx?page=dao_tao_tuyen_sinh&mod=dao_tao_tuyen_sinh', 1, 7, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (8, 5, 1, N'Nghiên cứu khoa học', N'edit.png', N'Default.aspx?page=nghien_cuu_khoa_hoc&mod=nghien_cuu_khoa_hoc', 1, 8, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (9, 5, 1, N'Hợp tác Quốc tế', N'calendar_up.png', N'Default.aspx?page=hop_tac_quoc_te&mod=hop_tac_quoc_te', 1, 9, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (68, 0, 1, N'Danh sách bài viết', N'book_open.png', N'Default.aspx?page=news&mod=news', 1, 155, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (122, 0, 2, N'Sản phẩm', N'book_blue_find.png', N'Default.aspx?page=product&mod=product', 1, 122, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (125, 0, 2, N'Các loại đá', N'briefcase2_view.png', N'Default.aspx?page=granit&mod=granit', 1, 125, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (13, 5, 1, N'Thông tin đào tạo', N'checkin.png', N'Default.aspx?page=thong_tin_dao_tao&mod=thong_tin_dao_tao', 1, 13, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (14, 5, 1, N'Thông tin nội bộ', N'component.png', N'Default.aspx?page=thong_tin_noi_bo&mod=thong_tin_noi_bo', 1, 14, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (143, 0, 2, N'Danh sách cây menu', N'bookmark_preferences.png', N'Default.aspx?page=category_news&mod=news', 1, 143, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (151, 86, 1, N'Báo giá sản phẩm', N'briefcase_out.png', N'Default.aspx?page=product_price&mod=product', 1, 73, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (130, 0, 2, N'Danh sách bài viết', N'bookmark_add.png', N'Default.aspx?page=news&mod=news', 1, 130, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (37, 68, 1, N'Chuyên mục tin tức', N'book_blue_preferences.png', N'Default.aspx?page=category_news&mod=news', 1, 152, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (135, 89, 2, N'Cấu hình website', N'backup.png', N'Default.aspx?page=siteinfo&mod=siteinfo', 1, 90, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (26, 5, 1, N'Website thành viên', N'graduation_hat2.png', N'Default.aspx?page=weblink&mod=weblink', 1, 26, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (86, 0, 1, N'Danh sách sản phẩm', N'briefcase_out.png', N'Default.aspx?page=product&mod=product', 1, 151, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (89, 0, 2, N'Quản lý hệ thống', N'component.png', N'', 1, 89, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (90, 89, 2, N'Phân quyền người dùng', N'book_blue_preferences.png', N'Default.aspx?page=group&mod=permission', 1, 92, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (92, 89, 2, N'Danh sách người dùng', N'book_open.png', N'Default.aspx?page=user&mod=user', 1, 135, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (152, 0, 1, N'Quản lý menu', N'arrow.png', N'Default.aspx?page=menu&mod=menu', 1, 71, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (153, 86, 1, N'Loại sản phẩm', N'arrow.png', N'Default.aspx?page=category_product&mod=product', 1, 153, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (173, 0, 1, N'Danh sách slide', N'arrow.png', N'Default.aspx?page=slide&mod=slide', 1, 150, 0, 0, 0, 0, 1)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (155, 0, 1, N'Liên hệ', N'add_section.png', N'order-product', 1, 156, 0, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (156, 0, 1, N'Đăng nhập', N'add_section.png', N'', 0, 157, 0, 0, 0, 1, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (157, 0, 1, N'Đăng ký', N'add_section.png', N'', 0, 158, 0, 0, 0, 1, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (158, 0, 1, N'Dành cho Ông Bà', N'add_section.png', N'', 1, 159, 0, 0, 0, 1, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (159, 0, 1, N'Dành cho bố', N'add_section.png', N'parent-product/2/6', 1, 163, 0, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (160, 159, 1, N'Đặt hàng theo yêu cầu', N'add_section.png', N'order-product', 1, 160, 0, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (161, 159, 1, N'Hàng công nghệ xách tay', N'add_section.png', N'product/2/9', 1, 161, 0, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (162, 159, 1, N'Thuốc và thực phẩm chức năng', N'add_section.png', N'product/2/10', 1, 162, 0, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (163, 0, 1, N'Dành cho bé', N'add_section.png', N'parent-product/2/2', 1, 165, 0, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (164, 0, 1, N'Dành cho mẹ', N'add_section.png', N'parent-product/2/1', 1, 164, 0, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (165, 0, 1, N'Trang chủ', N'add_section.png', N'', 1, 173, 0, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (166, 163, 1, N'Đồ dùng cá nhân', N'add_section.png', N'product/2/11', 1, 166, 0, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (167, 163, 1, N'Mỹ phẩm - Thời trang', N'add_section.png', N'product/2/12', 1, 167, 0, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (168, 163, 1, N'Thuốc và thực phẩm chức năng', N'add_section.png', N'product/2/13', 1, 168, 0, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (169, 164, 1, N'Đồ dùng cá nhân', N'add_section.png', N'product/2/5', 1, 169, 0, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (170, 164, 1, N'Mỹ phẩm - Thời trang', N'add_section.png', N'product/2/4', 1, 170, 0, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (171, 164, 1, N'Thuốc và thực phẩm chức năng', N'add_section.png', N'product/2/3', 1, 171, 0, 0, 0, 0, 0)
INSERT [dbo].[tbl_menu] ([PK_MenuID], [FK_ParentID], [FK_LangID], [C_Name], [C_Icon], [C_Url], [C_Active], [C_Rank], [C_Add], [C_Edit], [C_Del], [C_Lock], [C_BackEnd]) VALUES (172, 0, 1, N'Khuyến Mại', N'add_section.png', N'category/1/36', 1, 172, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[tbl_menu] OFF
SET IDENTITY_INSERT [dbo].[tbl_news] ON 

INSERT [dbo].[tbl_news] ([PK_NewsID], [FK_CategoryID], [FK_LangID], [C_Name], [C_Des], [C_Content], [C_Hot], [C_Img], [C_Create], [C_Author], [C_Active], [C_Rank], [C_Attach], [C_Download], [C_SupperHot], [C_Tieudiem]) VALUES (231, 44, 1, N'Đặt hàng', N'', N'&lt;p&gt;&lt;span style=&#34;font-size: large;&#34;&gt;Shop ch&uacute;ng t&ocirc;i, nhận đặt h&agrave;ng qua:&nbsp;&lt;/span&gt;&lt;/p&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important;&#34;&gt;
&lt;p&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;Điện thoại:&lt;/span&gt;&nbsp;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;- Mrs.Thảo 0166.742.0809 &nbsp; &nbsp;- Mrs. Hồng 0978.848.904&lt;/p&gt;
&lt;p&gt;- Mr. Cường 0973.041.481 &nbsp; - Ms. Hạnh 0169.699.6193&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;Email:&lt;/span&gt; tuankhoishop@gmail.com&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;Website: &lt;/span&gt;Hệ thống Website của ch&uacute;ng t&ocirc;i đang trong qu&aacute; tr&igrave;nh ho&agrave;n thiện, hiện chưa c&oacute; chức năng tạo giỏ h&agrave;ng v&agrave; h&oacute;a đơn tự động. Nếu qu&yacute; kh&aacute;ch muốn đặt h&agrave;ng trực tiếp tr&ecirc;n Website, xin h&atilde;y đặt h&agrave;ng theo 2 c&aacute;ch sau:&lt;/p&gt;
&lt;p&gt;- C&aacute;ch 1: Click v&agrave;o &ocirc; &quot;Mua ngay&quot; dưới mỗi sản phẩm, sau đ&oacute; điền th&ocirc;ng tin người mua (Họ t&ecirc;n, điện thoại, email, địa chỉ). Chi tiết c&aacute;c sản phẩm cần mua (T&ecirc;n Sản phẩm+Số lượng) xin h&atilde;y liệt k&ecirc; trong mục Nội dung.&nbsp;&lt;/p&gt;
&lt;p&gt;- C&aacute;ch 2: Chọn menu &quot;LI&Ecirc;N HỆ&quot;, sau đ&oacute; điền th&ocirc;ng tin người mua h&agrave;ng, chi tiết c&aacute;c sản phẩm cần mua xin h&atilde;y liệt k&ecirc; trong mục Nội dung.&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;Mua h&agrave;ng trực tiếp:&nbsp;&lt;/span&gt;Qu&yacute; kh&aacute;ch c&oacute; thể xem v&agrave; mua h&agrave;ng trực tiếp tại:&lt;/p&gt;
&lt;p&gt;- Nh&agrave; 1: Ph&ograve;ng 303, TT H3, ng&otilde; 64 Kim Giang, Thanh Xu&acirc;n, H&agrave; Nội&lt;/p&gt;
&lt;p&gt;- Nh&agrave; 2: Đ11, Cấn Thượng, Cấn Hữu, Quốc Oai, H&agrave; Nội&lt;/p&gt;
&lt;p&gt;- Cơ quan 1: Trường ĐH Khoa học Tự Nhi&ecirc;n, số 334 Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, HN&lt;/p&gt;
&lt;p&gt;- Cơ quan 2: Trường CĐ C&ocirc;ng Nghệ H&agrave; Nội, Km12 Cầu Diễn, Bắc Từ Li&ecirc;m, HN&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;color: rgb(255, 0, 0);&#34;&gt;&nbsp;Rất h&acirc;n hạnh được phục vụ!&lt;/span&gt;&nbsp;&lt;/p&gt;
&lt;/div&gt;', 1, N'data/images/news/contact-us_27_05_2017_02274_163.png', CAST(N'2017-05-27T00:00:00.000' AS DateTime), N'admin', 1, 232, N'', NULL, NULL, NULL)
INSERT [dbo].[tbl_news] ([PK_NewsID], [FK_CategoryID], [FK_LangID], [C_Name], [C_Des], [C_Content], [C_Hot], [C_Img], [C_Create], [C_Author], [C_Active], [C_Rank], [C_Attach], [C_Download], [C_SupperHot], [C_Tieudiem]) VALUES (232, 44, 1, N'Ship hàng', N'', N'&lt;p&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;&lt;span style=&#34;color: rgb(51, 51, 51); font-family: Roboto, sans-serif;&#34;&gt;-&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(51, 51, 51); font-family: Roboto, sans-serif;&#34;&gt;Ch&uacute;ng t&ocirc;i sẽ cố giắng ship h&agrave;ng miễn ph&iacute; đến qu&yacute; kh&aacute;ch nếu c&oacute; thể!&nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;&lt;span style=&#34;color: rgb(51, 51, 51); font-family: Roboto, sans-serif;&#34;&gt;- Miễn ph&iacute; ship h&agrave;ng trong nội th&agrave;nh H&agrave; Nội cho những đơn h&agrave;ng lớn hơn 1.000.000đ&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;&lt;span style=&#34;color: rgb(51, 51, 51); font-family: Roboto, sans-serif;&#34;&gt;-&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(51, 51, 51); font-family: Roboto, sans-serif;&#34;&gt;C&aacute;c đơn h&agrave;ng c&ograve;n lại, Qu&yacute; kh&aacute;ch l&agrave;m ơn thanh to&aacute;n tiền Ship theo đơn gi&aacute; của C&ocirc;ng ty Ship h&agrave;ng&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;font-family: Roboto, sans-serif; font-size: 15px; text-align: justify; color: rgb(255, 0, 0);&#34;&gt;Rất h&acirc;n hạnh được phục vụ!&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;&#34;&gt;&nbsp;&lt;/span&gt;&lt;/p&gt;', 1, N'data/images/news/mh_27_05_2017_025258_532.png', CAST(N'2017-05-27T00:00:00.000' AS DateTime), N'admin', 1, 229, N'', NULL, NULL, NULL)
INSERT [dbo].[tbl_news] ([PK_NewsID], [FK_CategoryID], [FK_LangID], [C_Name], [C_Des], [C_Content], [C_Hot], [C_Img], [C_Create], [C_Author], [C_Active], [C_Rank], [C_Attach], [C_Download], [C_SupperHot], [C_Tieudiem]) VALUES (233, 44, 1, N'Thanh Toán', N'', N'&lt;p&gt;&nbsp;&lt;span style=&#34;font-size: large; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;&#34;&gt;Shop ch&uacute;ng t&ocirc;i, nhận thanh to&aacute;n:&nbsp;&lt;/span&gt;&lt;/p&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;font-family: Roboto, sans-serif; margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important;&#34;&gt;
&lt;p&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;Trực tiếp bằng tiền mặt&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;Chuyển khoản:&lt;/span&gt;&lt;/span&gt;&nbsp;&lt;/p&gt;
&lt;p&gt;- Chủ TK: Nguyễn Tiến Cường&lt;/p&gt;
&lt;p&gt;- Số TK: 0711000230284&lt;/p&gt;
&lt;p&gt;- Ng&acirc;n h&agrave;ng Vietcombank, chi nh&aacute;nh Thanh Xu&acirc;n&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;Thanh to&aacute;n qua nh&acirc;n vi&ecirc;n Ship h&agrave;ng&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;color: rgb(255, 0, 0);&#34;&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;Rất h&acirc;n hạnh được phục vụ!&lt;/span&gt;&lt;/span&gt;&nbsp;&nbsp;&lt;/p&gt;
&lt;/div&gt;', 1, N'', CAST(N'2017-05-27T00:00:00.000' AS DateTime), N'admin', 1, 231, N'', NULL, NULL, NULL)
INSERT [dbo].[tbl_news] ([PK_NewsID], [FK_CategoryID], [FK_LangID], [C_Name], [C_Des], [C_Content], [C_Hot], [C_Img], [C_Create], [C_Author], [C_Active], [C_Rank], [C_Attach], [C_Download], [C_SupperHot], [C_Tieudiem]) VALUES (195, 36, 1, N'Khuyến Mại - Ngày Quốc tế Thiếu nhi 01/06', N'', N'&lt;p&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;Nh&acirc;n dịp ng&agrave;y Quốc tế Thiếu nhi 01/06/2017, Tuấn Kh&ocirc;i Shop &lt;b&gt;giảm gi&aacute; 10%&lt;/b&gt; cho c&aacute;c Sản phẩm thuộc mục &lt;b&gt;D&agrave;nh cho B&eacute;&lt;/b&gt; trong 02 ng&agrave;y &lt;b&gt;31/05 v&agrave; 01/06/2017&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;Ch&uacute; &yacute;: C&aacute;c Sản phẩm chỉ được hưởng 1 chương tr&igrave;nh Khuyến Mại tại c&ugrave;ng một thời điểm&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;p&gt;&lt;img src=&#34;/data/image/TuanKhoiShop/10_precent_off.jpg&#34; width=&#34;250&#34; height=&#34;166&#34; alt=&#34;&#34; /&gt;&lt;/p&gt;', 1, N'data/images/news/10_precent_off_26_05_2017_112616_945.jpg', CAST(N'2009-05-06T00:00:00.000' AS DateTime), NULL, 1, 201, N'', 0, 0, 0)
INSERT [dbo].[tbl_news] ([PK_NewsID], [FK_CategoryID], [FK_LangID], [C_Name], [C_Des], [C_Content], [C_Hot], [C_Img], [C_Create], [C_Author], [C_Active], [C_Rank], [C_Attach], [C_Download], [C_SupperHot], [C_Tieudiem]) VALUES (200, 36, 1, N'Khuyễn Mại - Tuần lễ Khai trương Tuấn Khôi Shop', N'', N'&lt;div class=&#34;label&#34;&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;Nh&acirc;n dịp Khai trương Shop, từ ng&agrave;y&lt;b&gt; 28/05/2017 đến 03/06/2017&lt;/b&gt;, Tuấn Kh&ocirc;i Shop &lt;b&gt;giảm gi&aacute; tất cả c&aacute;c sản phẩm 5%&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;
&lt;div class=&#34;label&#34;&gt;&nbsp;&lt;/div&gt;
&lt;div class=&#34;label&#34;&gt;&lt;b&gt;&lt;img src=&#34;/data/image/TuanKhoiShop/5_precent_off.jpg&#34; width=&#34;250&#34; height=&#34;166&#34; alt=&#34;&#34; /&gt;&lt;/b&gt;&lt;/div&gt;', 1, N'data/images/news/5_precent_off_08_05_2017_11830_542.jpg', CAST(N'2011-10-19T00:00:00.000' AS DateTime), N'admin', 1, 197, N'', 0, 0, 0)
INSERT [dbo].[tbl_news] ([PK_NewsID], [FK_CategoryID], [FK_LangID], [C_Name], [C_Des], [C_Content], [C_Hot], [C_Img], [C_Create], [C_Author], [C_Active], [C_Rank], [C_Attach], [C_Download], [C_SupperHot], [C_Tieudiem]) VALUES (205, 36, 2, N'Hoang Long Trading and Construction joint stock company', N'&lt;p&gt;&lt;span style=&#34;font-size: small;&#34;&gt;&lt;i&gt;&lt;span style=&#34;font-family: Times New Roman;&#34;&gt;Hoang  Long Trading and Construction joint stock company is professional on  supplying and executing almost brands of granite stone, marble stone.  They are inland&nbsp; produced and imported from countries which have famous  natural granite and marble stone resources, such as: China, India and  Italy,....&lt;/span&gt;&lt;/i&gt;&lt;/span&gt;&lt;span style=&#34;font-size: small;&#34;&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;&lt;span style=&#34;font-family: Times New Roman;&#34;&gt;&lt;br /&gt;
&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', N'&lt;p&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hoang   Long Trading and Construction joint stock company is professional on   supplying and executing almost brands of granite stone, marble stone.   They are inland&nbsp; produced and imported from countries which have famous   natural granite and marble stone resources, such as: China, India and   Italy,....&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;Organization of building process as: &lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;;&#34;&gt;&lt;img align=&#34;right&#34; alt=&#34;&#34; style=&#34;width: 526px; height: 245px;&#34; src=&#34;/data/image/7.jpg&#34; /&gt;&lt;/span&gt;&lt;/span&gt;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;The front of a building&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Stairs&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Perron&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Desktop stone&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Tracery&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Bulletin board&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Floor a room with&nbsp;stone&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Balcony banisters&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Tombstone&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;text-align: justify; &#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;&nbsp;&nbsp;  &nbsp; &nbsp; Our workmans team have labour experience, specialization level,  execution level, cost justice and reputation quality. We hope we will  serve all customer.&nbsp;Join us in making your house more luxury.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', 1, N'data/images/news/29_10_2011_191014_423.jpg', CAST(N'2011-10-07T00:00:00.000' AS DateTime), N'admin', 1, 199, N'', 0, 0, 0)
INSERT [dbo].[tbl_news] ([PK_NewsID], [FK_CategoryID], [FK_LangID], [C_Name], [C_Des], [C_Content], [C_Hot], [C_Img], [C_Create], [C_Author], [C_Active], [C_Rank], [C_Attach], [C_Download], [C_SupperHot], [C_Tieudiem]) VALUES (207, 36, 2, N'What is granite in use?', N'&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;', N'&lt;p&gt;&lt;span style=&#34;font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); &#34; class=&#34;Apple-style-span&#34;&gt; &lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; font-size: medium; &#34; class=&#34;Apple-style-span&#34;&gt;&lt;span style=&#34;font-family: Arial, Verdana, sans-serif; font-size: 12px; &#34; class=&#34;Apple-style-span&#34;&gt;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - &lt;a name=&#34;Granite&#34;&gt;&lt;/a&gt;&nbsp;Granite stone have many variety colour, the hardest, internal force and heat protective.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; font-size: medium; &#34; class=&#34;Apple-style-span&#34;&gt;&lt;span style=&#34;font-family: Arial, Verdana, sans-serif; font-size: 12px; &#34; class=&#34;Apple-style-span&#34;&gt;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- &nbsp;Made in Vietnam and foreign countries&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; font-size: medium; &#34; class=&#34;Apple-style-span&#34;&gt;&lt;span style=&#34;font-family: Arial, Verdana, sans-serif; font-size: 12px; &#34; class=&#34;Apple-style-span&#34;&gt;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- &nbsp;Use: stair, desktop of cooking room, the front of building&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;div style=&#34;background-color: rgb(255, 255, 255); padding-top: 5px; padding-right: 5px; padding-bottom: 5px; padding-left: 5px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Arial, Verdana, sans-serif; font-size: 12px; &#34;&gt;
&lt;ul style=&#34;margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; &#34; class=&#34;mat_main_list&#34;&gt;
    &lt;p&gt;&nbsp;&lt;/p&gt;
&lt;/ul&gt;
&lt;/div&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;', 1, N'', CAST(N'2011-11-14T00:00:00.000' AS DateTime), N'admin', 1, 207, N'', 0, 0, 0)
INSERT [dbo].[tbl_news] ([PK_NewsID], [FK_CategoryID], [FK_LangID], [C_Name], [C_Des], [C_Content], [C_Hot], [C_Img], [C_Create], [C_Author], [C_Active], [C_Rank], [C_Attach], [C_Download], [C_SupperHot], [C_Tieudiem]) VALUES (219, 36, 2, N'Thao Dien Villa', N'', N'&lt;p&gt;&lt;b&gt;&lt;img width=&#34;180&#34; vspace=&#34;10&#34; hspace=&#34;10&#34; height=&#34;214&#34; align=&#34;left&#34; src=&#34;/data/image/thao%20dien%209.jpg&#34; alt=&#34;&#34; /&gt;Add:&lt;/b&gt; District 2nd, Hochiminh City&lt;/p&gt;
&lt;div class=&#34;label&#34;&gt;&nbsp;&lt;/div&gt;
&lt;div class=&#34;hr&#34;&gt;&lt;hr /&gt;
&lt;/div&gt;
&lt;div class=&#34;hinhspb label&#34;&gt;&lt;b&gt;The size of building:&lt;/b&gt;&nbsp; Thao Dien Villa&lt;/div&gt;
&lt;div class=&#34;hinhspb label&#34;&gt;&nbsp;&lt;/div&gt;
&lt;div class=&#34;hr&#34;&gt;&lt;hr /&gt;
&lt;/div&gt;
&lt;div class=&#34;hinhspb label&#34;&gt;&lt;b&gt;Complete year:&lt;/b&gt; 2010&lt;/div&gt;
&lt;div class=&#34;hinhspb label&#34;&gt;&nbsp;&lt;/div&gt;
&lt;div class=&#34;hr&#34;&gt;&lt;hr /&gt;
&lt;/div&gt;
&lt;div class=&#34;hinhspb label&#34;&gt;&lt;b&gt;Use rocks:&lt;/b&gt; Yellow, Red desert&lt;/div&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;p&gt;&lt;img width=&#34;200&#34; height=&#34;236&#34; alt=&#34;&#34; src=&#34;/data/image/thao%20dien%202.jpg&#34; /&gt;&lt;img width=&#34;359&#34; height=&#34;235&#34; alt=&#34;&#34; src=&#34;/data/image/thao%20dien%201.jpg&#34; /&gt;&lt;img width=&#34;202&#34; height=&#34;235&#34; alt=&#34;&#34; src=&#34;/data/image/thao%20dien%203.jpg&#34; /&gt;&lt;img width=&#34;371&#34; height=&#34;235&#34; alt=&#34;&#34; src=&#34;/data/image/thao%20dien%2010.jpg&#34; /&gt;&lt;img width=&#34;195&#34; height=&#34;235&#34; alt=&#34;&#34; src=&#34;/data/image/thao%20dien%204.jpg&#34; /&gt;&lt;img width=&#34;367&#34; height=&#34;235&#34; alt=&#34;&#34; src=&#34;/data/image/thao%20dien%208.jpg&#34; /&gt;&lt;img alt=&#34;&#34; src=&#34;/data/image/thao%20dien%207.jpg&#34; style=&#34;width: 346px; height: 223px;&#34; /&gt;&lt;img alt=&#34;&#34; src=&#34;/data/image/thao%20dien%205.jpg&#34; style=&#34;width: 352px; height: 225px;&#34; /&gt;&lt;/p&gt;', 1, N'', CAST(N'2011-11-30T00:00:00.000' AS DateTime), N'admin', 1, 219, N'', 0, 0, 0)
INSERT [dbo].[tbl_news] ([PK_NewsID], [FK_CategoryID], [FK_LangID], [C_Name], [C_Des], [C_Content], [C_Hot], [C_Img], [C_Create], [C_Author], [C_Active], [C_Rank], [C_Attach], [C_Download], [C_SupperHot], [C_Tieudiem]) VALUES (229, 44, 1, N'Tuấn Khôi Shop', N'&lt;p&gt;&lt;strong&gt; &lt;/strong&gt;&lt;/p&gt;
&lt;p class=&#34;MsoListParagraph&#34; style=&#34;margin-left:18.0pt;mso-para-margin-left:0gd;&#10;text-indent:-18.0pt;mso-list:l0 level1 lfo1&#34;&gt;&nbsp;&lt;/p&gt;', N'&lt;p&gt;&lt;span style=&#34;font-size: large;&#34;&gt;Shop ch&uacute;ng t&ocirc;i, chuy&ecirc;n kinh doanh:&nbsp;&lt;/span&gt;&lt;/p&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); -webkit-text-stroke-width: 0px; text-align: justify; font-size: 15px !important; line-height: 22px !important;&#34;&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;- Thuốc, Thực phẩm chức năng, Mỹ phẩm, H&agrave;ng c&ocirc;ng nghệ x&aacute;ch tay cho B&eacute;, Mẹ v&agrave; Gia đ&igrave;nh &lt;/span&gt;
&lt;p&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;- Đồ d&ugrave;ng c&aacute; nh&acirc;n, Đồ gia dụng th&ocirc;ng minh v&agrave; tiện &iacute;ch&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;- Nhận đặt h&agrave;ng Ch&acirc;u &Acirc;u v&agrave; Nhật Bản theo y&ecirc;u cầu&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;color: rgb(255, 0, 0);&#34;&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;Rất h&acirc;n hạnh được phục vụ!&lt;/span&gt;&lt;/span&gt;&nbsp;&lt;/p&gt;
&lt;/div&gt;', 1, N'data/images/news/logo_27_05_2017_021159_503.png', CAST(N'2016-10-01T00:00:00.000' AS DateTime), N'admin', 1, 233, N'', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_news] OFF
SET IDENTITY_INSERT [dbo].[tbl_permission] ON 

INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1620, 68, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1621, 37, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1622, 86, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1623, 153, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1624, 151, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1625, 173, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1626, 150, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1627, 152, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (542, 15, 3, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (543, 37, 3, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (544, 38, 3, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (545, 39, 3, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (546, 2, 3, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (547, 3, 3, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (548, 4, 3, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (549, 27, 3, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (550, 15, 4, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (551, 37, 4, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (552, 38, 4, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (553, 39, 4, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (554, 2, 4, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (555, 3, 4, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (556, 4, 4, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (557, 27, 4, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1559, 128, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1560, 143, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1561, 130, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1562, 125, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1563, 122, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1564, 89, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1565, 92, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1566, 90, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1567, 135, 7, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1628, 2, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1629, 3, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1408, 1, 2, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1630, 4, 1, 1)
INSERT [dbo].[tbl_permission] ([PK_PermissionID], [FK_MenuID], [FK_GroupMemberID], [C_Change]) VALUES (1631, 27, 1, 1)
SET IDENTITY_INSERT [dbo].[tbl_permission] OFF
SET IDENTITY_INSERT [dbo].[tbl_product] ON 

INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (357, 3, N'Pregnacare Conception', N'&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;Pregnacare&reg; Conception&lt;/font&gt;&lt;/h2&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;Pregnacare&reg; Conception l&agrave; vi&ecirc;n dinh dưỡng được thiết kế đặc biệt để hỗ trợ c&aacute;c y&ecirc;u cầu dinh dưỡng của phụ nữ chuẩn bị mang thai. C&ocirc;ng thức bao gồm inositol, l-arginine, n-acetyl cysteine ​​v&agrave; selenium cộng với 400mcg axit folic. Pregnacare&reg; được sản xuất tại Anh v&agrave; l&agrave; vi&ecirc;n bổ sung c&oacute; uy t&iacute;n v&agrave; b&aacute;n chạy nhất ở thị trường n&agrave;y.&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Th&agrave;nh phần&lt;/strong&gt;: Folic Acid, antioxidant minerals with natural Vitamin E, Inositol, L-Arginine, N-acetyl cysteine, Vitamin B12.&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 300.000&nbsp;&lt;/font&gt;/ hộp (gồm 30 vi&ecirc;n cho nữ - mỗi ng&agrave;y uống 1 vi&ecirc;n sau bữa ăn, bắt đầu uống khi c&oacute; dự định mang thai)&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; line-height: 22px !important;&#34;&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;color: rgb(135, 135, 135); font-family: Verdana !important; font-size: 15px !important; margin: 0px; padding: 0.5em 0px; line-height: 22px !important;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255); font-family: Verdana; font-size: 15px;&#34;&gt;Vitabiotics (&lt;/span&gt;&lt;font color=&#34;#0000ff&#34; face=&#34;Verdana&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;https://www.vitabiotics.com/pregnacare/conception)&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;
&lt;p style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;Anh Quốc&lt;/span&gt;&lt;/span&gt;&nbsp;&lt;/p&gt;
&lt;/div&gt;', N'data/images/product/PreConception_26_05_2017_155932_737.png', 1, 1, 366, N'81920001', CAST(300000 AS Decimal(18, 0)), CAST(N'2017-05-26T15:58:20.253' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (358, 3, N'Pregnacare His and Her', N'&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;Pregnacare&reg; His &amp; Her&lt;/font&gt;&lt;/h2&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;Pregnacare&reg; His &amp; Her Conception l&agrave; vi&ecirc;n dinh dưỡng thuận tiện cho c&aacute;c cặp vợ chồng uống h&agrave;ng ng&agrave;y để bồi dưỡng sức khỏe sinh sản cũng như sức khỏe tổng thể. G&oacute;i k&eacute;p c&oacute; chứa vi&ecirc;n Pregnacare&reg; Conception v&agrave; Wellman&reg; Conception được thiết kế đặc biệt để hỗ trợ cho cả nam giới v&agrave; phụ nữ đang c&oacute; &yacute; định sinh con. Pregnacare&reg; được sản xuất tại Anh v&agrave; l&agrave; vi&ecirc;n bổ sung c&oacute; uy t&iacute;n v&agrave; b&aacute;n chạy nhất ở thị trường n&agrave;y.&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Th&agrave;nh phần&lt;/strong&gt;:
&lt;ul style=&#34;overflow: hidden; padding-left: 3em !important; margin: 5px 0px !important; list-style-position: outside !important; list-style-image: initial !important;&#34;&gt;
    &lt;li style=&#34;padding-left: 5px !important; margin: 3px 0px 0px !important; list-style: disc outside !important;&#34;&gt;&lt;em style=&#34;position: relative;&#34;&gt;Pregnacare&reg; Conception&lt;/em&gt;: Folic Acid, Inositol, L-Arginine, N-acetyl cysteine, Vitamin B12 v&agrave; c&aacute;c kho&aacute;ng chất cần thiết kh&aacute;c.&lt;/li&gt;
    &lt;li style=&#34;padding-left: 5px !important; margin: 3px 0px 0px !important; list-style: disc outside !important;&#34;&gt;&lt;em style=&#34;position: relative;&#34;&gt;Wellman&reg; Conception&lt;/em&gt;: Peruvian MACA Extract, Co-Enzyme Q10, Folic Acid, Lycopene, Siberian Ginseng Extract, Pine Bark Extract.&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 540.000&nbsp;&lt;/font&gt;/ hộp (gồm 30 vi&ecirc;n cho nam + 30 vi&ecirc;n cho nữ - mỗi ng&agrave;y uống 1 vi&ecirc;n sau bữa ăn, bắt đầu uống khi c&oacute; dự định mang thai)&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;
&lt;p style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;Vitabiotics (&lt;/span&gt;&lt;font face=&#34;Verdana&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;https://www.vitabiotics.com/pregnacare/hisandher&lt;/span&gt;&lt;/font&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;Anh Quốc&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;/div&gt;', N'data/images/product/tghn-vien-uong-thu-thai-pregnacare-his-and-her_03_05_2017_16314_163.jpg', 1, 1, 365, N'81920002', CAST(540000 AS Decimal(18, 0)), CAST(N'2017-05-26T16:03:15.157' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (359, 3, N'Pregnacare Original', N'&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;div style=&#34;color: rgb(135, 135, 135); font-family: Arial, Helvetica, sans-serif; font-size: 13px;&#34;&gt;
&lt;div class=&#34;wsite-multicol&#34; style=&#34;position: relative; direction: ltr;&#34;&gt;
&lt;div class=&#34;wsite-multicol-table-wrap&#34; style=&#34;margin: 0px -15px;&#34;&gt;
&lt;table class=&#34;wsite-multicol-table&#34; style=&#34;position: relative; border-collapse: collapse; table-layout: fixed; width: 752px; margin: 0px !important; border-width: 0px !important; border-style: initial !important; border-color: initial !important; padding: 0px !important;&#34;&gt;
    &lt;tbody class=&#34;wsite-multicol-tbody&#34;&gt;
        &lt;tr class=&#34;wsite-multicol-tr&#34;&gt;
            &lt;td class=&#34;wsite-multicol-col&#34; style=&#34;vertical-align: top; padding: 0px 15px; width: 424px; margin: 0px !important; border-width: 0px !important; border-style: initial !important; border-color: initial !important;&#34;&gt;
            &lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;Pregnacare&reg; Original 30 vi&ecirc;n&lt;/font&gt;&lt;/h2&gt;
            &lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;Pregnacare&reg; Original được sản xuất tại Anh, c&oacute; chứa 400 mcg axit folic v&agrave; 18 chất dinh dưỡng kh&aacute;c cần thiết cho sức khỏe của mẹ v&agrave; b&eacute;. Pregnacare&reg; l&agrave; vi&ecirc;n bổ sung c&oacute; uy t&iacute;n v&agrave; b&aacute;n chạy nhất ở Anh, được ph&aacute;t triển d&agrave;nh cho phụ nữ mang thai trong 3 th&aacute;ng đầu thai kỳ.&lt;br /&gt;
            &lt;br /&gt;
            &lt;strong&gt;&nbsp;Th&agrave;nh phần&lt;/strong&gt;: 19 vitamins v&agrave; kho&aacute;ng chất,&nbsp;trong&nbsp;đ&oacute; c&oacute;&nbsp;vitamin B12 v&agrave; 400 mcg folic acid.&nbsp;&lt;br /&gt;
            &lt;br /&gt;
            &lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 250.000&lt;/font&gt;&nbsp;/ hộp 30 vi&ecirc;n (mỗi ng&agrave;y uống 1 vi&ecirc;n sau bữa ăn, trong khi mang thai 3 th&aacute;ng đầu)&lt;/div&gt;
            &lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; text-align: justify; line-height: 22px !important;&#34;&gt;
            &lt;p style=&#34;text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255); font-family: Verdana; font-size: 15px;&#34;&gt;Vitabiotics (&lt;/span&gt;&lt;font color=&#34;#0000ff&#34; face=&#34;Verdana&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;https://www.vitabiotics.com/pregnacare/original)&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;
            &lt;p style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;Anh Quốc&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
            &lt;/div&gt;
            &lt;/td&gt;
        &lt;/tr&gt;
    &lt;/tbody&gt;
&lt;/table&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;div style=&#34;color: rgb(135, 135, 135); font-family: Arial, Helvetica, sans-serif; font-size: 13px;&#34;&gt;&nbsp;&lt;/div&gt;', N'data/images/product/PreOriginal_26_05_2017_171936_817.png', 1, 1, 364, N'81920003', CAST(250000 AS Decimal(18, 0)), CAST(N'2017-05-26T17:19:39.190' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (360, 3, N'Pregnacare Plus', N'&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;Pregnacare&reg; Plus&lt;/font&gt;&lt;/h2&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;Pregnacare&reg; Plus l&agrave; c&ocirc;ng thức l&yacute; tưởng cho mọi giai đoạn của thai kỳ từ trước khi thụ thai, trong khi mang thai v&agrave; trong thời gian cho con b&uacute;. Mỗi vi&ecirc;n trong g&oacute;i k&eacute;p bao gồm đầy đủ c&aacute;c vitamin tổng hợp ban đầu,&nbsp; cung cấp tất cả c&aacute;c chất dinh dưỡng cần thiết cho thai kỳ c&ugrave;ng với 400 mcg axit folic. Pregnacare&reg; được sản xuất tại Anh v&agrave; l&agrave; vi&ecirc;n bổ sung c&oacute; uy t&iacute;n v&agrave; b&aacute;n chạy nhất ở thị trường n&agrave;y.&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Th&agrave;nh phần&lt;/strong&gt;: 19 vitamins v&agrave; kho&aacute;ng chất,&nbsp;trong&nbsp;đ&oacute; c&oacute;&nbsp;vitamin B12 v&agrave; 400 mcg folic acid cộng với Omega-3 bao gồm&nbsp;300mg DHA.&nbsp;&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 450.000&nbsp;&lt;/font&gt;/ hộp (gồm&nbsp;28 vi&ecirc;n Pregnacare&reg; Original +&nbsp;28 vi&ecirc;n Omega-3 - mỗi ng&agrave;y uống 1 vi&ecirc;n mỗi loại sau bữa ăn, trong khi mang thai 3 th&aacute;ng giữa)&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; line-height: 22px !important;&#34;&gt;
&lt;p style=&#34;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255); font-family: Verdana; font-size: 15px;&#34;&gt;Vitabiotics (&lt;/span&gt;&lt;font color=&#34;#0000ff&#34; face=&#34;Verdana&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;https://www.vitabiotics.com/pregnacare/plus&lt;/span&gt;&lt;font color=&#34;#333333&#34; face=&#34;Roboto, sans-serif&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;)&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;
&lt;p style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;Anh Quốc&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;/div&gt;', N'data/images/product/PrePlus_26_05_2017_172318_322.png', 1, 1, 363, N'81920004', CAST(450000 AS Decimal(18, 0)), CAST(N'2017-05-26T17:22:59.073' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (362, 3, N'Pregnacare Breastfeeding', N'&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;Pregnacare&reg; Breastfeeding&lt;/font&gt;&lt;/h2&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;Pregnacare&reg; Breast-feeding l&agrave; sản phẩm trọn g&oacute;i với đầy đủ c&aacute;c th&agrave;nh phần quan trọng cho b&agrave; mẹ giai đoạn sau sinh. C&ocirc;ng thức c&acirc;n đối to&agrave;n diện c&aacute;c vi chất dinh dưỡng gi&uacute;p c&aacute;c mẹ đảm bảo nguồn sữa dồi d&agrave;o v&agrave; bao gồm c&aacute;c chất dinh dưỡng hỗ trợ đặc biệt như canxi, vitamin D3 v&agrave; K. Pregnacare&reg; được sản xuất tại Anh v&agrave; l&agrave; vi&ecirc;n bổ sung c&oacute; uy t&iacute;n v&agrave; b&aacute;n chạy nhất ở thị trường n&agrave;y.&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Th&agrave;nh phần&lt;/strong&gt;: Canxi 500 mg, c&aacute;c vitamins v&agrave; kho&aacute;ng chất cộng với Omega-3.&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 500.000&nbsp;&lt;/font&gt;/ hộp (gồm&nbsp;56 vi&ecirc;n Pregnacare&reg; Breast-feeding&nbsp; +&nbsp;28 vi&ecirc;n Omega-3 - mỗi ng&agrave;y uống&nbsp;2 vi&ecirc;n Pregnacare&reg; Breast-feeding v&agrave; 1 vi&ecirc;n&nbsp;Omega-3&nbsp;sau bữa ăn trong thời gian cho con b&uacute;)&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;
&lt;p style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255); font-family: Verdana; font-size: 15px;&#34;&gt;Vitabiotics (&lt;/span&gt;&lt;font color=&#34;#0000ff&#34; face=&#34;Verdana&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;https://www.vitabiotics.com/pregnacare/breastfeeding&lt;/span&gt;&lt;font color=&#34;#333333&#34; face=&#34;Roboto, sans-serif&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;)&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;
&lt;p style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;Anh Quốc&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;/div&gt;', N'data/images/product/PreBreast-feeding_26_05_2017_173914_228.png', 1, 1, 361, N'81920006', CAST(500000 AS Decimal(18, 0)), CAST(N'2017-05-26T17:38:26.573' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (363, 3, N'Pregnacare Cream', N'&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;Pregnacare&reg; Cream&lt;/font&gt;&lt;/h2&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;Pregnacare&reg; Cream l&agrave; một loại kem b&ocirc;i mới, với c&ocirc;ng thức đặc biệt để chống rạn da trong thời gian mang thai v&agrave; gi&uacute;p l&agrave;m co da sau khi sinh.&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;font-size: 15px !important; line-height: 22px !important; margin: 0px; padding: 0.5em 0px; font-family: Verdana !important; color: rgb(135, 135, 135); text-align: justify;&#34;&gt;&lt;strong&gt;Th&agrave;nh phần&lt;/strong&gt;: vitamins C &amp; E, Calendula chiết xuất v&agrave; dầu Evening Primrose.&nbsp;&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 250.000&nbsp;&lt;/font&gt;/ hộp 100ml (d&ugrave;ng h&agrave;ng ng&agrave;y trong qu&aacute; tr&igrave;nh mang thai v&agrave; sau khi sinh cho v&ugrave;ng bụng, eo, đ&ugrave;i v&agrave; ngực - tr&aacute;nh đầu v&uacute;)&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; line-height: 22px !important;&#34;&gt;
&lt;p style=&#34;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255); font-family: Verdana; font-size: 15px;&#34;&gt;Vitabiotics (&lt;/span&gt;&lt;font color=&#34;#0000ff&#34; face=&#34;Verdana&#34;&gt;&lt;font&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;https://www.vitabiotics.com/shop/pregnacare/stretch-cream&lt;/span&gt;&lt;font color=&#34;#333333&#34; face=&#34;Arial, Helvetica, sans-serif&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;)&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;
&lt;p style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;Anh Quốc&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;/div&gt;', N'data/images/product/PreCream_26_05_2017_174312_587.png', 1, 1, 360, N'81920007', CAST(250000 AS Decimal(18, 0)), CAST(N'2017-05-26T17:43:12.983' AS DateTime), 0)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (364, 3, N'Ultra Calcium', N'&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;Ultra&reg; Calcium&lt;/font&gt;&lt;/h2&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;Ultra&reg; Calcium được sản xuất tại Anh, c&oacute; chứa Canxi v&agrave; Vitamin D3 gi&uacute;p tăng cường khả năng hấp thụ Canxi, được ph&aacute;t triển để bổ sung nhu cầu Canxi tăng cao của phụ nữ mang thai v&agrave; cho con b&uacute;. Sản phẩm cũng được khuy&ecirc;n d&ugrave;ng cho trẻ nhỏ hoặc người cao tuổi cần bổ sung Canxi.&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;br /&gt;
&lt;strong&gt;Th&agrave;nh phần&lt;/strong&gt;: Vitamin D3 v&agrave; Canxi.&nbsp;&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 180.000&lt;/font&gt;&nbsp;/ hộp 30 vi&ecirc;n (mỗi ng&agrave;y uống 1 vi&ecirc;n sau bữa ăn khi mang thai v&agrave; sau sinh để bổ sung Canxi)&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; text-align: justify; line-height: 22px !important;&#34;&gt;
&lt;p style=&#34;text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255); font-family: Verdana; font-size: 15px;&#34;&gt;Vitabiotics (&lt;/span&gt;&lt;font color=&#34;#0000ff&#34; face=&#34;Verdana&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;https://www.vitabiotics.com/ultra/calcium&lt;/span&gt;&lt;font color=&#34;#333333&#34; face=&#34;Roboto, sans-serif&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;)&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;
&lt;p style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;Anh Quốc&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;/div&gt;', N'data/images/product/UltraCalcium_26_05_2017_211837_718.png', 1, 1, 357, N'81920008', CAST(180000 AS Decimal(18, 0)), CAST(N'2017-05-26T21:18:37.927' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (366, 3, N'Ultra Folic Acid', N'&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;Ultra&reg; Folic Acid&lt;/font&gt;&lt;/h2&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;Ultra&reg; Folic Acid được sản xuất tại Anh, c&oacute; chứa Acid Folic (được biết đến l&agrave; Vitamin B9) v&agrave; Vitamin B12 gi&uacute;p tăng cường khả năng miễn dịch, giải ph&oacute;ng năng lượng gi&uacute;p giảm căng thẳng v&agrave; mệt mỏi. Ngo&agrave;i ra, Acid Folic gi&uacute;p giảm thiểu dị tật bẩm sinh ở thai nhi, n&ecirc;n sản phẩm n&agrave;y được đặc biệt khuy&ecirc;n d&ugrave;ng cho phụ nữ chuẩn bị c&oacute; thai v&agrave; khi mang thai trong 3 th&aacute;ng đầu.&nbsp;&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;br /&gt;
&lt;strong&gt;Th&agrave;nh phần&lt;/strong&gt;: Acid Folic v&agrave; Vitamin B12&nbsp;&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;br /&gt;
&lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 200.000&lt;/font&gt;&nbsp;/ hộp 60 vi&ecirc;n (mỗi ng&agrave;y uống 1 vi&ecirc;n sau bữa ăn khi chuẩn bị mang thai v&agrave; trong 3 th&aacute;ng đầu thai kỳ)&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; text-align: justify; line-height: 22px !important;&#34;&gt;
&lt;p style=&#34;text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255); font-family: Verdana; font-size: 15px;&#34;&gt;Vitabiotics (&lt;/span&gt;&lt;font color=&#34;#0000ff&#34; face=&#34;Verdana&#34;&gt;&lt;font&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;https://www.vitabiotics.com/ultra/folic-acid)&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;
&lt;p style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;Anh Quốc&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;/div&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;', N'data/images/product/UltraFolic_09_05_2017_22921_231.png', 1, 1, 359, N'81920010', CAST(200000 AS Decimal(18, 0)), CAST(N'2017-05-26T22:09:21.783' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (367, 13, N'Wellbaby Multi-vitamin Drops', N'&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;Wellbaby&reg; Multi-vitamin Drops&lt;/font&gt;&lt;/h2&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); -webkit-text-stroke-width: 0px; text-align: justify; font-size: 15px !important; line-height: 22px !important;&#34;&gt;&lt;strong&gt;Wellbaby&reg; Multi-vitamin Drops&lt;/strong&gt;&nbsp;dạng lỏng, được ph&aacute;t triển đặc biệt để cung cấp cho trẻ sơ sinh từ 4 th&aacute;ng đến 12 th&aacute;ng tuổi nguồn năng lượng tự nhi&ecirc;n bao gồm 16 loại vitamin thiết yếu, kho&aacute;ng chất v&agrave; mạch nha Alpine Thụy Sĩ. Sản phẩm hỗ trợ ph&aacute;t triển to&agrave;n diện n&atilde;o bộ v&agrave; hệ xương cho trẻ sơ sinh.&lt;/div&gt;
&lt;/h2&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Th&agrave;nh phần&lt;/strong&gt;: (per 1 ml) Vitamin A 350mcg RE; Vitamin D3(280 IU) 7mcg : Vitamin C 12mg; Vitamin E 2mg &alpha;-TE; Thiamin (Vitamin B1) 0.2mg; Riboflavin (Vitamin B2) 0.25mg; Vitamin B6 0.25mg; Vitamin B12 0.4mcg; Folacin (Folic acid) 50mcg; Pantothenic acid 0.9mg; Niacin (Vitamin B3) 3mg NE; Biotin 8mcg; Iron 2.2mg; Zinc 1.5mg;L-Lysine 10mg; Malt Extract 250mg&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 210.000&lt;/font&gt;&nbsp;/ lọ 30 ml (d&ugrave;ng cho trẻ từ 4 đến 12 th&aacute;ng, mỗi ng&agrave;y uống hai lần, mỗi lần 0.5 ml (đo bằng xy lanh))&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; text-align: justify; line-height: 22px !important;&#34;&gt;
&lt;p style=&#34;text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255); font-family: Verdana; font-size: 15px;&#34;&gt;Vitabiotics (&lt;/span&gt;&lt;font color=&#34;#0000ff&#34; face=&#34;Verdana&#34;&gt;&lt;font&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;https://www.vitabiotics.com/wellbaby/multi-vitamin-baby-drops&lt;/span&gt;&lt;font color=&#34;#333333&#34; face=&#34;Arial, Helvetica, sans-serif&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;)&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;
&lt;p style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;Anh Quốc&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;/div&gt;', N'data/images/product/WellbabyMultiDrop_01_05_2017_23119_739.png', 1, 1, 368, N'81920011', CAST(210000 AS Decimal(18, 0)), CAST(N'2017-05-26T23:01:19.363' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (368, 13, N'Wellbaby Vit D Drops', N'&lt;p&gt;&nbsp;&nbsp;&lt;/p&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;Wellbaby&reg; Vit D Drops&lt;/font&gt;&lt;/h2&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); -webkit-text-stroke-width: 0px; text-align: justify; font-size: 15px !important; line-height: 22px !important;&#34;&gt;&lt;strong&gt;Wellbaby&reg; Vit D Drops&lt;/strong&gt;&nbsp;dạng lỏng, được ph&aacute;t triển đặc biệt để cung cấp cho trẻ sơ sinh v&agrave; trẻ nhỏ từ khi mới sinh đến 4 tuổi nguồn Vitamin D cần thiết cho sự ph&aacute;t triển hệ xương, răng v&agrave; chiều cao của trẻ sơ sinh v&agrave; trẻ nhỏ.&lt;/div&gt;
&lt;/h2&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Th&agrave;nh phần&lt;/strong&gt;: Vitamin D3(400 IU) 10 microgram (per 0.5ml)&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 200.000&lt;/font&gt;&nbsp;/ lọ 30 ml (d&ugrave;ng cho trẻ từ khi mới sinh đến 4 tuổi, mỗi ng&agrave;y uống một lần 0.5 ml (đo bằng xy lanh). Sử dụng trong v&ograve;ng 3 th&aacute;ng sau khi mở nắp)&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; text-align: justify; line-height: 22px !important;&#34;&gt;
&lt;p style=&#34;text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255); font-family: Verdana; font-size: 15px;&#34;&gt;Vitabiotics (&lt;/span&gt;&lt;font color=&#34;#0000ff&#34; face=&#34;Verdana&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;https://www.vitabiotics.com/wellbaby/vit-d-drops&lt;/span&gt;&lt;font color=&#34;#333333&#34; face=&#34;Arial, Helvetica, sans-serif&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;)&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;
&lt;p style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;Anh Quốc&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;/div&gt;', N'data/images/product/WellbabyVitDDrop_26_05_2017_231931_839.png', 1, 1, 369, N'81920012', CAST(200000 AS Decimal(18, 0)), CAST(N'2017-05-26T23:19:31.790' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (370, 13, N'Siro ho Prospan', N'&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;Siro ho Prospan&lt;/font&gt;&lt;/h2&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); -webkit-text-stroke-width: 0px; text-align: justify; font-size: 15px !important; line-height: 22px !important;&#34;&gt;&lt;strong&gt;Prospan&lt;/strong&gt;&nbsp;được b&agrave;o chế với th&agrave;nh phần thảo dược tự nhi&ecirc;n từ l&aacute; thường xu&acirc;n v&agrave; c&aacute;c loại dầu thảo dược. Prospan mang đến bộ ba t&aacute;c động: long đờm, gi&atilde;n phế quản, giảm ho để điều trị c&aacute;c triệu chứng ho, đờm, vi&ecirc;m đường h&ocirc; hấp, vi&ecirc;m phế quản, d&ugrave;ng được cho cả người lớn v&agrave; trẻ em. Đặc biệt, siro ho Prospan c&oacute; độ an to&agrave;n cao nhờ th&agrave;nh phần ch&iacute;nh l&agrave; thảo dược c&oacute; m&ugrave;i thơm v&agrave; vị dễ chịu ph&ugrave; hợp cho trẻ nhỏ.&lt;/div&gt;
&lt;/h2&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Th&agrave;nh phần&lt;/strong&gt;: Chiết xuất kh&ocirc; của l&aacute; c&acirc;y thường xu&acirc;n: 0,7g; Kali sorbat:  0,134 g; C&aacute;c th&agrave;nh phần kh&aacute;c: acid citric khan, keo xanthan, chất tạo hương, dung dịch sorbitol 70%
&lt;p&gt;&lt;br /&gt;
&lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 220.000&lt;/font&gt;&nbsp;/ lọ 100ml&lt;/p&gt;
&lt;p&gt;- B&eacute; từ 1 th&aacute;ng tới 1 tuổi: ng&agrave;y uống 2 lần, mỗi lần 2.5ml&lt;/p&gt;
&lt;p&gt;- B&eacute; từ 1 tuổi đến 6 tuổi: ng&agrave;y uống 3 lần, mỗi lần 2.5ml&lt;/p&gt;
&lt;p&gt;- Trẻ em từ 6 tuổi đến 12 tuổi: mỗi ng&agrave;y uống 2 lần, mỗi lần 5ml&lt;/p&gt;
&lt;p&gt;- Trẻ em từ 12 tuổi &amp; người lớn: mỗi ng&agrave;y uống 3 lần, mỗi lần 5ml&lt;/p&gt;
&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; text-align: justify; line-height: 22px !important;&#34;&gt;
&lt;p style=&#34;text-align: justify;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255); font-family: Verdana; font-size: 15px;&#34;&gt;Hustensaft&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;font-family: Arial, Helvetica, sans-serif; text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;&lt;font color=&#34;#0000ff&#34;&gt;Đức&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;
&lt;/div&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;', N'data/images/product/Prospan_27_05_2017_001120_575.jpg', 1, 1, 371, N'81920014', CAST(220000 AS Decimal(18, 0)), CAST(N'2017-05-27T00:08:57.103' AS DateTime), 0)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (371, 13, N'Siro ho Muhi', N'&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;Siro ho Muhi&lt;/font&gt;&lt;/h2&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); -webkit-text-stroke-width: 0px; text-align: justify; font-size: 15px !important; line-height: 22px !important;&#34;&gt;&lt;strong&gt;Siro Muhi&lt;/strong&gt;&nbsp;l&agrave; d&ograve;ng sản phẩm chuy&ecirc;n trị ho-cảm của c&ocirc;ng ty Ikeadamohando, nh&agrave; sản xuất h&agrave;ng đầu về dược phẩm tại Nhật Bản. Đ&acirc;y l&agrave; th&agrave;nh quả của những nghi&ecirc;n cứu chuy&ecirc;n s&acirc;u của c&ocirc;ng ty về h&ocirc; hấp ở trẻ em. Siro Muhi được c&aacute;c b&agrave; mẹ Nhật ưa d&ugrave;ng để điều trị c&aacute;c chứng bệnh thường gặp cho c&aacute;c b&eacute; từ 3 th&aacute;ng tuổi đến 7 tuổi như sốt, ho,  vi&ecirc;m họng, vi&ecirc;m mũi, v&agrave; điều trị c&aacute;c triệu chứng từ cảm lạnh v&agrave; cảm c&uacute;m.&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); -webkit-text-stroke-width: 0px; text-align: justify; font-size: 15px !important; line-height: 22px !important;&#34;&gt;&lt;span style=&#34;color: rgb(128, 128, 128);&#34;&gt;&lt;span style=&#34;font-family: Arial;&#34;&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;&lt;span style=&#34;text-align: start;&#34;&gt;Siro Muhi Nhật chia ra l&agrave;m 3 d&ograve;ng sản phẩm:&nbsp;&lt;/span&gt;&lt;br style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: start;&#34; /&gt;
&lt;br style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: start;&#34; /&gt;
&lt;span style=&#34;text-align: start;&#34;&gt;1. Mầu hồng (vị đ&agrave;o) &nbsp;v&agrave; đỏ (vị d&acirc;u t&acirc;y): d&ugrave;ng khi b&eacute; bị cảm lạnh, cảm c&uacute;m k&egrave;m theo sốt, ho c&oacute; đờm, sổ mũi&lt;br /&gt;
&lt;br /&gt;
&lt;img src=&#34;http://www.ikedamohando.co.jp/products/anpanman_kaze/images/kazesyrup_ph01.jpg&#34; style=&#34;border: none; display: inline-block; max-width: 100%;&#34; alt=&#34;&#34; /&gt;&lt;br /&gt;
&lt;br /&gt;
Thuốc c&oacute; t&aacute;c dụng hạ sốt , giảm ho, ti&ecirc;u đờm, điều trị c&aacute;c triệu chứng đi k&egrave;m khi bị lạnh &nbsp;như sổ mũi, ngạt mũi, vi&ecirc;m họng, đau đầu, đau cơ, đau khớp&nbsp;&lt;span style=&#34;line-height: 20px;&#34;&gt;....&lt;br /&gt;
&lt;br /&gt;
2. M&agrave;u xanh dương (vị d&acirc;u): d&ugrave;ng khi b&eacute; bị ho c&oacute; đờm hoặc kh&ocirc;ng đờm nhưng kh&ocirc;ng sốt&lt;/span&gt;&lt;br /&gt;
&lt;img alt=&#34;T&ocirc;i t&ocirc;i ngừng ho Anpanman l&agrave; kh&oacute;!  Trẻ em SEKIDO v&igrave; xi-r&ocirc; S chưa từng c&oacute;&#34; src=&#34;http://www.ikedamohando.co.jp/products/anpanman_kaze/images/sekidomesyrup_ph01.jpg&#34; style=&#34;border: none; display: inline-block; max-width: 100%;&#34; /&gt;&lt;br /&gt;
&lt;br /&gt;
Thuốc c&oacute; t&aacute;c dụng giảm ho do dị ứng thời tiết, giảm ho do nằm điều h&ograve;a lạnh, hay ho do bị cảm lạnh, &nbsp;ho do dị ứng thời tiết, ti&ecirc;u đờm khi ho c&oacute; đờm.&lt;br /&gt;
&lt;br /&gt;
3. M&agrave;u xanh l&aacute; (vị d&acirc;u): Điều trị vi&ecirc;m mũi&nbsp;&lt;br /&gt;
&lt;br /&gt;
&lt;img alt=&#34;T&ocirc;i t&ocirc;i dừng lại ngột ngạt Anpanman mũi thật mạnh!  Trẻ em xi-r&ocirc; vi&ecirc;m mũi S chưa từng c&oacute;&#34; src=&#34;http://www.ikedamohando.co.jp/products/anpanman_kaze/images/biensyrup_ph01.jpg&#34; style=&#34;border: none; display: inline-block; max-width: 100%;&#34; /&gt;&lt;/span&gt;&lt;br style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: start;&#34; /&gt;
&lt;span style=&#34;text-align: start;&#34;&gt;Điều trị c&aacute;c chứng về vi&ecirc;m mũi cấp t&iacute;nh như vi&ecirc;m xoang, vi&ecirc;m mũi do dị ứng, sổ mũi, nghẹt mũi.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;
&lt;/h2&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Th&agrave;nh phần&lt;/strong&gt;: Clorpheniramin maleat: 4mg; dl-Methylephedrine hydrochloride: 30 mg; Tr&iacute;ch xuất cam thảo:  170mg; Th&agrave;nh phần thảo dược kh&aacute;c: 42.5mg; Fructose, D-sorbitol, citric acid, citric acid, Na, benzoic acid Na, paraben, edetate Na, ethanol, propylene glycol, caramel
&lt;p&gt;&lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 220.000&lt;/font&gt;&nbsp;/ lọ 120ml&lt;/p&gt;
&lt;p&gt;&nbsp;(1) Liều d&ugrave;ng Siro ho muhi m&agrave;u đỏ v&agrave; hồng:&lt;/p&gt;
&lt;p&gt;&nbsp;1 ng&agrave;y uống 3 lần sau bữa ăn, mỗi lần uống c&aacute;ch nhau 4h, kh&ocirc;ng uống qu&aacute; 6 lần/ng&agrave;y.&lt;/p&gt;
&lt;p&gt;&ndash; B&eacute; dưới 3 th&aacute;ng: chưa được d&ugrave;ng.&lt;/p&gt;
&lt;p&gt;&ndash; B&eacute; từ 3 th&aacute;ng &ndash; 6 th&aacute;ng tuổi: 5ml/lần.&lt;/p&gt;
&lt;p&gt;&ndash; B&eacute; từ 6 th&aacute;ng &ndash; 12 th&aacute;ng tuổi: 6ml/lần.&lt;/p&gt;
&lt;p&gt;&ndash; B&eacute; từ 6 th&aacute;ng &ndash; 36 th&aacute;ng tuổi: 10ml/lần.&lt;/p&gt;
&lt;p&gt;(2) Liều d&ugrave;ng siro ho Muhi xanh dương v&agrave; xanh l&aacute;&lt;/p&gt;
&lt;p&gt;1 ng&agrave;y uống 3 lần sau bữa ăn, mỗi lần uống c&aacute;ch nhau 4h, kh&ocirc;ng uống qu&aacute; 6 lần/ng&agrave;y.&lt;/p&gt;
&lt;p&gt;&ndash; B&eacute; dưới 3 th&aacute;ng: chưa được d&ugrave;ng.&lt;/p&gt;
&lt;p&gt;&ndash; B&eacute; từ 3 th&aacute;ng &ndash; dưới 1 tuổi: 3ml/lần.&lt;/p&gt;
&lt;p&gt;&ndash; B&eacute; từ 1 tuổi &ndash; dưới 3 tuổi: 6ml/lần.&lt;/p&gt;
&lt;p&gt;&ndash; B&eacute; từ 3 tuổi &ndash; dưới 5 tuổi: 7.5ml/lần.&lt;/p&gt;
&lt;p&gt;&ndash; B&eacute; từ 5 tuổi &ndash; dưới 8 tuổi: 10ml/lần.&nbsp;&lt;/p&gt;
&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; margin: 0px; padding: 0.5em 0px; text-align: justify; line-height: 22px !important;&#34;&gt;
&lt;p&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255); font-family: Verdana; font-size: 15px;&#34;&gt;Ikeadamohando&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;&lt;font color=&#34;#0000ff&#34;&gt;Nhật Bản&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;
&lt;/div&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;', N'data/images/product/siro_ho_muhi_nhat_27_05_2017_004354_634.jpg', 1, 1, 372, N'81920015', CAST(210000 AS Decimal(18, 0)), CAST(N'2017-05-27T00:37:32.460' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (372, 13, N'Kẹo gấu DAS gensunde Plus', N'&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;DAS gensunde Plus Mutivitamin - Barchen&lt;/font&gt;&lt;/h2&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); -webkit-text-stroke-width: 0px; text-align: justify; font-size: 15px !important; line-height: 22px !important;&#34;&gt;&lt;strong&gt;Kẹo gấu DAS&lt;/strong&gt;&nbsp;dạng vi&ecirc;n dẻo, cung cấp nhiều vitamin v&agrave; kho&aacute;ng chất cho sự ph&aacute;t triển c&acirc;n bằng của trẻ, n&acirc;ng cao hệ miễn dịch v&agrave; ph&ograve;ng ngừa c&aacute;c bệnh do thiếu vitamin. Với h&igrave;nh dạng những ch&uacute; gấu ngộ nghĩnh, hương vị tr&aacute;i c&acirc;y thơm ngon sẽ khiến b&eacute; v&ocirc; c&ugrave;ng th&iacute;ch th&uacute;, k&iacute;ch th&iacute;ch b&eacute; ăn ngon v&agrave; tăng c&acirc;n.&lt;/div&gt;
&lt;/h2&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Th&agrave;nh phần&lt;/strong&gt;: C&aacute;c loại vitamin nh&oacute;m B, C, E, biotin, niacin, axit folic, siro glucose, nước tr&aacute;i c&acirc;y c&ocirc; đặc, s&aacute;p ong&hellip;(kh&ocirc;ng sử dụng m&agrave;u nh&acirc;n tạo, kh&ocirc;ng chất b&eacute;o, kh&ocirc;ng chứa chất bảo quản)&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 170.000&lt;/font&gt;&nbsp;/ hộp 60 vi&ecirc;n&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;D&ugrave;ng cho trẻ từ 4 tuổi:&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;- Trẻ từ 4-7 tuổi d&ugrave;ng 4 vi&ecirc;n/ng&agrave;y. &lt;br /&gt;
- Trẻ 7-10 tuổi d&ugrave;ng 6 vi&ecirc;n/ng&agrave;y. &lt;br /&gt;
- Trẻ lớn hơn d&ugrave;ng 8 vi&ecirc;n/ng&agrave;y.&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;font-family: Arial, Helvetica, sans-serif; margin: 0px; padding: 0.5em 0px; text-align: justify; line-height: 22px !important;&#34;&gt;
&lt;p style=&#34;text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;&lt;font color=&#34;#0000ff&#34;&gt;DAS gensunde Plus&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;color: rgb(51, 51, 51); text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;&lt;font color=&#34;#0000ff&#34;&gt;Đức&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;
&lt;/div&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;', N'data/images/product/GAU01_27_05_2017_011349_381.png', 1, 1, 367, N'81920016', CAST(170000 AS Decimal(18, 0)), CAST(N'2017-05-27T00:56:24.927' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (361, 3, N'Pregnacare Max', N'&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;Pregnacare&reg; Max&lt;/font&gt;&lt;/h2&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;Pregnacare&reg; Max cung cấp c&ocirc;ng thức tốt nhất cho c&aacute;c b&agrave; mẹ tương lai muốn c&oacute; sự hỗ trợ dinh dưỡng tối đa từ Pregnacare&reg;. Pregnacare&reg; Max bao gồm 400 mcg axit folic kết hợp với L-Methylfolate, c&ugrave;ng với c&aacute;c vitamin v&agrave; kho&aacute;ng chất, bao gồm 10 mcg Vitamin D, Canxi 500 mg, cộng với 300 mg DHA. Pregnacare&reg; được sản xuất tại Anh v&agrave; l&agrave; vi&ecirc;n bổ sung c&oacute; uy t&iacute;n v&agrave; b&aacute;n chạy nhất ở thị trường n&agrave;y.&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Th&agrave;nh phần&lt;/strong&gt;: 19 vitamins v&agrave; kho&aacute;ng chất, 400 mcg folic acid, L-Methylfolate, Inositol, L-Arginine, N-acetyl cysteine, 10 mcg Vitamin D, Canxi 500 mg, cộng với Omega-3.&nbsp;&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 600.000&nbsp;&lt;/font&gt;/ hộp (gồm&nbsp;56 vi&ecirc;n Pregnacare&reg; Max +&nbsp;28 vi&ecirc;n Omega-3 - mỗi ng&agrave;y uống&nbsp;2 vi&ecirc;n Pregnacare&reg; Max v&agrave; 1 vi&ecirc;n&nbsp;Omega-3&nbsp;sau bữa ăn, trong khi mang thai 3 th&aacute;ng cuối)&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;
&lt;p style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255); font-family: Verdana; font-size: 15px;&#34;&gt;Vitabiotics (&lt;/span&gt;&lt;font color=&#34;#0000ff&#34; face=&#34;Verdana&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;https://www.vitabiotics.com/pregnacare/max&lt;/span&gt;&lt;font color=&#34;#333333&#34; face=&#34;Roboto, sans-serif&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;)&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;
&lt;p style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;Anh Quốc&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;/div&gt;', N'data/images/product/PreMax_26_05_2017_172842_379.png', 1, 1, 362, N'81920005', CAST(600000 AS Decimal(18, 0)), CAST(N'2017-05-26T17:27:19.030' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (365, 3, N'Ultra Iron', N'&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;Ultra&reg; Iron&lt;/font&gt;&lt;/h2&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;Ultra&reg; Iron được sản xuất tại Anh, c&oacute; chứa Sắt v&agrave; c&aacute;c Vitamin cần thiết gi&uacute;p tăng cường sự h&igrave;nh th&agrave;nh hồng cầu, tăng cường khả năng miễn dịch, gi&uacute;p giảm căng thẳng mệt mỏi. Sản phẩm được khuy&ecirc;n d&ugrave;ng cho phụ nữ mang thai, cho con b&uacute;, bệnh nh&acirc;n trong giai đoạn phục hồi sau điều trị, v&agrave; người gầy yếu.&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;br /&gt;
&lt;strong&gt;Th&agrave;nh phần&lt;/strong&gt;: Sắt, Vitamin C, Vitamin B12 v&agrave; Acid Folic&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 190.000&lt;/font&gt;&nbsp;/ hộp 30 vi&ecirc;n (mỗi ng&agrave;y uống 1 vi&ecirc;n sau bữa ăn khi mang thai v&agrave; sau sinh để bổ sung Sắt)&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; margin: 0px; padding: 0.5em 0px; text-align: justify; line-height: 22px !important;&#34;&gt;
&lt;p style=&#34;text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255); font-family: Verdana; font-size: 15px;&#34;&gt;Vitabiotics (&lt;/span&gt;&lt;font color=&#34;#0000ff&#34; face=&#34;Verdana&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;https://www.vitabiotics.com/ultra/iron&lt;/span&gt;&lt;font color=&#34;#333333&#34; face=&#34;Roboto, sans-serif&#34;&gt;&lt;span style=&#34;font-size: 15px;&#34;&gt;)&lt;/span&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;
&lt;p style=&#34;text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255);&#34;&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;Anh Quốc&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;/div&gt;', N'data/images/product/UltraIron_06_05_2017_22617_772.png', 1, 1, 358, N'81920009', CAST(190000 AS Decimal(18, 0)), CAST(N'2017-05-26T22:06:17.140' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (373, 13, N'Thuốc trị muỗi đốt Muhi 50ml', N'&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;Thuốc trị muỗi đ&ocirc;t Muhi 50ml&lt;/font&gt;&lt;/h2&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); -webkit-text-stroke-width: 0px; text-align: justify; font-size: 15px !important; line-height: 22px !important;&#34;&gt;&lt;strong&gt;Thuốc trị muỗi đốt&lt;/strong&gt;&lt;b&gt;&nbsp;Muhi 50ml&lt;/b&gt; &nbsp;được thiết kế dạng lăn chứa c&aacute;c th&agrave;nh phần c&oacute; t&aacute;c dụng l&agrave;m dịu cơn ngứa, tan dần vết sưng, kh&ocirc;ng để lại sẹo khi bị muỗi đốt hay c&ocirc;n tr&ugrave;ng cắn.&nbsp;M&ugrave;i hương thảo dược dễ chịu. Sản phẩm được d&ugrave;ng cho trẻ từ 6 th&aacute;ng tuổi trở l&ecirc;n.&lt;/div&gt;
&lt;/h2&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Th&agrave;nh phần&lt;/strong&gt;: Acid acetic ester dexamethasone, diphenhydramine hydrochloride, l - tinh dầu bạc h&agrave;, dl - long n&atilde;o, axit glycyrrhetinic, isopropyl methyl phenol.&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 160.000&lt;/font&gt;&nbsp;/ lọ 50ml&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;D&ugrave;ng cho trẻ từ 6 th&aacute;ng tuổi:&nbsp;Mở nắp v&agrave; lăn ngay vết muỗi đốt, c&ocirc;n tr&ugrave;ng g&acirc;y ra v&agrave; c&oacute; thể b&ocirc;i lại sau 2 giờ. Ri&ecirc;ng đối với vết thương ở mặt th&igrave; cần lăn ra l&ograve;ng b&agrave;n tay sau đ&oacute; xoa nhẹ l&ecirc;n mặt.&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;Lưu &yacute;: Tr&aacute;nh b&ocirc;i trực tiếp dung dịch v&agrave;o vết da hở hay v&agrave;o mặt, Tr&aacute;nh tiếp x&uacute;c với mắt, Để xa tầm tay của trẻ, Kh&ocirc;ng để sản phẩm gần lửa n&oacute;ng.&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; text-align: justify; line-height: 22px !important;&#34;&gt;
&lt;p style=&#34;text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;text-align: justify; font-size: 15px;&#34;&gt;&lt;font color=&#34;#0000ff&#34; face=&#34;Verdana&#34;&gt;Ikeadamohando&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;&lt;font color=&#34;#0000ff&#34;&gt;Nhật Bản&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;
&lt;/div&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;', N'data/images/product/MuoiDotMuhi_27_05_2017_013834_703.jpg', 1, 1, 373, N'81920017', CAST(160000 AS Decimal(18, 0)), CAST(N'2017-05-27T01:37:12.127' AS DateTime), 0)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (162, 3, N'TSHL1', N'', N'data/images/product/13_11_2011_16584_479.jpg', 2, 1, 163, N'162', CAST(162 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (163, 3, N'TSHL2', N'', N'data/images/product/13_11_2011_165855_114.jpg', 2, 1, 166, N'163', CAST(163 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (164, 3, N'TSHL3', N'', N'data/images/product/13_11_2011_165948_356.jpg', 2, 1, 164, N'164', CAST(164 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (166, 3, N'TSHL5', N'', N'data/images/product/03_11_2011_17328_12.jpg', 2, 1, 162, N'166', CAST(166 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (167, 3, N'THL1', N'', N'data/images/product/13_11_2011_171826_979.jpg', 2, 1, 167, N'167', CAST(167 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (168, 3, N'THL2', N'', N'data/images/product/13_11_2011_171844_548.jpg', 2, 1, 168, N'168', CAST(168 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (169, 3, N'THL3', N'', N'data/images/product/13_11_2011_171926_70.jpg', 2, 1, 169, N'169', CAST(169 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (170, 3, N'THL4', N'', N'data/images/product/13_11_2011_171947_593.jpg', 2, 1, 170, N'170', CAST(170 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (171, 3, N'THL5', N'', N'data/images/product/13_11_2011_172010_784.jpg', 2, 1, 171, N'171', CAST(171 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (172, 3, N'THL6', N'', N'data/images/product/13_11_2011_172036_58.jpg', 2, 1, 172, N'172', CAST(172 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (173, 3, N'THL7', N'', N'data/images/product/13_11_2011_172057_418.jpg', 2, 1, 173, N'173', CAST(173 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (174, 3, N'THL8', N'', N'data/images/product/13_11_2011_172120_894.jpg', 2, 1, 174, N'174', CAST(174 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (175, 3, N'THL9', N'', N'data/images/product/13_11_2011_172142_452.jpg', 2, 1, 175, N'175', CAST(175 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (176, 3, N'THL10', N'', N'data/images/product/13_11_2011_17221_635.jpg', 2, 1, 176, N'176', CAST(176 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (177, 3, N'THL11', N'', N'data/images/product/13_11_2011_172221_503.jpg', 2, 1, 177, N'177', CAST(177 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (178, 3, N'THL12', N'', N'data/images/product/13_11_2011_172250_889.jpg', 2, 1, 178, N'178', CAST(178 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (179, 3, N'THL13', N'', N'data/images/product/13_11_2011_172325_96.jpg', 2, 1, 179, N'179', CAST(179 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (180, 3, N'THL14', N'', N'data/images/product/13_11_2011_172343_267.jpg', 2, 1, 180, N'180', CAST(180 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (181, 3, N'THL15', N'', N'data/images/product/13_11_2011_17244_112.jpg', 2, 1, 181, N'181', CAST(181 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (182, 3, N'THL16', N'', N'data/images/product/13_11_2011_172423_586.jpg', 2, 1, 182, N'182', CAST(182 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (183, 3, N'THL17', N'', N'data/images/product/13_11_2011_172523_639.jpg', 2, 1, 183, N'183', CAST(183 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (184, 3, N'THL18', N'', N'data/images/product/13_11_2011_172544_891.jpg', 2, 1, 184, N'184', CAST(184 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (185, 3, N'THL19', N'', N'data/images/product/13_11_2011_17266_641.jpg', 2, 1, 185, N'185', CAST(185 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (186, 3, N'THL20', N'', N'data/images/product/13_11_2011_172631_131.jpg', 2, 1, 186, N'186', CAST(186 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (187, 3, N'THL21', N'', N'data/images/product/13_11_2011_172652_512.jpg', 2, 1, 187, N'187', CAST(187 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (188, 3, N'THL22', N'', N'data/images/product/13_11_2011_172718_66.jpg', 2, 1, 188, N'188', CAST(188 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (189, 3, N'THL23', N'', N'data/images/product/13_11_2011_172740_569.jpg', 2, 1, 189, N'189', CAST(189 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (190, 3, N'THL24', N'', N'data/images/product/13_11_2011_17284_975.jpg', 2, 1, 190, N'190', CAST(190 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (191, 3, N'THL25', N'', N'data/images/product/13_11_2011_21126_403.jpg', 2, 1, 191, N'191', CAST(191 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (192, 3, N'THL26', N'', N'data/images/product/13_11_2011_211328_621.jpg', 2, 1, 192, N'192', CAST(192 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (193, 3, N'THL27', N'', N'data/images/product/13_11_2011_211421_535.jpg', 2, 1, 203, N'193', CAST(193 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (194, 3, N'THL28', N'', N'data/images/product/13_11_2011_211446_8.jpg', 2, 1, 193, N'194', CAST(194 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (195, 3, N'THL29', N'', N'data/images/product/13_11_2011_211539_337.jpg', 2, 1, 194, N'195', CAST(195 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (196, 3, N'THL30', N'', N'data/images/product/13_11_2011_21169_145.jpg', 2, 1, 202, N'196', CAST(196 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (197, 3, N'THL31', N'', N'data/images/product/13_11_2011_211750_607.jpg', 2, 1, 195, N'197', CAST(197 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (198, 3, N'THL32', N'', N'data/images/product/13_11_2011_211953_614.jpg', 2, 1, 197, N'198', CAST(198 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (199, 3, N'THL33', N'', N'data/images/product/13_11_2011_213030_361.jpg', 2, 1, 196, N'199', CAST(199 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (200, 3, N'THL34', N'', N'data/images/product/13_11_2011_213113_399.jpg', 2, 1, 198, N'200', CAST(200 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (201, 3, N'THL35', N'', N'data/images/product/13_11_2011_213134_815.jpg', 2, 1, 199, N'201', CAST(201 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (202, 3, N'THL36', N'', N'data/images/product/13_11_2011_213232_180.jpg', 2, 1, 200, N'202', CAST(202 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (203, 3, N'THL37', N'', N'data/images/product/13_11_2011_213318_654.jpg', 2, 1, 201, N'203', CAST(203 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (204, 3, N'CHL1', N'', N'data/images/product/13_11_2011_21351_155.jpg', 2, 1, 204, N'204', CAST(204 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (205, 3, N'CHL2', N'', N'data/images/product/13_11_2011_21389_222.jpg', 2, 1, 205, N'205', CAST(205 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (206, 3, N'CHL3', N'', N'data/images/product/13_11_2011_213833_433.jpg', 2, 1, 206, N'206', CAST(206 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (207, 3, N'CHL4', N'', N'data/images/product/13_11_2011_21394_25.jpg', 2, 1, 207, N'207', CAST(207 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (208, 3, N'CHL5', N'', N'data/images/product/13_11_2011_213940_479.jpg', 2, 1, 208, N'208', CAST(208 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (209, 3, N'CHL6', N'', N'data/images/product/13_11_2011_21402_624.jpg', 2, 1, 209, N'209', CAST(209 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (210, 3, N'CHL7', N'', N'data/images/product/13_11_2011_214026_225.jpg', 2, 1, 210, N'210', CAST(210 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (211, 3, N'CHL8', N'', N'data/images/product/13_11_2011_214051_764.jpg', 2, 1, 211, N'211', CAST(211 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (212, 3, N'CHL9', N'', N'data/images/product/13_11_2011_214115_511.jpg', 2, 1, 212, N'212', CAST(212 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (213, 3, N'CHL10', N'', N'data/images/product/13_11_2011_214135_781.jpg', 2, 1, 213, N'213', CAST(213 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (214, 3, N'CHL11', N'', N'data/images/product/13_11_2011_21424_418.jpg', 2, 1, 214, N'214', CAST(214 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (215, 3, N'CHL12', N'', N'data/images/product/13_11_2011_214225_642.jpg', 2, 1, 215, N'215', CAST(215 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (216, 3, N'STHL1', N'', N'data/images/product/13_11_2011_214722_814.jpg', 2, 1, 216, N'216', CAST(216 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (217, 3, N'STHL2', N'', N'data/images/product/13_11_2011_214830_788.jpg', 2, 1, 217, N'217', CAST(217 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (218, 3, N'STHL3', N'', N'data/images/product/13_11_2011_214937_751.JPG', 2, 1, 218, N'218', CAST(218 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (219, 3, N'STHL4', N'', N'data/images/product/13_11_2011_215013_902.jpg', 2, 1, 219, N'219', CAST(219 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (220, 3, N'STHL5', N'', N'data/images/product/13_11_2011_215158_41.jpg', 2, 1, 220, N'220', CAST(220 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (221, 3, N'STHL6', N'', N'data/images/product/13_11_2011_215246_369.jpg', 2, 1, 221, N'221', CAST(221 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (222, 3, N'STHL7', N'', N'data/images/product/13_11_2011_21546_0.jpg', 2, 1, 222, N'222', CAST(222 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (223, 3, N'PHL1', N'', N'data/images/product/13_11_2011_215538_56.jpg', 2, 1, 223, N'223', CAST(223 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (224, 3, N'PHL2', N'', N'data/images/product/13_11_2011_215610_526.jpg', 2, 1, 224, N'224', CAST(224 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (225, 3, N'STHL3', N'', N'data/images/product/13_11_2011_215647_117.gif', 2, 1, 225, N'225', CAST(225 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (226, 3, N'PHL4', N'', N'data/images/product/13_11_2011_215738_773.jpg', 2, 1, 226, N'226', CAST(226 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (227, 3, N'STHL9', N'', N'data/images/product/02_11_2011_22215_442.jpg', 2, 1, 227, N'227', CAST(227 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (228, 3, N'TBHL1', N'', N'data/images/product/04_11_2011_22420_429.jpg', 2, 1, 228, N'228', CAST(228 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (229, 3, N'TBHL2', N'', N'data/images/product/04_11_2011_22441_322.jpg', 2, 1, 229, N'229', CAST(229 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (230, 3, N'TBHL3', N'', N'data/images/product/05_11_2011_2250_619.jpg', 2, 1, 230, N'230', CAST(230 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (231, 3, N'TBHL4', N'', N'data/images/product/05_11_2011_22521_997.jpg', 2, 1, 231, N'231', CAST(231 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (232, 3, N'TBHL5', N'', N'data/images/product/05_11_2011_22543_423.jpg', 2, 1, 232, N'232', CAST(232 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (233, 3, N'TBHL6', N'', N'data/images/product/06_11_2011_22657_454.jpg', 2, 1, 233, N'233', CAST(233 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (234, 3, N'TBHL7', N'', N'data/images/product/07_11_2011_22725_216.jpg', 2, 1, 234, N'234', CAST(234 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (235, 3, N'TBHL8', N'', N'data/images/product/07_11_2011_22751_435.jpg', 2, 1, 235, N'235', CAST(235 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (236, 3, N'TBHL9', N'', N'data/images/product/08_11_2011_22816_465.jpg', 2, 1, 236, N'236', CAST(236 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (237, 3, N'TBHL10', N'', N'data/images/product/08_11_2011_22842_216.jpg', 2, 1, 237, N'237', CAST(237 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (238, 3, N'TBHL11', N'', N'data/images/product/09_11_2011_2298_633.jpg', 2, 1, 238, N'238', CAST(238 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (239, 3, N'TBHL12', N'', N'data/images/product/09_11_2011_22933_820.jpg', 2, 1, 239, N'239', CAST(239 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (240, 3, N'TBHL13', N'', N'data/images/product/09_11_2011_22956_279.jpg', 2, 1, 240, N'240', CAST(240 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (241, 3, N'TBHL15', N'', N'data/images/product/13_11_2011_221021_427.jpg', 2, 1, 241, N'241', CAST(241 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (242, 3, N'TBHL14', N'', N'data/images/product/13_11_2011_221054_414.jpg', 2, 1, 242, N'242', CAST(242 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (243, 3, N'TBHL16', N'', N'data/images/product/13_11_2011_221122_483.jpg', 2, 1, 243, N'243', CAST(243 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (244, 3, N'SHL1', N'', N'data/images/product/13_11_2011_221213_299.jpg', 2, 1, 244, N'244', CAST(244 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (245, 3, N'SHL2', N'', N'data/images/product/13_11_2011_221234_531.jpg', 2, 1, 245, N'245', CAST(245 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
GO
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (246, 3, N'SHL3', N'', N'data/images/product/13_11_2011_221255_803.jpg', 2, 1, 246, N'246', CAST(246 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (247, 3, N'SHL4', N'', N'data/images/product/13_11_2011_221314_654.jpg', 2, 1, 247, N'247', CAST(247 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (248, 3, N'SHL5', N'', N'data/images/product/13_11_2011_221334_962.jpg', 2, 1, 248, N'248', CAST(248 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (249, 3, N'SHL6', N'', N'data/images/product/13_11_2011_221354_768.jpg', 2, 1, 249, N'249', CAST(249 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (250, 3, N'SHL7', N'', N'data/images/product/13_11_2011_221415_132.jpg', 2, 1, 250, N'250', CAST(250 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (251, 3, N'SHL8', N'', N'data/images/product/13_11_2011_221434_18.jpg', 2, 1, 251, N'251', CAST(251 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (252, 3, N'SHL9', N'', N'data/images/product/13_11_2011_221455_1.jpg', 2, 1, 252, N'252', CAST(252 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (253, 3, N'SHL10', N'', N'data/images/product/13_11_2011_221515_187.jpg', 2, 1, 253, N'253', CAST(253 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (254, 3, N'SHL11', N'', N'data/images/product/13_11_2011_221540_642.jpg', 2, 1, 254, N'254', CAST(254 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (255, 3, N'SHL12', N'', N'data/images/product/13_11_2011_22161_661.jpg', 2, 1, 255, N'255', CAST(255 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (256, 3, N'SHL13', N'', N'data/images/product/13_11_2011_221626_667.jpg', 2, 1, 256, N'256', CAST(256 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (257, 3, N'SHL14', N'', N'data/images/product/13_11_2011_221649_397.jpg', 2, 1, 257, N'257', CAST(257 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (258, 3, N'SHL15', N'', N'data/images/product/13_11_2011_221711_5.jpg', 2, 1, 258, N'258', CAST(258 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (259, 3, N'SHL16', N'', N'data/images/product/13_11_2011_221733_414.jpg', 2, 1, 259, N'259', CAST(259 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (260, 3, N'SHL17', N'', N'data/images/product/13_11_2011_221758_350.jpg', 2, 1, 260, N'260', CAST(260 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (261, 3, N'SHL18', N'', N'data/images/product/13_11_2011_221830_852.jpg', 2, 1, 261, N'261', CAST(261 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (262, 3, N'SHL19', N'', N'data/images/product/13_11_2011_22193_319.jpg', 2, 1, 262, N'262', CAST(262 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (263, 3, N'SHL20', N'', N'data/images/product/13_11_2011_221925_192.jpg', 2, 1, 263, N'263', CAST(263 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (264, 3, N'SHL21', N'', N'data/images/product/13_11_2011_221947_569.jpg', 2, 1, 264, N'264', CAST(264 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (265, 3, N'SHL22', N'', N'data/images/product/13_11_2011_222015_656.jpg', 2, 1, 265, N'265', CAST(265 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (266, 3, N'SHL23', N'', N'data/images/product/13_11_2011_222040_595.jpg', 2, 1, 266, N'266', CAST(266 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (267, 3, N'SHL24', N'', N'data/images/product/13_11_2011_22212_844.jpg', 2, 1, 267, N'267', CAST(267 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (268, 3, N'SHL25', N'', N'data/images/product/13_11_2011_222124_612.jpg', 2, 1, 268, N'268', CAST(268 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (269, 3, N'SHL26', N'', N'data/images/product/13_11_2011_222148_175.jpg', 2, 1, 269, N'269', CAST(269 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (270, 3, N'SHL27', N'', N'data/images/product/13_11_2011_222217_151.jpg', 2, 1, 270, N'270', CAST(270 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (271, 3, N'SHL28', N'', N'data/images/product/13_11_2011_222240_452.jpg', 2, 1, 271, N'271', CAST(271 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (272, 3, N'BHL1', N'', N'data/images/product/13_11_2011_222414_574.jpg', 2, 1, 272, N'272', CAST(272 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (273, 3, N'BHL2', N'', N'data/images/product/13_11_2011_222440_577.jpg', 2, 1, 273, N'273', CAST(273 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (274, 3, N'BHL3', N'', N'data/images/product/13_11_2011_22256_530.jpg', 2, 1, 274, N'274', CAST(274 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (275, 3, N'BHL4', N'', N'data/images/product/13_11_2011_222531_20.jpg', 2, 1, 275, N'275', CAST(275 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (276, 3, N'BHL5', N'', N'data/images/product/13_11_2011_22265_160.jpg', 2, 1, 276, N'276', CAST(276 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (277, 3, N'BHL6', N'', N'data/images/product/13_11_2011_222848_999.jpg', 2, 1, 277, N'277', CAST(277 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (278, 3, N'BHL7', N'', N'data/images/product/13_11_2011_222932_218.jpg', 2, 1, 278, N'278', CAST(278 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (279, 3, N'BHL8', N'', N'data/images/product/13_11_2011_222953_704.jpg', 2, 1, 279, N'279', CAST(279 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (280, 3, N'BHL9', N'', N'data/images/product/13_11_2011_223019_403.jpg', 2, 1, 280, N'280', CAST(280 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (281, 3, N'BHL10', N'', N'data/images/product/13_11_2011_223044_374.jpg', 2, 1, 281, N'281', CAST(281 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (282, 3, N'BHL11', N'', N'data/images/product/13_11_2011_223114_95.jpg', 2, 1, 282, N'282', CAST(282 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (283, 3, N'BHL12', N'', N'data/images/product/13_11_2011_223139_519.jpg', 2, 1, 283, N'283', CAST(283 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (284, 3, N'BHL13', N'', N'data/images/product/13_11_2011_22328_762.jpg', 2, 1, 284, N'284', CAST(284 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (285, 3, N'BHL14', N'', N'data/images/product/13_11_2011_223233_503.jpg', 2, 1, 285, N'285', CAST(285 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (286, 3, N'BHL15', N'', N'data/images/product/13_11_2011_22332_266.jpg', 2, 1, 286, N'286', CAST(286 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (287, 3, N'BHL16', N'', N'data/images/product/13_11_2011_223338_396.jpg', 2, 1, 287, N'287', CAST(287 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (288, 3, N'BHL17', N'', N'data/images/product/13_11_2011_22345_381.jpg', 2, 1, 288, N'288', CAST(288 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (289, 3, N'BHL18', N'', N'data/images/product/13_11_2011_223429_338.jpg', 2, 1, 289, N'289', CAST(289 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (290, 3, N'BHL19', N'', N'data/images/product/13_11_2011_223451_179.jpg', 2, 1, 290, N'290', CAST(290 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (291, 3, N'DHL1', N'', N'data/images/product/13_11_2011_223531_153.jpg', 2, 1, 291, N'291', CAST(291 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (292, 3, N'DHL2', N'', N'data/images/product/13_11_2011_223648_996.jpg', 2, 1, 292, N'292', CAST(292 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (293, 3, N'DHL4', N'', N'data/images/product/13_11_2011_223712_23.jpg', 2, 1, 293, N'293', CAST(293 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (294, 3, N'DHL15', N'', N'data/images/product/13_11_2011_223754_973.jpg', 2, 1, 294, N'294', CAST(294 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (295, 3, N'DHL5', N'', N'data/images/product/13_11_2011_223829_197.jpg', 2, 1, 295, N'295', CAST(295 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (296, 3, N'DHL6', N'', N'data/images/product/13_11_2011_223935_268.jpg', 2, 1, 296, N'296', CAST(296 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (297, 3, N'DHL7', N'', N'data/images/product/13_11_2011_224039_596.jpg', 2, 1, 297, N'297', CAST(297 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (298, 3, N'SHL29', N'', N'data/images/product/13_11_2011_224235_274.jpg', 2, 1, 298, N'298', CAST(298 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (299, 3, N'DHL10', N'', N'data/images/product/13_11_2011_22441_116.jpg', 2, 1, 299, N'299', CAST(299 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (300, 3, N'DHL11', N'', N'data/images/product/13_11_2011_22459_344.jpg', 2, 1, 300, N'300', CAST(300 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (301, 3, N'DHL12', N'', N'data/images/product/13_11_2011_224536_775.jpg', 2, 1, 301, N'301', CAST(301 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (302, 3, N'DHL13', N'', N'data/images/product/13_11_2011_224635_757.jpg', 2, 1, 302, N'302', CAST(302 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (303, 3, N'DHL14', N'', N'data/images/product/13_11_2011_224737_182.jpg', 2, 1, 303, N'303', CAST(303 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (304, 3, N'THL38', N'', N'data/images/product/14_11_2011_085540_137.jpg', 2, 1, 304, N'304', CAST(304 AS Decimal(18, 0)), CAST(N'2016-12-12T10:32:41.563' AS DateTime), 1)
INSERT [dbo].[tbl_product] ([PK_ProductID], [FK_CategoryID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [C_Code], [C_Price], [C_Create], [C_Hot]) VALUES (369, 13, N'D-Fluoretten 500 I.E.', N'&lt;p&gt;&nbsp;&lt;/p&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;&lt;font size=&#34;4&#34;&gt;D Fluoretten 500 I.E.&lt;/font&gt;&lt;/h2&gt;
&lt;h2 class=&#34;wsite-content-title&#34; style=&#34;margin: 0px; padding: 0.3em 0px; line-height: 1.2; font-weight: normal; color: rgb(143, 197, 99); -webkit-text-stroke-width: 0.3px; font-size: 30px !important; font-family: Verdana !important;&#34;&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); -webkit-text-stroke-width: 0px; text-align: justify; font-size: 15px !important; line-height: 22px !important;&#34;&gt;&lt;strong&gt;D Fluoretten 500 I.E&lt;/strong&gt;&nbsp;dạng vi&ecirc;n n&eacute;n, cung cấp cho trẻ sơ sinh v&agrave; trẻ nhỏ nguồn Vitamin D v&agrave; Fluor gi&uacute;p cho răng mọc đẹp v&agrave; xương cứng c&aacute;p, hỗ trợ qu&aacute; tr&igrave;nh mọc răng của b&eacute; dễ d&agrave;ng, giảm đau v&agrave; kh&ocirc;ng sốt khi mọc răng.&lt;/div&gt;
&lt;/h2&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; color: rgb(135, 135, 135); text-align: justify; font-size: 15px !important; line-height: 22px !important; font-family: Verdana !important;&#34;&gt;&lt;strong&gt;Th&agrave;nh phần&lt;/strong&gt;: Colecalciferol Trockenkonzentrat (5 mg),&nbsp;Colecalciferol (500 I.E),&nbsp;Natrium fluorid (0.553mg), Fluorid Ion&nbsp;(0.25mg) v&agrave; t&aacute; dược&lt;br /&gt;
&lt;br /&gt;
&lt;strong&gt;Gi&aacute; b&aacute;n&lt;/strong&gt;:&nbsp;&lt;font color=&#34;#33cc00&#34;&gt;VND 180.000&lt;/font&gt;&nbsp;/ hộp 90 vi&ecirc;n (d&ugrave;ng cho trẻ từ khi mới sinh đến 3 tuổi, mỗi ng&agrave;y uống một vi&ecirc;n v&agrave;o buổi)&lt;/div&gt;
&lt;div class=&#34;paragraph&#34; style=&#34;margin: 0px; padding: 0.5em 0px; text-align: justify; line-height: 22px !important;&#34;&gt;
&lt;p style=&#34;text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;H&atilde;ng&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;color: rgb(0, 0, 255); font-family: Verdana; font-size: 15px;&#34;&gt;Sanofi (&lt;/span&gt;&lt;span style=&#34;text-align: justify; font-size: 15px;&#34;&gt;&lt;font color=&#34;#0000ff&#34; face=&#34;Verdana&#34;&gt;http://www.sanofi.com/&lt;/font&gt;&lt;/span&gt;&lt;span style=&#34;font-size: 15px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;&#34;&gt;)&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;font-family: Arial, Helvetica, sans-serif; text-align: start;&#34;&gt;&lt;strong style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;Xuất xứ&lt;/strong&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;:&lt;/span&gt;&lt;span style=&#34;color: rgb(135, 135, 135); font-family: Verdana; font-size: 15px;&#34;&gt;&nbsp;&lt;/span&gt;&lt;span style=&#34;font-family: Verdana; font-size: 15px;&#34;&gt;&lt;font color=&#34;#0000ff&#34;&gt;Đức&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;
&lt;/div&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;', N'data/images/product/DFluoretten500IE_26_05_2017_235628_940.jpg', 1, 1, 370, N'81920013', CAST(180000 AS Decimal(18, 0)), CAST(N'2017-05-26T23:40:49.007' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[tbl_product] OFF
SET IDENTITY_INSERT [dbo].[tbl_product_price] ON 

INSERT [dbo].[tbl_product_price] ([PK_ProductPriceID], [C_Name], [C_Des], [FK_LangID], [C_Active], [C_Rank], [C_Attach]) VALUES (7, N'Báo giá tháng 5', N'', 1, 1, 7, N'')
SET IDENTITY_INSERT [dbo].[tbl_product_price] OFF
SET IDENTITY_INSERT [dbo].[tbl_resquest] ON 

INSERT [dbo].[tbl_resquest] ([PK_ResquestID], [C_Name], [C_Mobile], [C_Email], [C_Address], [C_Content], [C_Rank], [C_Status], [C_Create], [FK_ProductID], [FK_LangID], [C_Active]) VALUES (35, N'Nguyễn Văn A', N'', N'', N'', N'á fsad sá
d
sf
s
à', 35, 0, CAST(N'2016-12-12T16:27:00.000' AS DateTime), 346, 1, 1)
INSERT [dbo].[tbl_resquest] ([PK_ResquestID], [C_Name], [C_Mobile], [C_Email], [C_Address], [C_Content], [C_Rank], [C_Status], [C_Create], [FK_ProductID], [FK_LangID], [C_Active]) VALUES (39, N'Nguyễn Văn X', N'', N'', N'', N'Đặt hàng theo yêu cầu', 39, 0, CAST(N'2016-12-12T16:47:00.000' AS DateTime), 0, 1, 1)
SET IDENTITY_INSERT [dbo].[tbl_resquest] OFF
INSERT [dbo].[tbl_siteinfo] ([SiteInfoID], [Email], [Counter], [Contact], [Footer], [Yahoo1], [Yahoo2], [Skype1], [Skype2], [Congty], [Diachi], [Dienthoai], [Mobile], [TieudeGioithieu], [Gioithieu1], [Gioithieu2], [FK_LangID]) VALUES (2, N'hotro@dahoacuonghoanglong.com', 2006, N'&lt;h2&gt;HOANG LONG TRADING AND CONSTRUCTION JOINT STOCK COMPANY&lt;/h2&gt;
&lt;p&gt;&lt;span class=&#34;norB&#34;&gt;Product showroom: &lt;/span&gt;Stores marble exporter DUY MANH&nbsp;&lt;/p&gt;
&lt;p&gt;&lt;span class=&#34;norB&#34;&gt;Addrees:&lt;/span&gt; No 410/13B, ĐT743 Street, Dong Chieu, Tan Dong Hiep ward, Di An town, Binh Duong province.&lt;/p&gt;
&lt;p&gt;&lt;span class=&#34;norB&#34;&gt;Tel/ Fax:&lt;/span&gt; 06503.775.400   -   &lt;span class=&#34;norB&#34;&gt;Mobile:&lt;/span&gt; 0987.783.970 - 0912.36.28.56&lt;/p&gt;
&lt;p style=&#34;text-align: left; &#34;&gt;&lt;i&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;(Near: VSIP, Song Than Industrial Park, Dong An Industrial Park)&lt;/i&gt;&lt;/p&gt;', N'&lt;p&gt;.&lt;/p&gt;', N'hbt_155', N'', N'hbt_155', N'', N'HOANG LONG TRADING AND CONSTRUCTION JOINT STOCK COMPANY', N'No 410/13B, ĐT743 Street, Dong Chieu, Tan Dong Hiep ward, Di An town, Binh Duong province. (Near: VSIP, Song Than IP, Dong An IP)', N'06503.775.400', N'0987.783.970 - 0912.36.28.56', N'Hoang Long Trading and Construction joint stock company', N'&lt;p&gt;&lt;span style=&#34;font-size: small;&#34;&gt;&lt;i&gt;&lt;span style=&#34;font-family: Times New Roman;&#34;&gt;Hoang Long Trading and Construction joint stock company is professional on supplying and executing almost brands of granite stone, marble stone. They are inland&nbsp; produced and imported from countries which have famous natural granite and marble stone resources, such as: China, India and Italy,....&lt;/span&gt;&lt;/i&gt;&lt;/span&gt;&lt;span style=&#34;font-size: small;&#34;&gt;&lt;span style=&#34;font-size: medium;&#34;&gt;&lt;span style=&#34;font-family: Times New Roman;&#34;&gt;&lt;br /&gt;
&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&nbsp;&lt;/p&gt;', N'&lt;p&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hoang  Long Trading and Construction joint stock company is professional on  supplying and executing almost brands of granite stone, marble stone.  They are inland&nbsp; produced and imported from countries which have famous  natural granite and marble stone resources, such as: China, India and  Italy,....&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;Organization of building process as: &lt;br /&gt;
&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;The front of a building&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Stairs&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Perron&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Desktop stone&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Tracery&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Bulletin board&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Floor a room with&nbsp;stone&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Balcony banisters&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;margin-left: 27pt; text-align: justify;&#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;Tombstone&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p style=&#34;text-align: justify; &#34; class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: medium; &#34;&gt;&lt;span style=&#34;font-family: &#39;Times New Roman&#39;; &#34;&gt;&nbsp;&nbsp; &nbsp; &nbsp; Our workmans team have labour experience, specialization level, execution level, cost justice and reputation quality. We hope we will serve all customer.&nbsp;Join us in making your house more luxury.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', 2)
INSERT [dbo].[tbl_siteinfo] ([SiteInfoID], [Email], [Counter], [Contact], [Footer], [Yahoo1], [Yahoo2], [Skype1], [Skype2], [Congty], [Diachi], [Dienthoai], [Mobile], [TieudeGioithieu], [Gioithieu1], [Gioithieu2], [FK_LangID]) VALUES (1, N'tuankhoishop@gmail.com', 10846, N'&lt;h2&gt;TUẤN KH&Ocirc;I SHOP&lt;/h2&gt;
&lt;p&gt;&lt;span class=&#34;norB&#34;&gt;Địa chỉ:&lt;/span&gt;&nbsp;Ph&ograve;ng 303 TT H3, Ng&otilde; 64 Kim Giang, Thanh Xu&acirc;n, H&agrave; Nội&lt;span class=&#34;norB&#34;&gt;Mobile:&lt;/span&gt;&nbsp;0166.742.0809 - 0973.041.481 &nbsp;- &nbsp;0978.848.904&lt;/p&gt;
&lt;p&gt;&lt;i&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;/i&gt;&lt;/p&gt;', N'&lt;p&gt;.&lt;/p&gt;', N'', N'', N'', N'', N'Tuấn Khôi Shop', N'Phòng 303 TT H3, Ngõ 64 Kim Giang, Thanh Xuân, Hà Nội', N'0973041481', N'01667420809', N'Bán hàng xách tay Châu Âu - Nhật: Thuốc, Thực Phẩm chức năng, Mỹ Phẩm, Đồ dùng cá nhân', N'&lt;p class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: small;&#34;&gt;&lt;span style=&#34;font-family: Arial;&#34;&gt;Sản phẩm được chuyển trực tiếp từ nước ngo&agrave;i về, đảm bảo nguồn gốc xuất xứ&lt;/span&gt;&lt;/span&gt;&lt;span style=&#34;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;&#34;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: small;&#34;&gt;&lt;span style=&#34;font-family: Arial;&#34;&gt;T&lt;span lang=&#34;VI&#34;&gt;ư vấn khoa học, kh&aacute;ch quan v&agrave; đầy đủ th&ocirc;ng tin về sản phẩm cho kh&aacute;ch h&agrave;ng&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span lang=&#34;VI&#34; style=&#34;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;&#10;mso-ansi-language:VI&#34;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: small;&#34;&gt;&lt;span style=&#34;font-family: Arial;&#34;&gt;&lt;span lang=&#34;VI&#34;&gt;Đa dạ&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ng ch&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ủ&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ng lo&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ạ&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;i s&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ả&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;n ph&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ẩ&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;m, gi&aacute; c&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ả&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt; c&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ạ&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;nh tranh, ch&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ấ&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;t l&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ượ&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ng t&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ốt&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: small;&#34;&gt;&lt;span style=&#34;font-family: Arial;&#34;&gt;&lt;span lang=&#34;VI&#34;&gt;Đảm bảo &lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;giao h&agrave;ng nhanh ch&oacute;ng k&egrave;m d&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ị&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ch v&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ụ&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt; đ&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ổi trả h&agrave;ng &lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;t&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ố&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;t nh&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;ất&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span lang=&#34;VI&#34;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;span style=&#34;font-size: small;&#34;&gt;&lt;br /&gt;
&lt;/span&gt;&lt;/p&gt;
&lt;p class=&#34;MsoNormal&#34;&gt;&lt;span style=&#34;font-size: small;&#34;&gt;&lt;span style=&#34;font-family: Arial;&#34;&gt;Rất h&acirc;n hạnh được phục vụ!&lt;/span&gt;&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;', N'', 1)
SET IDENTITY_INSERT [dbo].[tbl_slide] ON 

INSERT [dbo].[tbl_slide] ([PK_SlideID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [FK_CategoryID]) VALUES (11, N'ban1', N'', N'data/images/slide/ban1_01_05_2017_02158_682.jpg', 1, 1, 11, 1)
INSERT [dbo].[tbl_slide] ([PK_SlideID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [FK_CategoryID]) VALUES (12, N'ban3', N'', N'data/images/slide/TuanKhoi1_03_05_2017_0234_452.jpg', 1, 1, 12, 1)
INSERT [dbo].[tbl_slide] ([PK_SlideID], [C_Name], [C_Des], [C_Img], [FK_LangID], [C_Active], [C_Rank], [FK_CategoryID]) VALUES (13, N'ban2', N'', N'data/images/slide/ban2_05_05_2017_02553_721.jpg', 1, 1, 13, 1)
SET IDENTITY_INSERT [dbo].[tbl_slide] OFF
SET IDENTITY_INSERT [dbo].[tbl_user] ON 

INSERT [dbo].[tbl_user] ([PK_UserID], [C_UserName], [C_UserPass], [FK_LangID], [C_FullName], [C_Email], [C_Sex], [C_Des], [C_Birth], [C_Add], [C_Phone], [C_Mobile], [C_Company], [C_Image], [C_Permission], [C_Active], [C_Rank], [C_Change], [C_ActiveCode]) VALUES (8, N'admin', N'202cb962ac59075b964b07152d234b70', 1, N'Nguyen Tuan Khoi', N'tuankhoishop@gmail.com', 2, N'', N'', N'', N'', NULL, NULL, NULL, 0, 1, 8, 0, NULL)
SET IDENTITY_INSERT [dbo].[tbl_user] OFF
SET IDENTITY_INSERT [dbo].[tbl_user_groupmember] ON 

INSERT [dbo].[tbl_user_groupmember] ([PK_ID], [FK_UserID], [FK_GroupMemberID]) VALUES (22, 8, 1)
INSERT [dbo].[tbl_user_groupmember] ([PK_ID], [FK_UserID], [FK_GroupMemberID]) VALUES (11, 5, 3)
INSERT [dbo].[tbl_user_groupmember] ([PK_ID], [FK_UserID], [FK_GroupMemberID]) VALUES (23, 8, 7)
INSERT [dbo].[tbl_user_groupmember] ([PK_ID], [FK_UserID], [FK_GroupMemberID]) VALUES (12, 4, 3)
INSERT [dbo].[tbl_user_groupmember] ([PK_ID], [FK_UserID], [FK_GroupMemberID]) VALUES (24, 10, 4)
SET IDENTITY_INSERT [dbo].[tbl_user_groupmember] OFF
ALTER TABLE [dbo].[tbl_category_news] ADD  CONSTRAINT [DF_tbl_category_news_FK_ParentID]  DEFAULT ((0)) FOR [FK_ParentID]
GO
ALTER TABLE [dbo].[tbl_category_news] ADD  CONSTRAINT [DF_tbl_category_news_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_category_news] ADD  CONSTRAINT [DF_tbl_category_news_C_Product]  DEFAULT ((0)) FOR [C_Product]
GO
ALTER TABLE [dbo].[tbl_category_news] ADD  CONSTRAINT [DF_tbl_category_news_C_PointUrl]  DEFAULT ((0)) FOR [C_PointUrl]
GO
ALTER TABLE [dbo].[tbl_category_news] ADD  CONSTRAINT [DF_tbl_category_news_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_category_news] ADD  CONSTRAINT [DF_tbl_category_news_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_category_news] ADD  CONSTRAINT [DF_tbl_category_news_C_Granite]  DEFAULT ((0)) FOR [C_Granite]
GO
ALTER TABLE [dbo].[tbl_category_news] ADD  CONSTRAINT [DF_tbl_category_news_C_MenuNgang]  DEFAULT ((0)) FOR [C_MenuNgang]
GO
ALTER TABLE [dbo].[tbl_category_nhaxuong] ADD  CONSTRAINT [DF_T_PROJECT_CITY_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_category_nhaxuong] ADD  CONSTRAINT [DF_T_PROJECT_CITY_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_category_nhaxuong] ADD  CONSTRAINT [DF_T_PROJECT_CITY_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_category_product] ADD  CONSTRAINT [DF_tbl_category_product_FK_ParentID]  DEFAULT ((0)) FOR [FK_ParentID]
GO
ALTER TABLE [dbo].[tbl_category_product] ADD  CONSTRAINT [DF_tbl_category_product_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_category_product] ADD  CONSTRAINT [DF_tbl_category_product_C_Product]  DEFAULT ((0)) FOR [C_Product]
GO
ALTER TABLE [dbo].[tbl_category_product] ADD  CONSTRAINT [DF_tbl_category_product_C_PointUrl]  DEFAULT ((0)) FOR [C_PointUrl]
GO
ALTER TABLE [dbo].[tbl_category_product] ADD  CONSTRAINT [DF_tbl_category_product_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_category_product] ADD  CONSTRAINT [DF_tbl_category_product_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_category_product] ADD  CONSTRAINT [DF_tbl_category_product_C_Granite]  DEFAULT ((0)) FOR [C_Granite]
GO
ALTER TABLE [dbo].[tbl_category_product] ADD  CONSTRAINT [DF_tbl_category_product_C_MenuNgang]  DEFAULT ((0)) FOR [C_MenuNgang]
GO
ALTER TABLE [dbo].[tbl_granit] ADD  CONSTRAINT [DF_tbl_granit_FK_CategoryID]  DEFAULT ((0)) FOR [FK_CategoryID]
GO
ALTER TABLE [dbo].[tbl_granit] ADD  CONSTRAINT [DF_tbl_granit_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_granit] ADD  CONSTRAINT [DF_tbl_granit_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_granit] ADD  CONSTRAINT [DF_tbl_granit_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_System]  DEFAULT ((0)) FOR [C_System]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_Add]  DEFAULT ((0)) FOR [C_Add]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_Edit]  DEFAULT ((0)) FOR [C_Edit]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_Del]  DEFAULT ((0)) FOR [C_Del]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_Lock]  DEFAULT ((0)) FOR [C_Lock]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_View]  DEFAULT ((0)) FOR [C_View]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_ProcessLock]  DEFAULT ((0)) FOR [C_ProcessLock]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_ProcessUnLock]  DEFAULT ((0)) FOR [C_ProcessUnLock]
GO
ALTER TABLE [dbo].[tbl_groupmember] ADD  CONSTRAINT [DF_tbl_groupmember_C_ProcessDel]  DEFAULT ((0)) FOR [C_ProcessDel]
GO
ALTER TABLE [dbo].[tbl_menu] ADD  CONSTRAINT [DF_tbl_menu_FK_ParentID]  DEFAULT ((0)) FOR [FK_ParentID]
GO
ALTER TABLE [dbo].[tbl_menu] ADD  CONSTRAINT [DF_tbl_menu_FK_LangID]  DEFAULT ((0)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_menu] ADD  CONSTRAINT [DF_tbl_menu_C_Active]  DEFAULT ((0)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_menu] ADD  CONSTRAINT [DF_tbl_menu_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_menu] ADD  CONSTRAINT [DF_tbl_menu_C_Lock]  DEFAULT ((0)) FOR [C_Lock]
GO
ALTER TABLE [dbo].[tbl_menu] ADD  CONSTRAINT [DF_tbl_menu_C_BackEnd]  DEFAULT ((0)) FOR [C_BackEnd]
GO
ALTER TABLE [dbo].[tbl_permission] ADD  CONSTRAINT [DF_tbl_permission_FK_MenuID]  DEFAULT ((0)) FOR [FK_MenuID]
GO
ALTER TABLE [dbo].[tbl_permission] ADD  CONSTRAINT [DF_tbl_permission_FK_GroupMemberID]  DEFAULT ((0)) FOR [FK_GroupMemberID]
GO
ALTER TABLE [dbo].[tbl_permission] ADD  CONSTRAINT [DF_tbl_permission_C_Change]  DEFAULT ((1)) FOR [C_Change]
GO
ALTER TABLE [dbo].[tbl_product] ADD  CONSTRAINT [DF_tbl_product_FK_CategoryID]  DEFAULT ((0)) FOR [FK_CategoryID]
GO
ALTER TABLE [dbo].[tbl_product] ADD  CONSTRAINT [DF_tbl_product_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_product] ADD  CONSTRAINT [DF_tbl_product_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_product] ADD  CONSTRAINT [DF_tbl_product_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_product] ADD  CONSTRAINT [DF_tbl_product_C_Price]  DEFAULT ((0)) FOR [C_Price]
GO
ALTER TABLE [dbo].[tbl_product] ADD  CONSTRAINT [DF_tbl_product_C_Hot]  DEFAULT ((0)) FOR [C_Hot]
GO
ALTER TABLE [dbo].[tbl_product_price] ADD  CONSTRAINT [DF_tbl_product_price_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_product_price] ADD  CONSTRAINT [DF_tbl_product_price_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_product_price] ADD  CONSTRAINT [DF_tbl_product_price_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_resquest] ADD  CONSTRAINT [DF_tbl_resquest_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_siteinfo] ADD  CONSTRAINT [DF_tbl_siteinfo_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_slide] ADD  CONSTRAINT [DF_tbl_slide_FK_CategoryID]  DEFAULT ((0)) FOR [FK_CategoryID]
GO
ALTER TABLE [dbo].[tbl_user] ADD  CONSTRAINT [DF_tbl_user_FK_LangID]  DEFAULT ((1)) FOR [FK_LangID]
GO
ALTER TABLE [dbo].[tbl_user] ADD  CONSTRAINT [DF_tbl_user_C_Permission]  DEFAULT ((0)) FOR [C_Permission]
GO
ALTER TABLE [dbo].[tbl_user] ADD  CONSTRAINT [DF_tbl_user_C_Active]  DEFAULT ((1)) FOR [C_Active]
GO
ALTER TABLE [dbo].[tbl_user] ADD  CONSTRAINT [DF_tbl_user_C_Rank]  DEFAULT ((0)) FOR [C_Rank]
GO
ALTER TABLE [dbo].[tbl_user] ADD  CONSTRAINT [DF_tbl_user_C_Change]  DEFAULT ((0)) FOR [C_Change]
GO
ALTER TABLE [dbo].[tbl_user_groupmember] ADD  CONSTRAINT [DF_tbl_user_groupmember_FK_UserID]  DEFAULT ((0)) FOR [FK_UserID]
GO
ALTER TABLE [dbo].[tbl_user_groupmember] ADD  CONSTRAINT [DF_tbl_user_groupmember_FK_GroupMemberID]  DEFAULT ((0)) FOR [FK_GroupMemberID]
GO

