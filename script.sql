USE [Trade]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 23.05.2022 16:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 23.05.2022 16:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerID] [int] NOT NULL,
	[ManufacturerName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeasureUnit]    Script Date: 23.05.2022 16:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeasureUnit](
	[UnitID] [int] NOT NULL,
	[UnitName] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_MeasureUnit] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 23.05.2022 16:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatusID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DeliveryDate] [datetime] NOT NULL,
	[OrderPickupPointID] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[CodeToGet] [int] NOT NULL,
 CONSTRAINT [PK__Order__C3905BAFEED153B3] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 23.05.2022 16:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderedProudctID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductCount] [int] NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[OrderedProudctID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 23.05.2022 16:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[PointID] [int] NOT NULL,
	[PostIndex] [numeric](6, 0) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
	[HouseNumber] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_PickupPoint] PRIMARY KEY CLUSTERED 
(
	[PointID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 23.05.2022 16:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[MeasureUnitID] [int] NULL,
	[ProductCost] [decimal](19, 4) NULL,
	[ProductMaxDiscount] [int] NULL,
	[ProductManufacturerID] [int] NULL,
	[ProductSupplierID] [int] NULL,
	[ProductCategoryID] [int] NULL,
	[ProductDiscountAmount] [tinyint] NULL,
	[ProductQuantityInStock] [int] NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[ProductPhoto] [nvarchar](max) NULL,
 CONSTRAINT [PK__Product__2EA7DCD52E7ED0DE] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 23.05.2022 16:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 23.05.2022 16:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] NOT NULL,
	[SatusName] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 23.05.2022 16:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 23.05.2022 16:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Постельные ткани')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Детские ткани')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Ткани для изделий')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (1, N'БТК Текстиль')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (2, N'Империя ткани')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (3, N'Комильфо')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (4, N'Май Фабрик')
INSERT [dbo].[MeasureUnit] ([UnitID], [UnitName]) VALUES (1, N'Рулон')
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderDate], [DeliveryDate], [OrderPickupPointID], [CustomerID], [CodeToGet]) VALUES (1, 1, CAST(N'2022-05-10T00:00:00.000' AS DateTime), CAST(N'2022-05-16T00:00:00.000' AS DateTime), 27, 7, 811)
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderDate], [DeliveryDate], [OrderPickupPointID], [CustomerID], [CodeToGet]) VALUES (2, 1, CAST(N'2022-05-11T00:00:00.000' AS DateTime), CAST(N'2022-05-17T00:00:00.000' AS DateTime), 5, NULL, 812)
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderDate], [DeliveryDate], [OrderPickupPointID], [CustomerID], [CodeToGet]) VALUES (3, 1, CAST(N'2022-05-12T00:00:00.000' AS DateTime), CAST(N'2022-05-18T00:00:00.000' AS DateTime), 29, NULL, 813)
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderDate], [DeliveryDate], [OrderPickupPointID], [CustomerID], [CodeToGet]) VALUES (4, 1, CAST(N'2022-05-13T00:00:00.000' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), 10, NULL, 814)
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderDate], [DeliveryDate], [OrderPickupPointID], [CustomerID], [CodeToGet]) VALUES (5, 1, CAST(N'2022-05-14T00:00:00.000' AS DateTime), CAST(N'2022-05-20T00:00:00.000' AS DateTime), 31, 8, 815)
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderDate], [DeliveryDate], [OrderPickupPointID], [CustomerID], [CodeToGet]) VALUES (6, 1, CAST(N'2022-05-15T00:00:00.000' AS DateTime), CAST(N'2022-05-21T00:00:00.000' AS DateTime), 32, NULL, 816)
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderDate], [DeliveryDate], [OrderPickupPointID], [CustomerID], [CodeToGet]) VALUES (7, 1, CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2022-05-22T00:00:00.000' AS DateTime), 20, NULL, 817)
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderDate], [DeliveryDate], [OrderPickupPointID], [CustomerID], [CodeToGet]) VALUES (8, 2, CAST(N'2022-05-17T00:00:00.000' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime), 34, 9, 818)
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderDate], [DeliveryDate], [OrderPickupPointID], [CustomerID], [CodeToGet]) VALUES (9, 1, CAST(N'2022-05-18T00:00:00.000' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), 35, 10, 819)
INSERT [dbo].[Order] ([OrderID], [OrderStatusID], [OrderDate], [DeliveryDate], [OrderPickupPointID], [CustomerID], [CodeToGet]) VALUES (10, 2, CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 36, NULL, 820)
SET IDENTITY_INSERT [dbo].[Order] OFF
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (1, 1, N'B111C5', 5)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (2, 2, N'E112C6', 5)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (3, 3, N'M112C8', 4)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (4, 4, N'M294G9', 6)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (5, 5, N'W874J3', 2)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (6, 6, N'O947D8', 4)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (7, 7, N'H497J3', 2)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (8, 8, N'X846D3', 1)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (9, 9, N'V378J3', 2)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (10, 10, N'N387I8', 6)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (11, 1, N'T238C7', 7)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (12, 2, N'T238C7', 9)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (13, 3, N'L293S9', 8)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (14, 4, N'S384K2', 1)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (15, 5, N'Q836H4', 1)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (16, 6, N'R983K4', 1)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (17, 7, N'N394K2', 5)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (18, 8, N'P495H8', 3)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (19, 9, N'K284U8', 3)
INSERT [dbo].[OrderProduct] ([OrderedProudctID], [OrderID], [ProductArticleNumber], [ProductCount]) VALUES (20, 10, N'I483H3', 7)
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (1, CAST(344288 AS Numeric(6, 0)), N'Кропоткин', N'Чехова', N'1')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (2, CAST(614164 AS Numeric(6, 0)), N'Кропоткин', N'Степная', N'30')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (3, CAST(394242 AS Numeric(6, 0)), N'Кропоткин', N'Коммунистическая', N'43')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (4, CAST(660540 AS Numeric(6, 0)), N'Кропоткин', N'Солнечная', N'25')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (5, CAST(125837 AS Numeric(6, 0)), N'Кропоткин', N'Шоссейная', N'40')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (6, CAST(125703 AS Numeric(6, 0)), N'Кропоткин', N'Партизанская', N'49')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (7, CAST(625283 AS Numeric(6, 0)), N'Кропоткин', N'Победы', N'46')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (8, CAST(614611 AS Numeric(6, 0)), N'Кропоткин', N'Молодежная', N'50')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (9, CAST(454311 AS Numeric(6, 0)), N'Кропоткин', N'Новая', N'19')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (10, CAST(660007 AS Numeric(6, 0)), N'Кропоткин', N'Октябрьская', N'19')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (11, CAST(603036 AS Numeric(6, 0)), N'Кропоткин', N'Садовая', N'4')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (12, CAST(450983 AS Numeric(6, 0)), N'Кропоткин', N'Комсомольская', N'26')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (13, CAST(394782 AS Numeric(6, 0)), N'Кропоткин', N'Чехова', N'3')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (14, CAST(603002 AS Numeric(6, 0)), N'Кропоткин', N'Дзержинского', N'28')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (15, CAST(450558 AS Numeric(6, 0)), N'Кропоткин', N'Набережная', N'30')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (16, CAST(394060 AS Numeric(6, 0)), N'Кропоткин', N'Фрунзе', N'43')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (17, CAST(410661 AS Numeric(6, 0)), N'Кропоткин', N'Школьная', N'50')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (18, CAST(625590 AS Numeric(6, 0)), N'Кропоткин', N'Коммунистическая', N'20')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (19, CAST(625683 AS Numeric(6, 0)), N'Кропоткин', N'8Марта', N'24')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (20, CAST(400562 AS Numeric(6, 0)), N'Кропоткин', N'Зеленая', N'32')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (21, CAST(614510 AS Numeric(6, 0)), N'Кропоткин', N'Маяковского', N'47')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (22, CAST(410542 AS Numeric(6, 0)), N'Кропоткин', N'Светлая', N'46')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (23, CAST(620839 AS Numeric(6, 0)), N'Кропоткин', N'Цветочная', N'8')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (24, CAST(443890 AS Numeric(6, 0)), N'Кропоткин', N'Коммунистическая', N'1')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (25, CAST(603379 AS Numeric(6, 0)), N'Кропоткин', N'Спортивная', N'46')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (26, CAST(603721 AS Numeric(6, 0)), N'Кропоткин', N'Гоголя', N'41')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (27, CAST(410172 AS Numeric(6, 0)), N'Кропоткин', N'Северная', N'13')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (28, CAST(420151 AS Numeric(6, 0)), N'Кропоткин', N'Вишневая', N'32')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (29, CAST(125061 AS Numeric(6, 0)), N'Кропоткин', N'Подгорная', N'8')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (30, CAST(630370 AS Numeric(6, 0)), N'Кропоткин', N'Шоссейная', N'24')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (31, CAST(614753 AS Numeric(6, 0)), N'Кропоткин', N'Полевая', N'35')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (32, CAST(426030 AS Numeric(6, 0)), N'Кропоткин', N'Маяковского', N'44')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (33, CAST(450375 AS Numeric(6, 0)), N'Кропоткин', N'Клубная', N'44')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (34, CAST(625560 AS Numeric(6, 0)), N'Кропоткин', N'Некрасова', N'12')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (35, CAST(630201 AS Numeric(6, 0)), N'Кропоткин', N'Комсомольская', N'17')
INSERT [dbo].[PickupPoint] ([PointID], [PostIndex], [City], [Street], [HouseNumber]) VALUES (36, CAST(190949 AS Numeric(6, 0)), N'Кропоткин', N'Мичурина', N'26')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'B111C5', N'Поплин', 1, CAST(8500.0000 AS Decimal(19, 4)), 5, 1, 1, 1, 4, 6, N'Поплин «Розовый жемчуг» шириной 220 см с изображением на ткани — крупные цветы, чайная роза; цветовая гамма: бледно-розовая.', N'products\B111C5.JPEG')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'C384D8', N'Сатин «Дымчатая роза» однотонный', 1, CAST(1133.0000 AS Decimal(19, 4)), 10, 2, 1, 1, 3, 4, N'Сатин «Дымчатая роза» однотонный шириной 250 см с изображением на ткани цветовая гамма: розовый зефир.', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'D938K3', N'Фланель однотонная светлая', 1, CAST(1300.0000 AS Decimal(19, 4)), 10, 4, 3, 3, 4, 10, N'Фланель однотонная светлая оптом шириной 90 см с изображением на ткани — однотонное; цветовая гамма: голубая, желтая, розовая, сирень, фисташка.', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'E112C6', N'Муслин «Bej»', 1, CAST(10500.0000 AS Decimal(19, 4)), 15, 2, 2, 2, 3, 13, N'Муслин «Bej» однотонный шириной 140+/-5 см с изображением на ткани — однотонный; цветовая гамма: кофе с молоком.', N'products\E112C6.JPG')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'F374S8', N'Фланель рубашечная', 1, CAST(2100.0000 AS Decimal(19, 4)), 5, 1, 1, 3, 2, 5, N'Фланель рубашечная шириной 150 см с изображением на ткани — клетка; цветовая гамма: светло-коричневая, синий-королевский.', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'H483D9', N'Фланель детская H483D9', 1, CAST(318.0000 AS Decimal(19, 4)), 5, 3, 2, 2, 2, 18, N'Фланель детская 21212-2 шириной 90 см с изображением на ткани — россыпь звездочек; цветовая гамма: баклажан, оранжевый, розовая.', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'H497J3', N'Ситец детский', 1, CAST(523.0000 AS Decimal(19, 4)), 5, 1, 3, 2, 2, 8, N'Ситец детский шириной 95 см с изображением на ткани — котята, сердечки; цветовая гамма: белоземельная, оранжевый.', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'I483H3', N'Ткань поплин «Вивьен»', 1, CAST(11300.0000 AS Decimal(19, 4)), 10, 1, 2, 1, 2, 5, N'Ткань поплин «Вивьен» шириной 220 см с изображением на ткани — горошек; цветовая гамма: синяя, фисташка.', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'K284U8', N'Бязь детская «Самолеты»', 1, CAST(5100.0000 AS Decimal(19, 4)), 25, 2, 3, 2, 3, 2, N'Бязь детская «Самолеты» шириной 150 см с изображением на ткани — игрушки, самолетики; цветовая гамма: белая, зеленая, синяя. ', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'K839K3', N'Плюш белый в клетку', 1, CAST(765.0000 AS Decimal(19, 4)), 5, 2, 3, 2, 2, 3, N'Плюш белый в клетку шириной 180 см с изображением на ткани — клетка, однотонный; цветовая гамма: белая, однотонная.', N'products\K839K3.JPG ')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'L293S9', N'Плюш розовый гладкий', 1, CAST(30000.0000 AS Decimal(19, 4)), 40, 3, 1, 2, 3, 2, N'Плюш розовый гладкий шириной 180 см с изображением на ткани — однотонный; цветовая гамма: однотонная, розовая.', N'products\L293S9.JPG')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'M112C8', N'Бязь детская «Совята»', 1, CAST(26000.0000 AS Decimal(19, 4)), 20, 2, 1, 2, 2, 14, N'Бязь детская «Совята» шириной 150 см с изображением на ткани — совы; цветовая гамма: бордо, желтая, салатовая.', N'products\M112C8.JPG')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'M294G9', N'Полотно вафельное «8 марта»', 1, CAST(5130.0000 AS Decimal(19, 4)), 5, 2, 1, 3, 2, 1, N'Полотно вафельное «8 марта» шириной 50 см с изображением на ткани — белые розы; цветовая гамма: розовая.', N'products\M294G9.JPG')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'M398S9', N'Поплин Мокко', 1, CAST(1800.0000 AS Decimal(19, 4)), 15, 4, 3, 1, 2, 6, N'Поплин Мокко 220 см шириной 220 см с изображением на ткани — однотонное; цветовая гамма: коричневая, кофе, шоколад.', N'products\M398S9.JPG')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'N283K3', N'Сатин «Миндальный» однотонный', 1, CAST(6500.0000 AS Decimal(19, 4)), 5, 3, 1, 1, 3, 7, N'Сатин «Миндальный» однотонный шириной 250 см с изображением на ткани цветовая гамма: миндаль. ', N'products\N283K3.JPG')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'N385L2', N'Сатин «Фисташковый» однотонный', 1, CAST(7000.0000 AS Decimal(19, 4)), 20, 1, 3, 1, 2, 2, N'Сатин «Фисташковый» однотонный шириной 250 см с изображением на ткани цветовая гамма: фисташка.', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'N387I8', N'Полотно вафельное «Кухня»', 1, CAST(1000.0000 AS Decimal(19, 4)), 15, 1, 2, 3, 3, 5, N'Полотно вафельное «Кухня» шириной 50 см с изображением на ткани — кухня; цветовая гамма: желтая, малина. ', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'N394K2', N'Ткань поплин «Лакшери»', 1, CAST(30660.0000 AS Decimal(19, 4)), 10, 2, 2, 1, 4, 15, N'Ткань поплин «Лакшери» шириной 220 см с изображением на ткани — надписи, сердечки; цветовая гамма: белая, красная, черная. ', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'O947D8', N'Ткань для скатертей под рогожку', 1, CAST(3550.0000 AS Decimal(19, 4)), 10, 4, 2, 3, 3, 9, N'Ткань для скатертей под рогожку «рис 18825» шириной 150 см с изображением на ткани — ромашки, россыпь цветов; цветовая гамма: красная, синяя.', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'P495H8', N'Поплин «Густав»', 1, CAST(1000.0000 AS Decimal(19, 4)), 15, 3, 1, 1, 2, 14, N'Поплин «Густав» шириной 220 см с изображением на ткани — листья, папортник; цветовая гамма: зеленая, светло-серая.', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'Q836H4', N'Фланель рубашечная', 1, CAST(1350.0000 AS Decimal(19, 4)), 5, 4, 1, 3, 4, 7, N'Фланель арт 535 рубашечная шириной 150 см с изображением на ткани — клетка; цветовая гамма: светло-коричневая, синий-королевский.', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'R748K3', N'Поплин Морская волна', 1, CAST(2300.0000 AS Decimal(19, 4)), 15, 4, 3, 1, 2, 6, N'Поплин Морская волна 220 см шириной 220 см с изображением на ткани — однотонное; цветовая гамма: аквамарин, бирюзовая.', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'R983K4', N'Сатин «Серо-бежевый» однотонный', 1, CAST(1645.0000 AS Decimal(19, 4)), 15, 2, 2, 1, 2, 13, N'Сатин «Серо-бежевый» однотонный шириной 250 см с изображением на ткани цветовая гамма: серо-бежевая.', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'S384K2', N'Фланель черная', 1, CAST(69000.0000 AS Decimal(19, 4)), 40, 1, 3, 3, 4, 2, N'Фланель черная оптом шириной 90 см с изображением на ткани — однотонное; цветовая гамма: черная.', N'products\S384K2.JPG')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'T238C7', N'Муслин «Gri»', 1, CAST(6500.0000 AS Decimal(19, 4)), 15, 1, 2, 2, 2, 12, N'Муслин «Gri» однотонный шириной 140+/-5 см с изображением на ткани — однотонный; цветовая гамма: серая.', N'products\T238C7.JPG')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'U947E9', N'Муслин белый горошек на однотонном фоне', 1, CAST(3411.0000 AS Decimal(19, 4)), 10, 2, 3, 2, 3, 4, N'Муслин белый горошек на однотонном фоне шириной 150 см с изображением на ткани — мелкий горошек; цветовая гамма: желтая.', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'V378J3', N'Ситец детский', 1, CAST(2400.0000 AS Decimal(19, 4)), 15, 3, 3, 2, 3, 14, N'Ситец детский шириной 95 см с изображением на ткани — котенок, облака, полумесяц, радуга; цветовая гамма: бледно-розовая, голубая, салатовая, серо-бежевая.', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'W874J3', N'Ткань поплин «Натурель»', 1, CAST(1600.0000 AS Decimal(19, 4)), 5, 1, 3, 1, 3, 9, N'Ткань поплин «Натурель» шириной 220 см с изображением на ткани — мелкие цветы; цветовая гамма: пепельная, розовая. ', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'X846D3', N'Ситец детский', 1, CAST(9300.0000 AS Decimal(19, 4)), 25, 2, 1, 2, 3, 5, N'Ситец детский шириной 95 см с изображением на ткани — жираф, полумесяц, пчелки; цветовая гамма: темно-фиолетовая.', N'products\picture.png')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [MeasureUnitID], [ProductCost], [ProductMaxDiscount], [ProductManufacturerID], [ProductSupplierID], [ProductCategoryID], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'Z937S2', N'Поплин Голубой', 1, CAST(9000.0000 AS Decimal(19, 4)), 10, 1, 1, 1, 2, 15, N'Поплин Голубой 220 см шириной 220 см с изображением на ткани — однотонное; цветовая гамма: голубая.', N'products\picture.png')
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
INSERT [dbo].[Status] ([StatusID], [SatusName]) VALUES (1, N'Новый')
INSERT [dbo].[Status] ([StatusID], [SatusName]) VALUES (2, N'Завершённый')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName]) VALUES (1, N'Раута')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName]) VALUES (2, N'ООО Афо-Тек')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName]) VALUES (3, N'ГК Петров')
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Лавров', N'Богдан', N'Львович', N'1234', N'1234', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Смирнова', N'Полина', N'Фёдоровна', N'1zx8@yandex.ru', N'uzWC67', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Полякова', N'София', N'Данииловна', N'x@mail.ru', N'8ntwUp', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Чеботарева', N'Марина', N'Данииловна', N'34d@gmail.com', N'YOyhfR', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Ермолов', N'Адам', N'Иванович', N'pxacl@mail.ru', N'RSbvHv', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Васильев', N'Андрей', N'Кириллович', N'7o1@gmail.com', N'rwVDh9', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Маслов', N'Максим', N'Иванович', N'1@gmail.com', N'LdNyos', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Симонов', N'Михаил', N'Тимурович', N'iut@gmail.com', N'gynQMT', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Павлова', N'Ксения', N'Михайловна', N'e3t@outlook.com', N'AtnDjr', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Трифонов', N'Григорий', N'Юрьевич', N'41clb6o2g@yandex.ru', N'JlFRCZ', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickupPoint] FOREIGN KEY([OrderPickupPointID])
REFERENCES [dbo].[PickupPoint] ([PointID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickupPoint]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([OrderStatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ProductManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ManufacturerID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_MeasureUnit] FOREIGN KEY([MeasureUnitID])
REFERENCES [dbo].[MeasureUnit] ([UnitID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_MeasureUnit]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([ProductSupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
