USE [TrangTinTuc]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 07/07/2021 2:02:35 PM ******/
DROP TABLE [dbo].[tblUser]
GO
/****** Object:  Table [dbo].[tblNews]    Script Date: 07/07/2021 2:02:35 PM ******/
DROP TABLE [dbo].[tblNews]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 07/07/2021 2:02:35 PM ******/
DROP TABLE [dbo].[tblCategory]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 07/07/2021 2:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[category_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblCategory] PRIMARY KEY CLUSTERED 
(
	[category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNews]    Script Date: 07/07/2021 2:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNews](
	[news_ID] [int] IDENTITY(1,1) NOT NULL,
	[group_ID] [int] NOT NULL,
	[category_ID] [nchar](10) NOT NULL,
	[title] [nvarchar](500) NOT NULL,
	[body] [nvarchar](max) NOT NULL,
	[picture] [varchar](200) NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_tblNews] PRIMARY KEY CLUSTERED 
(
	[news_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 07/07/2021 2:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[user_ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[power] [int] NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[phone] [varchar](15) NOT NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[user_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON 

INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (1, N'Thể Thao')
INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (2, N'Khoa Học')
INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (3, N'Giải Trí')
INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (4, N'Giáo Dục')
INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (5, N'Pháp Luật')
INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (6, N'Sức Khỏe')
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
SET IDENTITY_INSERT [dbo].[tblNews] ON 

INSERT [dbo].[tblNews] ([news_ID], [group_ID], [category_ID], [title], [body], [picture], [date]) VALUES (1, 1, N'2         ', N'Neymar giúp Brazil vào chung kết Copa America', N'Brazil thắng Peru 1-0 ở bán kết Copa America 2021, nhờ bàn duy nhất của Lucas Paqueta sau pha kiến tạo của Neymar.Cũng giống trận gặp Chile ở tứ kết, Brazil vượt qua Peru với tỷ số tối thiểu. Neymar và Lucas Paqueta lại ghi dấu giày vào bàn thắng duy nhất, giúp đội chủ nhà giành vé vào chung kết, gặp đội thắng trong cặp bán kết còn lại giữa Argentina và Colombia.

Không giống trận thắng Peru 4-0 ở vòng bảng, Brazil gặp nhiều khó khăn trong lần tái đấu đối thủ ở bán kết. Trong hiệp một, đội chủ nhà bỏ lỡ nhiều cơ hội, trong đó đáng kể nhất là pha đệm bóng cận thành hỏng ăn của Neymar cũng như hai tình huống Richarlison rê qua thủ môn nhưng không thể ghi bàn.Số đông cầu thủ lùi sâu của Peru không đồng nghĩa với chất lượng phòng ngự. Họ thủng lưới ở phút 35, sau khi ba cầu thủ đội khách không thể ngăn cản Neymar, để siêu sao Brazil rê qua rồi chuyền vào cấm địa cho Paqueta lập công trong thế trống trải.

Brazil dẫn 1-0 sau hiệp một, hiệp đấu họ dứt điểm trúng hướng cầu môn bảy lần. Nhưng sang hiệp hai, Peru vùng lên và kiểm soát thế trận. Đội khách liên tục đe dọa khung thành Ederson bằng những pha dứt điểm căng. Sau khi Lapadula thử tài thủ môn Brazil bằng cú sút chân trái trong vòng cấm, đến lượt Raziel Garcia liên tiếp sút xa buộc Ederson phải đẩy bóng cứu thua.rong hiệp hai, Brazil lên bóng rời rạc và chỉ một lần dứt điểm trúng hướng cầu môn. Hàng công chủ nhà gần như bị chia cắt hoàn toàn. Điểm nhấn mà Brazil tạo ra trong 45 phút cuối là những tình huống ngã trong vòng cấm của Neymar cũng như Richarlison, nhưng không có tiếng còi nào được cất lên.

Chiến thắng 1-0 là đủ để Brazil vào chung kết. Các học trò Tite dường như chưa chơi với 100% khả năng ở trận gặp Peru. Brazil chắc chắn sẽ thể hiện bộ mặt nghiêm túc hơn, khi đối đầu với Argentina hoặc Colombia ở chung kết.', NULL, CAST(N'2021-07-06 00:00:00.000' AS DateTime))
INSERT [dbo].[tblNews] ([news_ID], [group_ID], [category_ID], [title], [body], [picture], [date]) VALUES (2, 1, N'3         ', N'Găng tay của Donnarumma khác biệt thế nào', N'Thủ môn Gianluigi Donnarumma, với sự hỗ trợ từ đôi găng tay đầy gai, đã chơi ấn tượng để giúp Italy vào bán kết Euro 2021.Theo Marca, Donnarumma sử dụng găng tay mang tên Predator Pro Hibryd do Adidas sản xuất. Đôi găng có giá 142 USD (khoảng 3,2 triệu đồng) với 288 gai cao su ở mặt sau. Tại Euro 2021, bên cạnh Donnarumma, hai đồng nghiệp David De Gea và Kasper Schmeichel cũng sử dụng công cụ lao động này.', NULL, CAST(N'2021-07-06 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblNews] OFF
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([user_ID], [username], [password], [power], [fullname], [address], [email], [phone]) VALUES (1, N'admin', N'1', 0, N'Nguyen Van A', N'FPT Hoa Lac', N'abc@gmail.com', N'0123456789')
INSERT [dbo].[tblUser] ([user_ID], [username], [password], [power], [fullname], [address], [email], [phone]) VALUES (2, N'mod1', N'1', 1, N'Nguyen Van B', N'Ha Noi ', N'xyz@gmail.com', N'0987654321')
INSERT [dbo].[tblUser] ([user_ID], [username], [password], [power], [fullname], [address], [email], [phone]) VALUES (3, N'mod2', N'1', 1, N'Nguyen Van C', N'Vinh Phuc', N'abcd@gmail.com', N'098765656')
INSERT [dbo].[tblUser] ([user_ID], [username], [password], [power], [fullname], [address], [email], [phone]) VALUES (4, N'mod3', N'1', 1, N'Nguyen Van C', N'Ha Noi', N'xxyyzz@gmail.com', N'038123456')
INSERT [dbo].[tblUser] ([user_ID], [username], [password], [power], [fullname], [address], [email], [phone]) VALUES (5, N'ronaldo', N'1', 2, N'Ronaldo', N'Bo Dao Nha', N'ronaldo@gmail.com', N'0976999222')
SET IDENTITY_INSERT [dbo].[tblUser] OFF
