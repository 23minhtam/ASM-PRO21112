create database asmpro2112
go

use asmpro2112
go
/****** Object:  Table [dbo].[Accounts]    Script Date: 6/18/2023 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
	[fullname] [nvarchar](100) NULL,
	[email] [varchar](100) NULL,
	[photo] [varchar](50) NULL,
	[activated] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 6/18/2023 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brands](
	[id] [varchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[image] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/18/2023 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [char](4) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/18/2023 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[orderId] [int] NULL,
	[productId] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/18/2023 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[username] [varchar](50) NULL,
	[createDate] [date] NULL,
	[address] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 6/18/2023 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[productId] [int] NULL,
	[categoryId] [char](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/18/2023 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[price] [float] NULL,
	[createDate] [date] NULL,
	[available] [bit] NULL,
	[brandId] [varchar](10) NULL,
	[images] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoleDetails]    Script Date: 6/18/2023 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoleDetails](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[accountId] [varchar](50) NULL,
	[roleId] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6/18/2023 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[role] [varchar](10) NOT NULL,
	[description] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comments](
	[username] [nvarchar](50) NOT NULL,
    content NVARCHAR(MAX),
    createdAt DATETIME,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

INSERT [dbo].[Comments] ([username], [content], [createdAt]) VALUES 
(N'phathung', N'aaaaaaaaaa', N'10-10-2002')

select * from Comments

INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'vantrinh', N'123', N'Lê Văn Trình', N'vantrinh@gmail.com', N'cat.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'minhtam', N'123', N'Võ Minh Tâm', N'minhtam@fpt.edu.vn', N'cat2.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'hoanganh', N'123', N'Lê Xuân Hoàng ANh', N'hoanganh@gmail.com', N'dog.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'admin', N'123', N'Admin', N'admin@gmail.com', N'admin.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'phathung', N'123', N'Lê Nguyễn Phát Hưng', N'phathung8719@gmail.com', N'50851a34.jpg', 1)
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'BA', N'Kim cương tự nhiên', N'kctn1.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'KE', N'Kim cương nhân tạo', N'kcnt1.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'BTC', N'Kim cương đã xử lý', N'kcdxl1.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'ETH', N'Kim cương màu tự nhiên', N'kcmtn1.png')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM01', N'Kim cương tự nhiên')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM02', N'Kim cương nhân tạo')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM04', N'Kim cương đã xử lý')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM03', N'Kim cương màu tự nhiên')
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (0, 8, 2, 190000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (1, 9, 1, 350000, 1)

SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (8, N'admin', CAST(N'2023-06-08' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (9, N'vantrinh', CAST(N'2023-06-09' AS Date), N'169 Đinh Bộ Lĩnh')

SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (1, 0, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (2, 1, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (3, 2, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (4, 3, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (5, 4, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (6, 5, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (7, 6, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (8, 7, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (9, 8, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (10, 9, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (11, 10, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (12, 11, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (13, 12, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (14, 13, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (15, 14, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (16, 15, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (17, 16, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (18, 17, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (19, 18, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (20, 19, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (21, 20, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (22, 21, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (23, 22, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (24, 23, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (25, 24, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (26, 25, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (27, 26, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (28, 27, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (29, 28, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (30, 29, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (31, 30, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (32, 31, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (33, 32, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (34, 33, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (35, 34, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (36, 35, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (37, 36, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (38, 37, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (39, 38, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (40, 39, N'DM04')

SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 


INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (0, N'Kim cương tự nhiên 001', 10000, CAST(N'2023-05-15' AS Date), 1, N'BA', N'["kctn1.jpg","kctn1.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (1, N'Kim cương tự nhiên 002', 13000, CAST(N'2023-04-15' AS Date), 1, N'BA', N'["kctn2.jpg","kctn2.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (2, N'Kim cương tự nhiên 003', 19000, CAST(N'2023-03-20' AS Date), 1, N'BA', N'["kctn3.jpg","kctn3.jpg","kctn3.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (3, N'Kim cương tự nhiên 004', 35000, CAST(N'2023-03-20' AS Date), 1, N'BA', N'["kctn4.png","kctn4.png"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (4, N'Kim cương tự nhiên 005', 50000, CAST(N'2023-03-20' AS Date), 1, N'BA', N'["kctn5.webp","kctn5.webp"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (5, N'Kim cương tự nhiên 006', 37000, CAST(N'2023-03-22' AS Date), 1, N'BA', N'["kctn6.jpg","kctn6.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (6, N'Kim cương tự nhiên 007', 22000, CAST(N'2023-04-10' AS Date), 1, N'BA', N'["kctn7.webp","kctn7.webp"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (7, N'Kim cương tự nhiên 008', 28000, CAST(N'2023-04-15' AS Date), 1, N'BA', N'["kctn8.jpg","kctn8.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (8, N'Kim cương tự nhiên 009', 38000, CAST(N'2023-04-21' AS Date), 1, N'BA', N'["kctn9.jpeg","kctn9.jpeg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (9, N'Kim cương tự nhiên 0010', 18000, CAST(N'2023-04-15' AS Date), 1, N'BA', N'["kctn10.jpeg","kctn10.jpeg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (10, N'Kim cương nhân tạo 001', 15000, CAST(N'2023-04-12' AS Date), 1, N'KE', N'["kcnt1.jpg","kcnt1.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (11, N'Kim cương nhân tạo 002', 8000, CAST(N'2023-04-12' AS Date), 1, N'KE', N'["kcnt5.jpg","kcnt5.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (12, N'Kim cương nhân tạo 003', 9000, CAST(N'2023-04-12' AS Date), 1, N'KE', N'["kctn8.jpg","kctn8.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (13, N'Kim cương nhân tạo 004', 3500, CAST(N'2023-04-13' AS Date), 1, N'KE', N'["kcnt9.jpg","kcnt9.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (14, N'Kim cương nhân tạo 005', 7000, CAST(N'2023-04-13' AS Date), 1, N'KE', N'["kcnt4.jpg","kcnt4.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (15, N'Kim cương nhân tạo 006', 5400, CAST(N'2023-04-13' AS Date), 1, N'KE', N'["kcnt6.jpg","kcnt6.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (16, N'Kim cương nhân tạo 007', 7800, CAST(N'2023-04-13' AS Date), 1, N'KE', N'["kcnt7.jpg","kcnt7.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (17, N'Kim cương nhân tạo 008', 9700, CAST(N'2023-04-13' AS Date), 1, N'KE', N'["kctn8.jpg","kctn8.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (18, N'Kim cương nhân tạo 009', 3200, CAST(N'2023-04-13' AS Date), 1, N'KE', N'["kcnt9.jpg","kcnt9.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (19, N'Kim cương nhân tạo 0010', 4500, CAST(N'2023-04-13' AS Date), 1, N'KE', N'["kcnt6.jpg","kcnt6.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (20, N'Kim cương màu tự nhiên 001', 18000, CAST(N'2023-04-14' AS Date), 1, N'ETH', N'["kcmtn1.png","kcmtn1.png"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (21, N'Kim cương màu tự nhiên 002', 25000, CAST(N'2023-03-15' AS Date), 1, N'ETH', N'["kcmtn2.jpg","kcmtn2.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (22, N'Kim cương màu tự nhiên 003', 43000, CAST(N'2023-03-15' AS Date), 1, N'ETH', N'["kcmtn4.jpg","kcmtn4.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (23, N'Kim cương màu tự nhiên 004', 12000, CAST(N'2023-03-15' AS Date), 1, N'ETH', N'["kcmtn4.jpg","kcmtn4.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (24, N'Kim cương màu tự nhiên 005', 45000, CAST(N'2023-03-15' AS Date), 1, N'ETH', N'["kcmtn5.jpg","kcmtn5.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (25, N'Kim cương màu tự nhiên 006', 67000, CAST(N'2023-03-15' AS Date), 1, N'ETH', N'["kcmtn6.jpg","kcmtn6.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (26, N'Kim cương màu tự nhiên 007', 23000, CAST(N'2023-03-15' AS Date), 1, N'ETH', N'["kcmtn7.jpg","kcmtn7.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (27, N'Kim cương màu tự nhiên 008', 34000, CAST(N'2023-03-15' AS Date), 1, N'ETH', N'["kcmtn8.jpg","kcmtn8.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (28, N'Kim cương màu tự nhiên 009', 75000, CAST(N'2023-03-15' AS Date), 1, N'ETH', N'["kcmtn9.jpg","kcmtn9.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (29, N'Kim cương màu tự nhiên 0010', 23000, CAST(N'2023-03-15' AS Date), 1, N'ETH', N'["kcmtn7.jpg","kcmtn7.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (30, N'Kim cương đã xử lí 001', 235000, CAST(N'2023-10-10' AS Date), 1, N'BTC', N'["kcdxl1.jpg","kcdxl1.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (31, N'Kim cương đã xử lí 002', 643000, CAST(N'2023-10-10' AS Date), 1, N'BTC', N'["kcdxl2.jpg","kcdxl2.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (32, N'Kim cương đã xử lí 003', 543000, CAST(N'2023-10-10' AS Date), 1, N'BTC', N'["kcdxl3.jpg","kcdxl3.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (33, N'Kim cương đã xử lí 004', 154000, CAST(N'2023-10-10' AS Date), 1, N'BTC', N'["kcdxl4.jpg","kcdxl4.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (34, N'Kim cương đã xử lí 005', 156000, CAST(N'2023-10-10' AS Date), 1, N'BTC', N'["kcdxl5.jpg","kcdxl5.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (35, N'Kim cương đã xử lí 006', 124000, CAST(N'2023-10-10' AS Date), 1, N'BTC', N'["kcdxl6.jpg","kcdxl6.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (36, N'Kim cương đã xử lí 007', 543000, CAST(N'2023-10-10' AS Date), 1, N'BTC', N'["kcdxl7.jpg","kcdxl7.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (37, N'Kim cương đã xử lí 008', 123000, CAST(N'2023-10-10' AS Date), 1, N'BTC', N'["kcdxl8.png","kcdxl8.png"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (38, N'Kim cương đã xử lí 009', 321000, CAST(N'2023-10-10' AS Date), 1, N'BTC', N'["kcdxl9.jpg","kcdxl9.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (39, N'Kim cương đã xử lí 0010', 567000, CAST(N'2023-10-10' AS Date), 1, N'BTC', N'["kcdxl10.jpg","kcdxl10.jpg"]')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[RoleDetails] ON 

INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (0, N'admin', N'director')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (4, N'vantrinh', N'staff')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (6, N'minhtam', N'user')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (7, N'hoanganh', N'user')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (2, N'phathung', N'user')
SET IDENTITY_INSERT [dbo].[RoleDetails] OFF
INSERT [dbo].[Roles] ([role], [description]) VALUES (N'director', N'director')
INSERT [dbo].[Roles] ([role], [description]) VALUES (N'staff', N'staff')
INSERT [dbo].[Roles] ([role], [description]) VALUES (N'user', N'user')
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([orderId])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([productId])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[Comments] ([username])
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD FOREIGN KEY([productId])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([brandId])
REFERENCES [dbo].[Brands] ([id])
GO
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD FOREIGN KEY([accountId])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD FOREIGN KEY([roleId])
REFERENCES [dbo].[Roles] ([role])
GO
/****** Object:  StoredProcedure [dbo].[sp_ReportCost]    Script Date: 6/18/2023 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ReportCost] (@month INT)
AS BEGIN
SELECT 
			convert(varchar(10), o.createDate, 103) AS NgayBan,		
			COUNT(DISTINCT o.id) AS TongHoaDon,
			SUM(od.quantity * od.price) AS DoanhThu
FROM Orders o, OrderDetails od  WHERE o.id = od.orderId AND MONTH(o.createDate) = @month
GROUP BY createDate
END
GO
