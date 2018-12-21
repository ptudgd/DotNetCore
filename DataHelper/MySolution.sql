USE [MySolution]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [bigint] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Url] [varchar](max) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Chapter]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapter](
	[ChapterId] [bigint] NOT NULL,
	[StoryId] [bigint] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[WriterDate] [datetime] NULL,
	[EditorDate] [datetime] NULL,
 CONSTRAINT [PK_Chapter] PRIMARY KEY CLUSTERED 
(
	[ChapterId] ASC,
	[StoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Content]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ContentId] [bigint] NULL,
	[StoryId] [bigint] NULL,
	[Content] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [bigint] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Story]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Story](
	[StoryId] [bigint] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[AuthorId] [bigint] NULL,
	[WriteDate] [datetime] NULL,
	[EditDate] [datetime] NULL,
	[Image] [varchar](max) NULL,
	[Decription] [nvarchar](max) NULL,
	[StatusId] [bigint] NULL,
	[isPublic] [bit] NULL,
	[View] [bigint] NULL,
 CONSTRAINT [PK_Story] PRIMARY KEY CLUSTERED 
(
	[StoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[CategoryId] [bigint] NOT NULL,
	[StoryId] [bigint] NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[StoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [bigint] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [varchar](500) NULL,
	[Image] [varchar](max) NULL,
	[FacebookId] [varchar](max) NULL,
	[LastLogin] [bigint] NULL,
	[Exp] [bigint] NULL,
	[Token] [varchar](max) NULL,
	[Money] [decimal](18, 2) NULL,
	[IsAdmin] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Url]) VALUES (1, N'Tiên hiệp', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Url]) VALUES (2, N'Ngôn Tình', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Url]) VALUES (3, N'Kiếm hiệp', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Url]) VALUES (4, N'Dị Giới', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Url]) VALUES (5, N'Xuyên Không', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Url]) VALUES (6, N'Huyền Huyễn', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Url]) VALUES (7, N'Sắc hiệp', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Url]) VALUES (8, N'Lịch sử', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Url]) VALUES (9, N'Quân sự', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Url]) VALUES (10, N'Đô thị', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Url]) VALUES (11, N'Võng Du', NULL)
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 1, N'Không nhịn được nha!', CAST(N'2018-12-21 07:25:45.927' AS DateTime), CAST(N'2018-12-21 07:25:45.927' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 2, N'Ngũ Hành Chung', CAST(N'2018-12-21 07:25:51.967' AS DateTime), CAST(N'2018-12-21 07:25:51.967' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 3, N'Đấu Hoàng Tề Tụ', CAST(N'2018-12-21 07:25:57.743' AS DateTime), CAST(N'2018-12-21 07:25:57.743' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 4, N'Linh, Huyền Ngọc Chiến Pháp', CAST(N'2018-12-21 07:26:03.560' AS DateTime), CAST(N'2018-12-21 07:26:03.560' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 5, N'Trên ', CAST(N'2018-12-21 07:26:08.737' AS DateTime), CAST(N'2018-12-21 07:26:08.737' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 6, N'Bà cô đanh đá', CAST(N'2018-12-21 07:26:13.890' AS DateTime), CAST(N'2018-12-21 07:26:13.890' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 7, N'Thiên Đạo hệ thống', CAST(N'2018-12-21 07:26:18.280' AS DateTime), CAST(N'2018-12-21 07:26:18.280' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 8, N'Phân chia ruộng đất', CAST(N'2018-12-21 07:26:23.317' AS DateTime), CAST(N'2018-12-21 07:26:23.317' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 9, N'Túc địch chi chiến ', CAST(N'2018-12-21 07:26:28.627' AS DateTime), CAST(N'2018-12-21 07:26:28.627' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 10, N' Trấn Thiên Quyền', CAST(N'2018-12-21 07:26:33.857' AS DateTime), CAST(N'2018-12-21 07:26:33.857' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 11, N' Đạo Tổ tức giận​', CAST(N'2018-12-21 07:26:38.733' AS DateTime), CAST(N'2018-12-21 07:26:38.733' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 12, N'Tô Chiếu hôn mê', CAST(N'2018-12-21 07:26:43.690' AS DateTime), CAST(N'2018-12-21 07:26:43.690' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 13, N'Tổ huyết Thiên Ma', CAST(N'2018-12-21 07:26:48.733' AS DateTime), CAST(N'2018-12-21 07:26:48.733' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 14, N'Tấn công hỗn độn tộc (3)', CAST(N'2018-12-21 07:26:53.940' AS DateTime), CAST(N'2018-12-21 07:26:53.940' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 15, N'Giáo Viên A Thập Lục ', CAST(N'2018-12-21 07:26:59.367' AS DateTime), CAST(N'2018-12-21 07:26:59.367' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 16, N'Bày mưu. ám toán. sự thật', CAST(N'2018-12-21 07:27:05.017' AS DateTime), CAST(N'2018-12-21 07:27:05.017' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 17, N'Phong Lâm Hỏa Sơn', CAST(N'2018-12-21 07:27:10.600' AS DateTime), CAST(N'2018-12-21 07:27:10.600' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 18, N'Siêu trộm', CAST(N'2018-12-21 07:27:16.260' AS DateTime), CAST(N'2018-12-21 07:27:16.260' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 19, N'Tiếp tục đi ngang qua', CAST(N'2018-12-21 07:27:21.667' AS DateTime), CAST(N'2018-12-21 07:27:21.667' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 20, N'Toàn thân trở ra (2)', CAST(N'2018-12-21 07:27:26.607' AS DateTime), CAST(N'2018-12-21 07:27:26.607' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 21, N'Gây Dựng Lại Ý Thức', CAST(N'2018-12-21 07:27:31.830' AS DateTime), CAST(N'2018-12-21 07:27:31.830' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 22, N'Đáng tiếc', CAST(N'2018-12-21 07:27:36.593' AS DateTime), CAST(N'2018-12-21 07:27:36.593' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 23, N' Đáng tiếc', CAST(N'2018-12-21 07:27:41.930' AS DateTime), CAST(N'2018-12-21 07:27:41.930' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 24, N'Âm Minh ra tay (2)', CAST(N'2018-12-21 07:27:47.237' AS DateTime), CAST(N'2018-12-21 07:27:47.237' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 25, N'Quy nguyên đại chiến', CAST(N'2018-12-21 07:27:52.280' AS DateTime), CAST(N'2018-12-21 07:27:52.280' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (1, 26, N' Phi kiếm sóng gió (3)', CAST(N'2018-12-21 07:27:57.723' AS DateTime), CAST(N'2018-12-21 07:27:57.723' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 1, N'Lời đồn đại trên phố', CAST(N'2018-12-21 07:25:46.127' AS DateTime), CAST(N'2018-12-21 07:25:46.127' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 2, N'Một quyền', CAST(N'2018-12-21 07:25:52.147' AS DateTime), CAST(N'2018-12-21 07:25:52.147' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 3, N'Yên tĩnh trước giông bão', CAST(N'2018-12-21 07:25:57.900' AS DateTime), CAST(N'2018-12-21 07:25:57.900' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 4, N'Đường ngọc lan anh, hắc sát thiên mạc', CAST(N'2018-12-21 07:26:03.733' AS DateTime), CAST(N'2018-12-21 07:26:03.733' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 5, N'Bí ẩn dưới án văn, 18+', CAST(N'2018-12-21 07:26:08.843' AS DateTime), CAST(N'2018-12-21 07:26:08.843' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 6, N'''Bất quá ca thích''', CAST(N'2018-12-21 07:26:14.023' AS DateTime), CAST(N'2018-12-21 07:26:14.023' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 7, N'Hủy diệt Đại Kiếm Phong', CAST(N'2018-12-21 07:26:18.473' AS DateTime), CAST(N'2018-12-21 07:26:18.473' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 8, N'Sư phụ lợi hại', CAST(N'2018-12-21 07:26:23.453' AS DateTime), CAST(N'2018-12-21 07:26:23.453' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 9, N'Gặp lại Võ Hoàng ', CAST(N'2018-12-21 07:26:28.810' AS DateTime), CAST(N'2018-12-21 07:26:28.810' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 10, N' Xuất thủ', CAST(N'2018-12-21 07:26:34.063' AS DateTime), CAST(N'2018-12-21 07:26:34.063' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 11, N'Nổi giận sát thánh​', CAST(N'2018-12-21 07:26:38.923' AS DateTime), CAST(N'2018-12-21 07:26:38.923' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 12, N' Trí nhớ bị phong ấn', CAST(N'2018-12-21 07:26:43.833' AS DateTime), CAST(N'2018-12-21 07:26:43.833' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 13, N'Lâm Tử Hàm nhờ vả', CAST(N'2018-12-21 07:26:48.880' AS DateTime), CAST(N'2018-12-21 07:26:48.880' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 14, N'Tấn công hỗn độn tộc (2)', CAST(N'2018-12-21 07:26:54.060' AS DateTime), CAST(N'2018-12-21 07:26:54.060' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 15, N'Thư Hàng Nói Hắn Tè Dầm ', CAST(N'2018-12-21 07:26:59.860' AS DateTime), CAST(N'2018-12-21 07:26:59.860' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 16, N'Đại biến thần lục', CAST(N'2018-12-21 07:27:05.140' AS DateTime), CAST(N'2018-12-21 07:27:05.140' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 17, N'Phân Thân Chi Thuật', CAST(N'2018-12-21 07:27:10.710' AS DateTime), CAST(N'2018-12-21 07:27:10.710' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 18, N'Cạm bẫy', CAST(N'2018-12-21 07:27:16.363' AS DateTime), CAST(N'2018-12-21 07:27:16.363' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 19, N'Đi ngang qua mà thôi', CAST(N'2018-12-21 07:27:21.790' AS DateTime), CAST(N'2018-12-21 07:27:21.790' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 20, N'Toàn thân trở ra (1)', CAST(N'2018-12-21 07:27:26.727' AS DateTime), CAST(N'2018-12-21 07:27:26.727' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 21, N'Chọn Lựa Thân Thể', CAST(N'2018-12-21 07:27:31.980' AS DateTime), CAST(N'2018-12-21 07:27:31.980' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 22, N'Tuyệt Đao coi như còn có lương tâm', CAST(N'2018-12-21 07:27:36.743' AS DateTime), CAST(N'2018-12-21 07:27:36.743' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 23, N'Tuyệt Đao coi như còn có lương tâm', CAST(N'2018-12-21 07:27:42.100' AS DateTime), CAST(N'2018-12-21 07:27:42.100' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 24, N'Âm Minh ra tay (1)', CAST(N'2018-12-21 07:27:47.410' AS DateTime), CAST(N'2018-12-21 07:27:47.410' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 25, N'Chiều tà đẫm máu', CAST(N'2018-12-21 07:27:52.470' AS DateTime), CAST(N'2018-12-21 07:27:52.470' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (2, 26, N' Phi kiếm sóng gió (2)', CAST(N'2018-12-21 07:27:57.867' AS DateTime), CAST(N'2018-12-21 07:27:57.867' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 1, N'Vết nứt', CAST(N'2018-12-21 07:25:46.363' AS DateTime), CAST(N'2018-12-21 07:25:46.363' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 2, N'Chính là gia gia của ngươi đây', CAST(N'2018-12-21 07:25:52.290' AS DateTime), CAST(N'2018-12-21 07:25:52.290' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 3, N'Nạp lan yên nhiên', CAST(N'2018-12-21 07:25:58.023' AS DateTime), CAST(N'2018-12-21 07:25:58.023' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 4, N'Tử Kim Tiên Lôi, một kích chấn động', CAST(N'2018-12-21 07:26:03.887' AS DateTime), CAST(N'2018-12-21 07:26:03.887' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 5, N'Bước chân vào Hợp Hoang Môn', CAST(N'2018-12-21 07:26:08.953' AS DateTime), CAST(N'2018-12-21 07:26:08.953' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 6, N'Miêu tộc đại nạn', CAST(N'2018-12-21 07:26:14.187' AS DateTime), CAST(N'2018-12-21 07:26:14.187' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 7, N'Cuồng ngạo bá khí', CAST(N'2018-12-21 07:26:18.593' AS DateTime), CAST(N'2018-12-21 07:26:18.593' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 8, N'Bài học đầu tiên', CAST(N'2018-12-21 07:26:23.640' AS DateTime), CAST(N'2018-12-21 07:26:23.640' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 9, N'Bạn tụ ', CAST(N'2018-12-21 07:26:28.947' AS DateTime), CAST(N'2018-12-21 07:26:28.947' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 10, N'Hỗn chiến', CAST(N'2018-12-21 07:26:34.167' AS DateTime), CAST(N'2018-12-21 07:26:34.167' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 11, N'Chỉ phụng Tần Thiên Đế', CAST(N'2018-12-21 07:26:39.047' AS DateTime), CAST(N'2018-12-21 07:26:39.047' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 12, N'Phản bội', CAST(N'2018-12-21 07:26:43.960' AS DateTime), CAST(N'2018-12-21 07:26:43.960' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 13, N' Đêm đầu tiên', CAST(N'2018-12-21 07:26:48.993' AS DateTime), CAST(N'2018-12-21 07:26:48.993' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 14, N'Tấn công hỗn độn tộc (1)', CAST(N'2018-12-21 07:26:54.197' AS DateTime), CAST(N'2018-12-21 07:26:54.197' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 15, N'Uống Cạn Chén Nước Sông Hằng, Kiếp Sau Vẫn Là Người Ấn Độ ', CAST(N'2018-12-21 07:27:00.107' AS DateTime), CAST(N'2018-12-21 07:27:00.107' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 16, N' Khuynh Đảo Tiên Môn Tông', CAST(N'2018-12-21 07:27:05.253' AS DateTime), CAST(N'2018-12-21 07:27:05.253' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 17, N' Phong Ấn Linh Hồn', CAST(N'2018-12-21 07:27:10.837' AS DateTime), CAST(N'2018-12-21 07:27:10.837' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 18, N'Kinh ngạc', CAST(N'2018-12-21 07:27:16.480' AS DateTime), CAST(N'2018-12-21 07:27:16.480' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 19, N'Bắt trộm linh ngư', CAST(N'2018-12-21 07:27:21.900' AS DateTime), CAST(N'2018-12-21 07:27:21.900' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 20, N'Thị huyết yêu linh', CAST(N'2018-12-21 07:27:26.880' AS DateTime), CAST(N'2018-12-21 07:27:26.880' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 21, N'Chủ Nhân Của Mộ Địa', CAST(N'2018-12-21 07:27:32.097' AS DateTime), CAST(N'2018-12-21 07:27:32.097' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 22, N'Trận chiến vận mệnh đã định', CAST(N'2018-12-21 07:27:36.877' AS DateTime), CAST(N'2018-12-21 07:27:36.877' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 23, N'Trận chiến vận mệnh đã định', CAST(N'2018-12-21 07:27:42.280' AS DateTime), CAST(N'2018-12-21 07:27:42.280' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 24, N'Thông Linh cảnh (2)', CAST(N'2018-12-21 07:27:47.510' AS DateTime), CAST(N'2018-12-21 07:27:47.510' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 25, N'Ta muốn giết người', CAST(N'2018-12-21 07:27:52.747' AS DateTime), CAST(N'2018-12-21 07:27:52.747' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (3, 26, N' Phi kiếm sóng gió (1)', CAST(N'2018-12-21 07:27:58.070' AS DateTime), CAST(N'2018-12-21 07:27:58.070' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 1, N'Cơ hội của Xích Ngột Dịch', CAST(N'2018-12-21 07:25:46.497' AS DateTime), CAST(N'2018-12-21 07:25:46.497' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 2, N'Minh Thương Phái Rất Ngưu Sao ??', CAST(N'2018-12-21 07:25:52.483' AS DateTime), CAST(N'2018-12-21 07:25:52.483' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 3, N'Đấu hoàng cường giả', CAST(N'2018-12-21 07:25:58.147' AS DateTime), CAST(N'2018-12-21 07:25:58.147' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 4, N'Cửu chuyển thánh nhân', CAST(N'2018-12-21 07:26:04.063' AS DateTime), CAST(N'2018-12-21 07:26:04.063' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 5, N'Đệ tử Hợp Hoang Môn, nữ nhân kiều diễm', CAST(N'2018-12-21 07:26:09.070' AS DateTime), CAST(N'2018-12-21 07:26:09.070' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 6, N' Mẹ!', CAST(N'2018-12-21 07:26:14.410' AS DateTime), CAST(N'2018-12-21 07:26:14.410' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 7, N'Trấn áp một đời thiên kiêu', CAST(N'2018-12-21 07:26:18.707' AS DateTime), CAST(N'2018-12-21 07:26:18.707' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 8, N'Hành tẩu bốn phương', CAST(N'2018-12-21 07:26:23.777' AS DateTime), CAST(N'2018-12-21 07:26:23.773' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 9, N'Đường về nhà ', CAST(N'2018-12-21 07:26:29.110' AS DateTime), CAST(N'2018-12-21 07:26:29.110' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 10, N'Vết thương tái phát', CAST(N'2018-12-21 07:26:34.277' AS DateTime), CAST(N'2018-12-21 07:26:34.277' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 11, N'Nhị Lang Thần hiển hóa vô biên', CAST(N'2018-12-21 07:26:39.153' AS DateTime), CAST(N'2018-12-21 07:26:39.153' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 12, N' Thiếp thân hiểu rõ', CAST(N'2018-12-21 07:26:44.073' AS DateTime), CAST(N'2018-12-21 07:26:44.073' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 13, N'Lời thề trọn kiếp', CAST(N'2018-12-21 07:26:49.107' AS DateTime), CAST(N'2018-12-21 07:26:49.107' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 14, N'Tranh đoạt lục đạo luân hồi', CAST(N'2018-12-21 07:26:54.313' AS DateTime), CAST(N'2018-12-21 07:26:54.313' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 15, N'Ngươi Biết Cảm Giác Bị Đại Pháo Chỉa Thẳng Vào Đầu Là Thế Nào Không? ', CAST(N'2018-12-21 07:27:00.227' AS DateTime), CAST(N'2018-12-21 07:27:00.227' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 16, N'Ám Sát', CAST(N'2018-12-21 07:27:05.380' AS DateTime), CAST(N'2018-12-21 07:27:05.380' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 17, N'Huyền Thiên Trọng Xích', CAST(N'2018-12-21 07:27:10.970' AS DateTime), CAST(N'2018-12-21 07:27:10.970' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 18, N'Một thú cốt khác', CAST(N'2018-12-21 07:27:16.593' AS DateTime), CAST(N'2018-12-21 07:27:16.593' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 19, N'Bổ Mạch Linh Đan', CAST(N'2018-12-21 07:27:22.027' AS DateTime), CAST(N'2018-12-21 07:27:22.027' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 20, N'Mở lối khác (2)', CAST(N'2018-12-21 07:27:27.027' AS DateTime), CAST(N'2018-12-21 07:27:27.027' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 21, N'Địa Sát Cảnh Tầng Ba', CAST(N'2018-12-21 07:27:32.220' AS DateTime), CAST(N'2018-12-21 07:27:32.220' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 22, N'Các đời Thiên tiên mạnh nhất', CAST(N'2018-12-21 07:27:37.017' AS DateTime), CAST(N'2018-12-21 07:27:37.017' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 23, N'Các đời Thiên tiên mạnh nhất', CAST(N'2018-12-21 07:27:42.417' AS DateTime), CAST(N'2018-12-21 07:27:42.417' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 24, N'Thông linh cảnh (1)', CAST(N'2018-12-21 07:27:47.627' AS DateTime), CAST(N'2018-12-21 07:27:47.627' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 25, N'Lá bài tẩy cuối cùng của Hoàng Thiên', CAST(N'2018-12-21 07:27:52.873' AS DateTime), CAST(N'2018-12-21 07:27:52.873' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (4, 26, N'Thần kiếm', CAST(N'2018-12-21 07:27:58.213' AS DateTime), CAST(N'2018-12-21 07:27:58.213' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 1, N' Một báo trả một báo', CAST(N'2018-12-21 07:25:46.620' AS DateTime), CAST(N'2018-12-21 07:25:46.620' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 2, N' Tới Chiến Trường Cổ', CAST(N'2018-12-21 07:25:52.843' AS DateTime), CAST(N'2018-12-21 07:25:52.843' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 3, N'Huyết tẩy mặc gia', CAST(N'2018-12-21 07:25:58.260' AS DateTime), CAST(N'2018-12-21 07:25:58.260' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 4, N'Huyết nhật thánh đoàn', CAST(N'2018-12-21 07:26:04.213' AS DateTime), CAST(N'2018-12-21 07:26:04.213' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 5, N'Đàn đại ngư (lại dụ được một em)', CAST(N'2018-12-21 07:26:09.190' AS DateTime), CAST(N'2018-12-21 07:26:09.190' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 6, N'Hạ Khiết Tâm', CAST(N'2018-12-21 07:26:14.560' AS DateTime), CAST(N'2018-12-21 07:26:14.560' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 7, N'Thần long thức giấc', CAST(N'2018-12-21 07:26:18.883' AS DateTime), CAST(N'2018-12-21 07:26:18.883' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 8, N'Thầy trò', CAST(N'2018-12-21 07:26:23.923' AS DateTime), CAST(N'2018-12-21 07:26:23.923' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 9, N'Huyền Thánh Thể thành ', CAST(N'2018-12-21 07:26:29.223' AS DateTime), CAST(N'2018-12-21 07:26:29.223' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 10, N' Ngộ đạo?!', CAST(N'2018-12-21 07:26:34.410' AS DateTime), CAST(N'2018-12-21 07:26:34.410' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 11, N'Thiên Đạo lực​', CAST(N'2018-12-21 07:26:39.270' AS DateTime), CAST(N'2018-12-21 07:26:39.270' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 12, N'Kế hoạch', CAST(N'2018-12-21 07:26:44.180' AS DateTime), CAST(N'2018-12-21 07:26:44.180' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 13, N'Trở về', CAST(N'2018-12-21 07:26:49.230' AS DateTime), CAST(N'2018-12-21 07:26:49.230' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 14, N'Nghênh Chiến Đại Phá Diệt Kiếp (2)', CAST(N'2018-12-21 07:26:54.437' AS DateTime), CAST(N'2018-12-21 07:26:54.437' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 15, N'Hạ Cung ', CAST(N'2018-12-21 07:27:00.440' AS DateTime), CAST(N'2018-12-21 07:27:00.440' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 16, N'Nội Chiến (3)', CAST(N'2018-12-21 07:27:05.520' AS DateTime), CAST(N'2018-12-21 07:27:05.520' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 17, N' Thần Tổ', CAST(N'2018-12-21 07:27:11.110' AS DateTime), CAST(N'2018-12-21 07:27:11.110' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 18, N'Xuất hiện sự tình khác thường', CAST(N'2018-12-21 07:27:16.713' AS DateTime), CAST(N'2018-12-21 07:27:16.713' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 19, N'Kinh hỉ', CAST(N'2018-12-21 07:27:22.137' AS DateTime), CAST(N'2018-12-21 07:27:22.137' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 20, N'Mở lối khác (1)', CAST(N'2018-12-21 07:27:27.173' AS DateTime), CAST(N'2018-12-21 07:27:27.173' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 21, N'Vượt Ải', CAST(N'2018-12-21 07:27:32.360' AS DateTime), CAST(N'2018-12-21 07:27:32.360' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 22, N'Kế hoạch của Yêu tộc', CAST(N'2018-12-21 07:27:37.257' AS DateTime), CAST(N'2018-12-21 07:27:37.257' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 23, N' Kế hoạch của Yêu tộc', CAST(N'2018-12-21 07:27:42.627' AS DateTime), CAST(N'2018-12-21 07:27:42.627' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 24, N'Đấu giá hội', CAST(N'2018-12-21 07:27:47.750' AS DateTime), CAST(N'2018-12-21 07:27:47.750' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 25, N'Lục Đạo Phong Thiên', CAST(N'2018-12-21 07:27:53.010' AS DateTime), CAST(N'2018-12-21 07:27:53.010' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (5, 26, N'Nếu có thể ...', CAST(N'2018-12-21 07:27:58.333' AS DateTime), CAST(N'2018-12-21 07:27:58.333' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 1, N'‘Gạch’ huynh, đa tạ ơn cứu mạng.', CAST(N'2018-12-21 07:25:46.750' AS DateTime), CAST(N'2018-12-21 07:25:46.750' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 2, N'Mở Đầu', CAST(N'2018-12-21 07:25:53.010' AS DateTime), CAST(N'2018-12-21 07:25:53.010' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 3, N'Đấu phá thương khung', CAST(N'2018-12-21 07:25:58.387' AS DateTime), CAST(N'2018-12-21 07:25:58.387' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 4, N'Sơ lâm Tu Chân Thế Giới', CAST(N'2018-12-21 07:26:04.373' AS DateTime), CAST(N'2018-12-21 07:26:04.373' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 5, N'Tiểu hài tử, đan điền vấn đề', CAST(N'2018-12-21 07:26:09.303' AS DateTime), CAST(N'2018-12-21 07:26:09.303' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 6, N'Tần Thục Phân', CAST(N'2018-12-21 07:26:14.690' AS DateTime), CAST(N'2018-12-21 07:26:14.690' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 7, N'Ti Mệnh​', CAST(N'2018-12-21 07:26:19.027' AS DateTime), CAST(N'2018-12-21 07:26:19.027' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 8, N'Tân hôn đại hỉ', CAST(N'2018-12-21 07:26:24.073' AS DateTime), CAST(N'2018-12-21 07:26:24.073' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 9, N'Mãng-Tước nuốt Rồng', CAST(N'2018-12-21 07:26:29.343' AS DateTime), CAST(N'2018-12-21 07:26:29.343' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 10, N'Mở đầu', CAST(N'2018-12-21 07:26:34.543' AS DateTime), CAST(N'2018-12-21 07:26:34.543' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 11, N'Tô Đát Kỷ Hại nước hại dân', CAST(N'2018-12-21 07:26:39.400' AS DateTime), CAST(N'2018-12-21 07:26:39.400' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 12, N'Trường An có mưa, Trường Môn có tuyết', CAST(N'2018-12-21 07:26:44.287' AS DateTime), CAST(N'2018-12-21 07:26:44.287' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 13, N'Dị năng giả xuyên việt', CAST(N'2018-12-21 07:26:49.393' AS DateTime), CAST(N'2018-12-21 07:26:49.393' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 14, N'Thiếu niên trường minh.', CAST(N'2018-12-21 07:26:54.580' AS DateTime), CAST(N'2018-12-21 07:26:54.580' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 15, N'Hoàng Sơn Chân Quân và Nhóm Cửu Châu Số 1', CAST(N'2018-12-21 07:27:00.590' AS DateTime), CAST(N'2018-12-21 07:27:00.590' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 16, N'Chuyển Sinh', CAST(N'2018-12-21 07:27:05.637' AS DateTime), CAST(N'2018-12-21 07:27:05.637' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 17, N'Yêu cô bạn thân', CAST(N'2018-12-21 07:27:11.240' AS DateTime), CAST(N'2018-12-21 07:27:11.240' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 18, N'Nữ hồ ly', CAST(N'2018-12-21 07:27:16.840' AS DateTime), CAST(N'2018-12-21 07:27:16.840' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 19, N'Nguyên đan thượng phẩm (thượng)', CAST(N'2018-12-21 07:27:22.250' AS DateTime), CAST(N'2018-12-21 07:27:22.250' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 20, N'Thiếu niên ở trấn nhỏ', CAST(N'2018-12-21 07:27:27.260' AS DateTime), CAST(N'2018-12-21 07:27:27.260' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 21, N'Lý Phù Trần', CAST(N'2018-12-21 07:27:32.470' AS DateTime), CAST(N'2018-12-21 07:27:32.470' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 22, N'Xảo trá', CAST(N'2018-12-21 07:27:37.430' AS DateTime), CAST(N'2018-12-21 07:27:37.430' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 23, N'Xảo trá', CAST(N'2018-12-21 07:27:42.773' AS DateTime), CAST(N'2018-12-21 07:27:42.773' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 24, N'Trọng sinh', CAST(N'2018-12-21 07:27:47.870' AS DateTime), CAST(N'2018-12-21 07:27:47.870' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 25, N'Hoàng Thiên', CAST(N'2018-12-21 07:27:53.163' AS DateTime), CAST(N'2018-12-21 07:27:53.163' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (6, 26, N'Thiên Đại Thế Giới Ta Đến Đây', CAST(N'2018-12-21 07:27:58.443' AS DateTime), CAST(N'2018-12-21 07:27:58.443' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 1, N'Người phàm không có linh căn', CAST(N'2018-12-21 07:25:46.923' AS DateTime), CAST(N'2018-12-21 07:25:46.923' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 2, N'Tự nhiên nhảy ra một vị hôn thê', CAST(N'2018-12-21 07:25:53.147' AS DateTime), CAST(N'2018-12-21 07:25:53.147' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 3, N'Phản khách vi chủ', CAST(N'2018-12-21 07:25:58.503' AS DateTime), CAST(N'2018-12-21 07:25:58.503' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 4, N'Hãy để Thánh Quang chiếu rọi cái Ngôi Làng này!', CAST(N'2018-12-21 07:26:04.717' AS DateTime), CAST(N'2018-12-21 07:26:04.717' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 5, N'Hóa Mộc Quyết', CAST(N'2018-12-21 07:26:09.400' AS DateTime), CAST(N'2018-12-21 07:26:09.400' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 6, N'Ly biệt', CAST(N'2018-12-21 07:26:14.860' AS DateTime), CAST(N'2018-12-21 07:26:14.860' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 7, N'Kha Thiên Lạc​', CAST(N'2018-12-21 07:26:19.183' AS DateTime), CAST(N'2018-12-21 07:26:19.183' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 8, N'Khúc Phượng cầu Hoàng dang dở', CAST(N'2018-12-21 07:26:24.237' AS DateTime), CAST(N'2018-12-21 07:26:24.237' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 9, N'Nguyên văn ', CAST(N'2018-12-21 07:26:29.487' AS DateTime), CAST(N'2018-12-21 07:26:29.487' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 10, N'Thiếu niên Tiêu Tà', CAST(N'2018-12-21 07:26:34.670' AS DateTime), CAST(N'2018-12-21 07:26:34.670' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 11, N'Lên liền hai cấp', CAST(N'2018-12-21 07:26:39.513' AS DateTime), CAST(N'2018-12-21 07:26:39.513' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 12, N'Ta từ phương xa tới, đến tiễn đưa cố nhân', CAST(N'2018-12-21 07:26:44.443' AS DateTime), CAST(N'2018-12-21 07:26:44.443' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 13, N'Huyền linh đại lục', CAST(N'2018-12-21 07:26:49.493' AS DateTime), CAST(N'2018-12-21 07:26:49.493' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 14, N'Khiêu chiến.', CAST(N'2018-12-21 07:26:54.693' AS DateTime), CAST(N'2018-12-21 07:26:54.693' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 15, N'Tạm đợi Bản Tôn tính một quẻ', CAST(N'2018-12-21 07:27:00.833' AS DateTime), CAST(N'2018-12-21 07:27:00.833' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 16, N'Bái Sư Tầm Đạo', CAST(N'2018-12-21 07:27:05.750' AS DateTime), CAST(N'2018-12-21 07:27:05.750' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 17, N'Anh yêu em', CAST(N'2018-12-21 07:27:11.387' AS DateTime), CAST(N'2018-12-21 07:27:11.387' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 18, N'Thạch Đầu ca ca', CAST(N'2018-12-21 07:27:16.960' AS DateTime), CAST(N'2018-12-21 07:27:16.960' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 19, N'Nguyên đan thượng phẩm (hạ)', CAST(N'2018-12-21 07:27:22.370' AS DateTime), CAST(N'2018-12-21 07:27:22.370' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 20, N'Dược Sơn', CAST(N'2018-12-21 07:27:27.397' AS DateTime), CAST(N'2018-12-21 07:27:27.397' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 21, N'Kim Sắc Tiểu Phù', CAST(N'2018-12-21 07:27:32.603' AS DateTime), CAST(N'2018-12-21 07:27:32.603' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 22, N'Quy y', CAST(N'2018-12-21 07:27:37.557' AS DateTime), CAST(N'2018-12-21 07:27:37.557' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 23, N'Ngẩng đầu nhìn trăng sáng', CAST(N'2018-12-21 07:27:42.890' AS DateTime), CAST(N'2018-12-21 07:27:42.890' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 24, N'Tạp dịch đệ tử Vân Hoàng', CAST(N'2018-12-21 07:27:47.977' AS DateTime), CAST(N'2018-12-21 07:27:47.977' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 25, N'Tiên nhân', CAST(N'2018-12-21 07:27:53.313' AS DateTime), CAST(N'2018-12-21 07:27:53.313' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (7, 26, N'Lăng Thiên', CAST(N'2018-12-21 07:27:58.563' AS DateTime), CAST(N'2018-12-21 07:27:58.563' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 1, N'Xuyên qua trang bị ‘Bàn Tay Vàng’, khai mở!', CAST(N'2018-12-21 07:25:47.157' AS DateTime), CAST(N'2018-12-21 07:25:47.157' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 2, N'Bản nhạc buồn', CAST(N'2018-12-21 07:25:53.300' AS DateTime), CAST(N'2018-12-21 07:25:53.300' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 3, N'Hệ thống luân hồi', CAST(N'2018-12-21 07:25:58.623' AS DateTime), CAST(N'2018-12-21 07:25:58.623' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 4, N'Hãy để Thánh Quang chiếu rọi cái Ngôi Làng này! (2)', CAST(N'2018-12-21 07:26:04.860' AS DateTime), CAST(N'2018-12-21 07:26:04.860' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 5, N'Bước đầu khổ tu', CAST(N'2018-12-21 07:26:09.513' AS DateTime), CAST(N'2018-12-21 07:26:09.513' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 6, N'Bái Sư', CAST(N'2018-12-21 07:26:14.993' AS DateTime), CAST(N'2018-12-21 07:26:14.993' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 7, N'A Công​', CAST(N'2018-12-21 07:26:19.300' AS DateTime), CAST(N'2018-12-21 07:26:19.300' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 8, N'Sinh vào thời loạn', CAST(N'2018-12-21 07:26:24.363' AS DateTime), CAST(N'2018-12-21 07:26:24.363' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 9, N'Tô Ấu Vi ', CAST(N'2018-12-21 07:26:29.617' AS DateTime), CAST(N'2018-12-21 07:26:29.617' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 10, N'Dung Hợp Công Pháp', CAST(N'2018-12-21 07:26:34.793' AS DateTime), CAST(N'2018-12-21 07:26:34.793' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 11, N'Hoàng phẩm thượng giai', CAST(N'2018-12-21 07:26:39.727' AS DateTime), CAST(N'2018-12-21 07:26:39.727' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 12, N'Chưa quyết chiến, tay hắn đã sớm cầm binh khí', CAST(N'2018-12-21 07:26:44.567' AS DateTime), CAST(N'2018-12-21 07:26:44.567' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 13, N'Tập kích', CAST(N'2018-12-21 07:26:49.630' AS DateTime), CAST(N'2018-12-21 07:26:49.630' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 14, N'Trận chiến đầu tiên.', CAST(N'2018-12-21 07:26:54.817' AS DateTime), CAST(N'2018-12-21 07:26:54.817' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 15, N'Một tờ đan phương', CAST(N'2018-12-21 07:27:00.970' AS DateTime), CAST(N'2018-12-21 07:27:00.970' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 16, N'Khảo hạch ngoại môn', CAST(N'2018-12-21 07:27:05.947' AS DateTime), CAST(N'2018-12-21 07:27:05.947' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 17, N'Thế giới khác', CAST(N'2018-12-21 07:27:11.613' AS DateTime), CAST(N'2018-12-21 07:27:11.613' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 18, N'Đi xa', CAST(N'2018-12-21 07:27:17.087' AS DateTime), CAST(N'2018-12-21 07:27:17.087' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 19, N'Cực Đạo cung (thượng)', CAST(N'2018-12-21 07:27:22.573' AS DateTime), CAST(N'2018-12-21 07:27:22.573' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 20, N'Thăm dò', CAST(N'2018-12-21 07:27:27.510' AS DateTime), CAST(N'2018-12-21 07:27:27.510' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 21, N'Võ Học Các', CAST(N'2018-12-21 07:27:32.720' AS DateTime), CAST(N'2018-12-21 07:27:32.720' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 22, N'Ngẩng đầu nhìn trăng sáng', CAST(N'2018-12-21 07:27:37.670' AS DateTime), CAST(N'2018-12-21 07:27:37.670' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 23, N'Trăm ngày Trúc Cơ', CAST(N'2018-12-21 07:27:43.037' AS DateTime), CAST(N'2018-12-21 07:27:43.037' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 24, N'Tôi thể dịch', CAST(N'2018-12-21 07:27:48.083' AS DateTime), CAST(N'2018-12-21 07:27:48.083' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 25, N'Ly biệt', CAST(N'2018-12-21 07:27:53.437' AS DateTime), CAST(N'2018-12-21 07:27:53.437' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (8, 26, N'Có Tiền Thật Tuyệt', CAST(N'2018-12-21 07:27:58.680' AS DateTime), CAST(N'2018-12-21 07:27:58.680' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 1, N'Ta tên Trường Thiên', CAST(N'2018-12-21 07:25:47.303' AS DateTime), CAST(N'2018-12-21 07:25:47.303' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 2, N'Khảo Thí', CAST(N'2018-12-21 07:25:53.467' AS DateTime), CAST(N'2018-12-21 07:25:53.467' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 3, N'Hệ thống luân hồi 2', CAST(N'2018-12-21 07:25:58.740' AS DateTime), CAST(N'2018-12-21 07:25:58.740' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 4, N'Hãy để Thánh Quang chiếu rọi cái Ngôi Làng này! (3)', CAST(N'2018-12-21 07:26:05.023' AS DateTime), CAST(N'2018-12-21 07:26:05.023' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 5, N'Tu luyện Khô Mộc Tiểu Pháp', CAST(N'2018-12-21 07:26:09.683' AS DateTime), CAST(N'2018-12-21 07:26:09.683' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 6, N'Thôi Linh Nhi', CAST(N'2018-12-21 07:26:15.110' AS DateTime), CAST(N'2018-12-21 07:26:15.110' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 7, N'Đã lâu không gặp​', CAST(N'2018-12-21 07:26:19.423' AS DateTime), CAST(N'2018-12-21 07:26:19.423' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 8, N'Toà thành chết', CAST(N'2018-12-21 07:26:24.490' AS DateTime), CAST(N'2018-12-21 07:26:24.490' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 9, N'Lực lượng nguyên văn', CAST(N'2018-12-21 07:26:29.787' AS DateTime), CAST(N'2018-12-21 07:26:29.787' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 10, N'Ai từ hôn ai?', CAST(N'2018-12-21 07:26:34.903' AS DateTime), CAST(N'2018-12-21 07:26:34.903' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 11, N'Loạn tướng Hạ Hầu Ân', CAST(N'2018-12-21 07:26:39.877' AS DateTime), CAST(N'2018-12-21 07:26:39.877' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 12, N'Mạc ỷ lâu thai thính thu vũ', CAST(N'2018-12-21 07:26:44.777' AS DateTime), CAST(N'2018-12-21 07:26:44.777' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 13, N'Lựa chọn chức nghiệp', CAST(N'2018-12-21 07:26:49.760' AS DateTime), CAST(N'2018-12-21 07:26:49.760' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 14, N'Sơ ngộ thần nam.', CAST(N'2018-12-21 07:26:54.937' AS DateTime), CAST(N'2018-12-21 07:26:54.937' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 15, N'Thành phố H lôi kiếp hậu thiên tam phẩm', CAST(N'2018-12-21 07:27:01.097' AS DateTime), CAST(N'2018-12-21 07:27:01.097' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 16, N'Khảo hạch ngoại môn (2)', CAST(N'2018-12-21 07:27:06.193' AS DateTime), CAST(N'2018-12-21 07:27:06.193' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 17, N'Tình huynh muội', CAST(N'2018-12-21 07:27:11.753' AS DateTime), CAST(N'2018-12-21 07:27:11.753' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 18, N'Gắn bó', CAST(N'2018-12-21 07:27:17.263' AS DateTime), CAST(N'2018-12-21 07:27:17.263' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 19, N'Cực Đạo cung (hạ)', CAST(N'2018-12-21 07:27:22.740' AS DateTime), CAST(N'2018-12-21 07:27:22.740' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 20, N'Vô pháp vô niệm', CAST(N'2018-12-21 07:27:27.627' AS DateTime), CAST(N'2018-12-21 07:27:27.627' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 21, N'Thiên phú đã khôi phục', CAST(N'2018-12-21 07:27:32.827' AS DateTime), CAST(N'2018-12-21 07:27:32.827' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 22, N'Trăm ngày Trúc Cơ', CAST(N'2018-12-21 07:27:37.810' AS DateTime), CAST(N'2018-12-21 07:27:37.810' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 23, N'Tiểu ngọc Phật', CAST(N'2018-12-21 07:27:43.163' AS DateTime), CAST(N'2018-12-21 07:27:43.163' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 24, N'Nhiệm vụ tông môn', CAST(N'2018-12-21 07:27:48.193' AS DateTime), CAST(N'2018-12-21 07:27:48.193' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 25, N'Quyết định của Hoàng Thiên', CAST(N'2018-12-21 07:27:53.593' AS DateTime), CAST(N'2018-12-21 07:27:53.593' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (9, 26, N'Quyền Lợi Của Vú Em', CAST(N'2018-12-21 07:27:58.810' AS DateTime), CAST(N'2018-12-21 07:27:58.810' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 1, N'Tài sản quý giá nhất của ngục giam', CAST(N'2018-12-21 07:25:47.453' AS DateTime), CAST(N'2018-12-21 07:25:47.453' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 2, N'Nhân Sinh Như Mộng', CAST(N'2018-12-21 07:25:53.627' AS DateTime), CAST(N'2018-12-21 07:25:53.627' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 3, N'Tứ tượng bí pháp', CAST(N'2018-12-21 07:25:58.870' AS DateTime), CAST(N'2018-12-21 07:25:58.870' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 4, N'Hãy để Thánh Quang chiếu rọi cái Ngôi Làng này! (4)', CAST(N'2018-12-21 07:26:05.123' AS DateTime), CAST(N'2018-12-21 07:26:05.123' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 5, N'Nhiệm vụ đầu tiên, kẻ theo dõi', CAST(N'2018-12-21 07:26:09.787' AS DateTime), CAST(N'2018-12-21 07:26:09.787' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 6, N'Tiếu Yêu Nhiên', CAST(N'2018-12-21 07:26:15.307' AS DateTime), CAST(N'2018-12-21 07:26:15.307' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 7, N'Dưỡng Linh quả ​', CAST(N'2018-12-21 07:26:19.550' AS DateTime), CAST(N'2018-12-21 07:26:19.550' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 8, N'Xa xứ', CAST(N'2018-12-21 07:26:24.610' AS DateTime), CAST(N'2018-12-21 07:26:24.610' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 9, N'Tề Nhạc, Liễu Khê ', CAST(N'2018-12-21 07:26:29.913' AS DateTime), CAST(N'2018-12-21 07:26:29.913' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 10, N'Trường Sinh Quyết', CAST(N'2018-12-21 07:26:35.037' AS DateTime), CAST(N'2018-12-21 07:26:35.037' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 11, N'Triệu hoán Hạo Thiên Khuyển ', CAST(N'2018-12-21 07:26:40.010' AS DateTime), CAST(N'2018-12-21 07:26:40.010' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 12, N'Mộc gọi Ngô Đồng, điểu gọi Phượng Hoàng', CAST(N'2018-12-21 07:26:44.960' AS DateTime), CAST(N'2018-12-21 07:26:44.960' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 13, N'Nghe lén', CAST(N'2018-12-21 07:26:49.923' AS DateTime), CAST(N'2018-12-21 07:26:49.923' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 14, N'Hội đấu giá.', CAST(N'2018-12-21 07:26:55.060' AS DateTime), CAST(N'2018-12-21 07:26:55.060' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 15, N'Phải tin vào khoa học!', CAST(N'2018-12-21 07:27:01.267' AS DateTime), CAST(N'2018-12-21 07:27:01.267' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 16, N'Thanh lý môn hộ', CAST(N'2018-12-21 07:27:06.410' AS DateTime), CAST(N'2018-12-21 07:27:06.410' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 17, N'Bi kịch', CAST(N'2018-12-21 07:27:11.867' AS DateTime), CAST(N'2018-12-21 07:27:11.867' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 18, N'Mã thú', CAST(N'2018-12-21 07:27:17.490' AS DateTime), CAST(N'2018-12-21 07:27:17.490' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 19, N'Cổ Tuấn', CAST(N'2018-12-21 07:27:22.897' AS DateTime), CAST(N'2018-12-21 07:27:22.897' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 20, N'Trấn Hồn Châu', CAST(N'2018-12-21 07:27:27.743' AS DateTime), CAST(N'2018-12-21 07:27:27.743' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 21, N'Rèn luyện thực chiến', CAST(N'2018-12-21 07:27:32.960' AS DateTime), CAST(N'2018-12-21 07:27:32.960' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 22, N'Tiểu ngọc Phật', CAST(N'2018-12-21 07:27:37.943' AS DateTime), CAST(N'2018-12-21 07:27:37.943' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 23, N'La Hán quyền', CAST(N'2018-12-21 07:27:43.303' AS DateTime), CAST(N'2018-12-21 07:27:43.303' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 24, N'Bạch sắc tinh thạch', CAST(N'2018-12-21 07:27:48.317' AS DateTime), CAST(N'2018-12-21 07:27:48.317' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 25, N'Tại Thiên Hỏa Tông gặp Trác Mộc', CAST(N'2018-12-21 07:27:53.790' AS DateTime), CAST(N'2018-12-21 07:27:53.790' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (10, 26, N'Kỳ Tích', CAST(N'2018-12-21 07:27:58.910' AS DateTime), CAST(N'2018-12-21 07:27:58.910' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 1, N'Rốt cuộc có thể tu tiên hay không ?', CAST(N'2018-12-21 07:25:47.587' AS DateTime), CAST(N'2018-12-21 07:25:47.587' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 2, N'Cuồng Ngôn Bị Trời Đánh', CAST(N'2018-12-21 07:25:53.770' AS DateTime), CAST(N'2018-12-21 07:25:53.770' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 3, N'Bá Long Mật Kinh', CAST(N'2018-12-21 07:25:59.037' AS DateTime), CAST(N'2018-12-21 07:25:59.037' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 4, N'Quang Minh Giáo Đình thành lập', CAST(N'2018-12-21 07:26:05.247' AS DateTime), CAST(N'2018-12-21 07:26:05.247' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 5, N'Thần Khống Vạn Trùng', CAST(N'2018-12-21 07:26:09.897' AS DateTime), CAST(N'2018-12-21 07:26:09.897' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 6, N'Bờ suối thâu hương', CAST(N'2018-12-21 07:26:15.417' AS DateTime), CAST(N'2018-12-21 07:26:15.417' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 7, N'Đến Phong Tuyết bộ lạc ​', CAST(N'2018-12-21 07:26:19.663' AS DateTime), CAST(N'2018-12-21 07:26:19.663' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 8, N'Thượng thanh', CAST(N'2018-12-21 07:26:24.733' AS DateTime), CAST(N'2018-12-21 07:26:24.733' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 9, N'Tổ địa từ đường ', CAST(N'2018-12-21 07:26:30.040' AS DateTime), CAST(N'2018-12-21 07:26:30.040' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 10, N'Trộm Bảo Của Tử Tinh Dực Sư', CAST(N'2018-12-21 07:26:35.187' AS DateTime), CAST(N'2018-12-21 07:26:35.187' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 11, N'Desert Eagle thể hiển uy lực', CAST(N'2018-12-21 07:26:40.137' AS DateTime), CAST(N'2018-12-21 07:26:40.137' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 12, N'Ngô Đồng cháy, Phượng Hoàng khóc', CAST(N'2018-12-21 07:26:45.080' AS DateTime), CAST(N'2018-12-21 07:26:45.080' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 13, N'Ám sát', CAST(N'2018-12-21 07:26:50.047' AS DateTime), CAST(N'2018-12-21 07:26:50.047' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 14, N'Tranh đoạt, dị nhân quán. ', CAST(N'2018-12-21 07:26:55.320' AS DateTime), CAST(N'2018-12-21 07:26:55.320' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 15, N'Đồng Quái Tiên Sư', CAST(N'2018-12-21 07:27:01.383' AS DateTime), CAST(N'2018-12-21 07:27:01.383' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 16, N'Liên Minh', CAST(N'2018-12-21 07:27:06.540' AS DateTime), CAST(N'2018-12-21 07:27:06.540' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 17, N'Khai giới', CAST(N'2018-12-21 07:27:11.990' AS DateTime), CAST(N'2018-12-21 07:27:11.990' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 18, N'Thiếu niên bạch bào', CAST(N'2018-12-21 07:27:17.623' AS DateTime), CAST(N'2018-12-21 07:27:17.623' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 19, N'Nhập Đạo Nguyên Đan', CAST(N'2018-12-21 07:27:23.040' AS DateTime), CAST(N'2018-12-21 07:27:23.040' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 20, N'Dẫn sấm vào cơ thể.', CAST(N'2018-12-21 07:27:27.880' AS DateTime), CAST(N'2018-12-21 07:27:27.880' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 21, N'Trang sức của Võ giả', CAST(N'2018-12-21 07:27:33.143' AS DateTime), CAST(N'2018-12-21 07:27:33.143' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 22, N'La Hán quyền', CAST(N'2018-12-21 07:27:38.077' AS DateTime), CAST(N'2018-12-21 07:27:38.077' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 23, N'Thiên chi kiêu tử', CAST(N'2018-12-21 07:27:43.433' AS DateTime), CAST(N'2018-12-21 07:27:43.433' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 24, N'Trở về tông môn', CAST(N'2018-12-21 07:27:48.520' AS DateTime), CAST(N'2018-12-21 07:27:48.520' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 25, N'Trận chiến đầu tiên', CAST(N'2018-12-21 07:27:53.947' AS DateTime), CAST(N'2018-12-21 07:27:53.947' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (11, 26, N'Dạo Phố', CAST(N'2018-12-21 07:27:59.030' AS DateTime), CAST(N'2018-12-21 07:27:59.030' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 1, N'Chỉ làm con kiến hôi cũng tốt', CAST(N'2018-12-21 07:25:47.743' AS DateTime), CAST(N'2018-12-21 07:25:47.743' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 2, N'Kinh Mạch Đứt Hết', CAST(N'2018-12-21 07:25:53.913' AS DateTime), CAST(N'2018-12-21 07:25:53.913' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 3, N'Chinh phục tiêu ngọc', CAST(N'2018-12-21 07:25:59.263' AS DateTime), CAST(N'2018-12-21 07:25:59.263' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 4, N'Lâm Phong và Phong Lực chi thể', CAST(N'2018-12-21 07:26:05.377' AS DateTime), CAST(N'2018-12-21 07:26:05.377' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 5, N'Lưu manh lão đầu', CAST(N'2018-12-21 07:26:10.007' AS DateTime), CAST(N'2018-12-21 07:26:10.007' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 6, N'&quot;Tu luyện&quot; buổi tối', CAST(N'2018-12-21 07:26:15.533' AS DateTime), CAST(N'2018-12-21 07:26:15.533' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 7, N'Man công Phong Tuyết bộ lạc​', CAST(N'2018-12-21 07:26:19.780' AS DateTime), CAST(N'2018-12-21 07:26:19.780' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 8, N'Người Hồ ăn thịt người', CAST(N'2018-12-21 07:26:24.857' AS DateTime), CAST(N'2018-12-21 07:26:24.857' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 9, N'Thần bí chi địa ', CAST(N'2018-12-21 07:26:30.173' AS DateTime), CAST(N'2018-12-21 07:26:30.173' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 10, N'Ma Kiếm Và Linh Kiếm', CAST(N'2018-12-21 07:26:35.303' AS DateTime), CAST(N'2018-12-21 07:26:35.303' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 11, N'Kỹ năng truyền thừa', CAST(N'2018-12-21 07:26:40.243' AS DateTime), CAST(N'2018-12-21 07:26:40.243' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 12, N'Phượng Hoàng từng đến nơi đây', CAST(N'2018-12-21 07:26:45.260' AS DateTime), CAST(N'2018-12-21 07:26:45.260' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 13, N'Thiên Ma Điện (1)', CAST(N'2018-12-21 07:26:50.180' AS DateTime), CAST(N'2018-12-21 07:26:50.180' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 14, N'Đồ Long (1). ', CAST(N'2018-12-21 07:26:55.450' AS DateTime), CAST(N'2018-12-21 07:26:55.450' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 15, N'Đám bất lương bị hội đồng', CAST(N'2018-12-21 07:27:01.500' AS DateTime), CAST(N'2018-12-21 07:27:01.500' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 16, N'Kiếm chuyện khắp nơi', CAST(N'2018-12-21 07:27:06.670' AS DateTime), CAST(N'2018-12-21 07:27:06.670' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 17, N'Chương 7', CAST(N'2018-12-21 07:27:12.193' AS DateTime), CAST(N'2018-12-21 07:27:12.193' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 18, N'Dư phủ', CAST(N'2018-12-21 07:27:17.767' AS DateTime), CAST(N'2018-12-21 07:27:17.767' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 19, N'Đệ nhất mỹ nhân Chỉ Điệp', CAST(N'2018-12-21 07:27:23.143' AS DateTime), CAST(N'2018-12-21 07:27:23.143' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 20, N'Đường núi vắng vẻ', CAST(N'2018-12-21 07:27:28.007' AS DateTime), CAST(N'2018-12-21 07:27:28.007' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 21, N'Dương Kỳ', CAST(N'2018-12-21 07:27:33.343' AS DateTime), CAST(N'2018-12-21 07:27:33.343' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 22, N'Thiên chi kiêu tử', CAST(N'2018-12-21 07:27:38.230' AS DateTime), CAST(N'2018-12-21 07:27:38.230' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 23, N'Kỳ quỷ tụ họp', CAST(N'2018-12-21 07:27:43.583' AS DateTime), CAST(N'2018-12-21 07:27:43.583' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 24, N'Thất phu vô tội, hoài Bích kỳ tội', CAST(N'2018-12-21 07:27:48.640' AS DateTime), CAST(N'2018-12-21 07:27:48.640' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 25, N'Đại hội giao lưu', CAST(N'2018-12-21 07:27:54.090' AS DateTime), CAST(N'2018-12-21 07:27:54.090' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (12, 26, N'Cục Đá Đen', CAST(N'2018-12-21 07:27:59.253' AS DateTime), CAST(N'2018-12-21 07:27:59.253' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 1, N'Khinh người quá đáng', CAST(N'2018-12-21 07:25:47.897' AS DateTime), CAST(N'2018-12-21 07:25:47.897' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 2, N'Niết Bàn', CAST(N'2018-12-21 07:25:54.043' AS DateTime), CAST(N'2018-12-21 07:25:54.043' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 3, N'Thẻ luân hồi và trứng thần bí', CAST(N'2018-12-21 07:25:59.417' AS DateTime), CAST(N'2018-12-21 07:25:59.417' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 4, N'Oan hồn đột kích', CAST(N'2018-12-21 07:26:05.520' AS DateTime), CAST(N'2018-12-21 07:26:05.520' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 5, N'Thu hoạch lớn, gian thương', CAST(N'2018-12-21 07:26:10.150' AS DateTime), CAST(N'2018-12-21 07:26:10.150' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 6, N'Mục tiêu', CAST(N'2018-12-21 07:26:15.650' AS DateTime), CAST(N'2018-12-21 07:26:15.650' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 7, N'Tiến vào nội thành​', CAST(N'2018-12-21 07:26:19.923' AS DateTime), CAST(N'2018-12-21 07:26:19.923' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 8, N'Công chúa nước Triệu', CAST(N'2018-12-21 07:26:24.987' AS DateTime), CAST(N'2018-12-21 07:26:24.987' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 9, N'Tìm bát mạch', CAST(N'2018-12-21 07:26:30.323' AS DateTime), CAST(N'2018-12-21 07:26:30.323' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 10, N'Trận Đấu Giữa Hai Đấu Hoàng', CAST(N'2018-12-21 07:26:35.430' AS DateTime), CAST(N'2018-12-21 07:26:35.430' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 11, N'Thú triều khủng khiếp ', CAST(N'2018-12-21 07:26:40.357' AS DateTime), CAST(N'2018-12-21 07:26:40.357' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 12, N'Ngọc Hành Diêu Quang', CAST(N'2018-12-21 07:26:45.457' AS DateTime), CAST(N'2018-12-21 07:26:45.457' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 13, N'Thiên Ma Điện (2)', CAST(N'2018-12-21 07:26:50.310' AS DateTime), CAST(N'2018-12-21 07:26:50.310' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 14, N'Đồ Long (2) ', CAST(N'2018-12-21 07:26:55.620' AS DateTime), CAST(N'2018-12-21 07:26:55.620' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 15, N'Vũ Nhu Tử và khu La Tín', CAST(N'2018-12-21 07:27:01.633' AS DateTime), CAST(N'2018-12-21 07:27:01.633' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 16, N'Kiếm chuyện khắp nơi (2)', CAST(N'2018-12-21 07:27:06.867' AS DateTime), CAST(N'2018-12-21 07:27:06.867' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 17, N'Chương 8', CAST(N'2018-12-21 07:27:12.347' AS DateTime), CAST(N'2018-12-21 07:27:12.347' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 18, N'Bạch Thạch chân nhân', CAST(N'2018-12-21 07:27:17.960' AS DateTime), CAST(N'2018-12-21 07:27:17.960' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 19, N'Săn giết', CAST(N'2018-12-21 07:27:23.257' AS DateTime), CAST(N'2018-12-21 07:27:23.257' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 20, N'Giết gà dùng dao mổ trâu', CAST(N'2018-12-21 07:27:28.147' AS DateTime), CAST(N'2018-12-21 07:27:28.147' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 21, N'Oanh động', CAST(N'2018-12-21 07:27:33.473' AS DateTime), CAST(N'2018-12-21 07:27:33.473' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 22, N'Kỳ quỷ tụ họp', CAST(N'2018-12-21 07:27:38.377' AS DateTime), CAST(N'2018-12-21 07:27:38.377' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 23, N'Ẩn Hoàng Bảo', CAST(N'2018-12-21 07:27:43.807' AS DateTime), CAST(N'2018-12-21 07:27:43.807' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 24, N'Bế quan', CAST(N'2018-12-21 07:27:48.840' AS DateTime), CAST(N'2018-12-21 07:27:48.840' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 25, N'Bị đánh', CAST(N'2018-12-21 07:27:54.207' AS DateTime), CAST(N'2018-12-21 07:27:54.207' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (13, 26, N'Cửu Vĩ - A Ly', CAST(N'2018-12-21 07:27:59.387' AS DateTime), CAST(N'2018-12-21 07:27:59.387' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 1, N'Thù này không báo không phải quân tử', CAST(N'2018-12-21 07:25:48.030' AS DateTime), CAST(N'2018-12-21 07:25:48.030' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 2, N'Vô Sỉ Lão Sư', CAST(N'2018-12-21 07:25:54.173' AS DateTime), CAST(N'2018-12-21 07:25:54.173' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 3, N'Gia tộc đại điển', CAST(N'2018-12-21 07:25:59.550' AS DateTime), CAST(N'2018-12-21 07:25:59.550' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 4, N'Oan hồn bị hội đồng', CAST(N'2018-12-21 07:26:05.683' AS DateTime), CAST(N'2018-12-21 07:26:05.683' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 5, N'Bản mệnh linh trùng', CAST(N'2018-12-21 07:26:10.323' AS DateTime), CAST(N'2018-12-21 07:26:10.323' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 6, N'Đột phá Nhập Linh cảnh hậu kì', CAST(N'2018-12-21 07:26:15.773' AS DateTime), CAST(N'2018-12-21 07:26:15.773' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 7, N'Mục đích tu hành của dị sĩ​', CAST(N'2018-12-21 07:26:20.070' AS DateTime), CAST(N'2018-12-21 07:26:20.070' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 8, N'Ngàn dặm tìm vợ', CAST(N'2018-12-21 07:26:25.127' AS DateTime), CAST(N'2018-12-21 07:26:25.127' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 9, N'Bát mạch hiện', CAST(N'2018-12-21 07:26:30.453' AS DateTime), CAST(N'2018-12-21 07:26:30.453' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 10, N'Gặp Lại Tiêu Viêm', CAST(N'2018-12-21 07:26:35.553' AS DateTime), CAST(N'2018-12-21 07:26:35.553' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 11, N'Yêu Vương', CAST(N'2018-12-21 07:26:40.477' AS DateTime), CAST(N'2018-12-21 07:26:40.477' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 12, N'Đường đi Trường An xa xôi (thượng)', CAST(N'2018-12-21 07:26:45.570' AS DateTime), CAST(N'2018-12-21 07:26:45.570' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 13, N'Trở về', CAST(N'2018-12-21 07:26:50.453' AS DateTime), CAST(N'2018-12-21 07:26:50.453' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 14, N'Trở về! ', CAST(N'2018-12-21 07:26:55.890' AS DateTime), CAST(N'2018-12-21 07:26:55.890' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 15, N'Một khu La Tín khác', CAST(N'2018-12-21 07:27:01.733' AS DateTime), CAST(N'2018-12-21 07:27:01.733' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 16, N'Muốn ăn của ta sao. Ta cho ngươi mất hết', CAST(N'2018-12-21 07:27:06.997' AS DateTime), CAST(N'2018-12-21 07:27:06.997' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 17, N'Đại chiến Tennis', CAST(N'2018-12-21 07:27:12.460' AS DateTime), CAST(N'2018-12-21 07:27:12.460' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 18, N'Pháp trận', CAST(N'2018-12-21 07:27:18.140' AS DateTime), CAST(N'2018-12-21 07:27:18.140' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 19, N'Thu hoạch lớn', CAST(N'2018-12-21 07:27:23.380' AS DateTime), CAST(N'2018-12-21 07:27:23.380' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 20, N'Hấp thu', CAST(N'2018-12-21 07:27:28.273' AS DateTime), CAST(N'2018-12-21 07:27:28.273' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 21, N'Bị tập kích', CAST(N'2018-12-21 07:27:33.577' AS DateTime), CAST(N'2018-12-21 07:27:33.577' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 22, N'Ẩn Hoàng Bảo', CAST(N'2018-12-21 07:27:38.623' AS DateTime), CAST(N'2018-12-21 07:27:38.623' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 23, N'Người thứ nhất', CAST(N'2018-12-21 07:27:43.937' AS DateTime), CAST(N'2018-12-21 07:27:43.937' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 24, N'Ngoại môn danh ngạch', CAST(N'2018-12-21 07:27:49.087' AS DateTime), CAST(N'2018-12-21 07:27:49.087' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 25, N'Săn yêu thú', CAST(N'2018-12-21 07:27:54.320' AS DateTime), CAST(N'2018-12-21 07:27:54.320' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (14, 26, N'Đi Học', CAST(N'2018-12-21 07:27:59.577' AS DateTime), CAST(N'2018-12-21 07:27:59.577' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 1, N'Ta thật sự là gỗ mục?', CAST(N'2018-12-21 07:25:48.173' AS DateTime), CAST(N'2018-12-21 07:25:48.173' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 2, N'Tụ Khí Thành Công', CAST(N'2018-12-21 07:25:54.310' AS DateTime), CAST(N'2018-12-21 07:25:54.310' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 3, N'Ngưng hồn châu - nháp', CAST(N'2018-12-21 07:25:59.730' AS DateTime), CAST(N'2018-12-21 07:25:59.730' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 4, N'Bàn giao công việc, mục tiêu kế tiếp', CAST(N'2018-12-21 07:26:05.823' AS DateTime), CAST(N'2018-12-21 07:26:05.823' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 5, N'Tìm kiếm linh trùng', CAST(N'2018-12-21 07:26:10.593' AS DateTime), CAST(N'2018-12-21 07:26:10.593' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 6, N'Giao Long vs Ứng Long', CAST(N'2018-12-21 07:26:15.907' AS DateTime), CAST(N'2018-12-21 07:26:15.907' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 7, N'Đạo Thần Điển ​', CAST(N'2018-12-21 07:26:20.197' AS DateTime), CAST(N'2018-12-21 07:26:20.197' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 8, N'Hành trình gian khổ', CAST(N'2018-12-21 07:26:25.253' AS DateTime), CAST(N'2018-12-21 07:26:25.253' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 9, N'Truyền thụ cơ duyên', CAST(N'2018-12-21 07:26:30.570' AS DateTime), CAST(N'2018-12-21 07:26:30.570' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 10, N'Nhân Hỏa', CAST(N'2018-12-21 07:26:35.677' AS DateTime), CAST(N'2018-12-21 07:26:35.677' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 11, N'Thiên cơ bất khả lộ sót', CAST(N'2018-12-21 07:26:40.583' AS DateTime), CAST(N'2018-12-21 07:26:40.583' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 12, N'Đường đến Trường An xa xôi (hạ)', CAST(N'2018-12-21 07:26:45.833' AS DateTime), CAST(N'2018-12-21 07:26:45.833' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 13, N'Tu luyện. Học tập (1)', CAST(N'2018-12-21 07:26:50.570' AS DateTime), CAST(N'2018-12-21 07:26:50.570' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 14, N'Nội thiên địa. ', CAST(N'2018-12-21 07:26:56.057' AS DateTime), CAST(N'2018-12-21 07:26:56.057' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 15, N'Khúc nhạc đệm xảy ra trong lúc dạo phố', CAST(N'2018-12-21 07:27:01.847' AS DateTime), CAST(N'2018-12-21 07:27:01.847' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 16, N'Tây Bắc Chiến Sự', CAST(N'2018-12-21 07:27:07.130' AS DateTime), CAST(N'2018-12-21 07:27:07.130' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 17, N'Vạn Xuân Thế Giới', CAST(N'2018-12-21 07:27:12.720' AS DateTime), CAST(N'2018-12-21 07:27:12.720' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 18, N'Nguy cơ', CAST(N'2018-12-21 07:27:18.253' AS DateTime), CAST(N'2018-12-21 07:27:18.253' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 19, N'Luyện chế phù', CAST(N'2018-12-21 07:27:23.527' AS DateTime), CAST(N'2018-12-21 07:27:23.527' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 20, N'Luyện Thể cấp sáu', CAST(N'2018-12-21 07:27:28.400' AS DateTime), CAST(N'2018-12-21 07:27:28.400' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 21, N'Chém giết', CAST(N'2018-12-21 07:27:33.700' AS DateTime), CAST(N'2018-12-21 07:27:33.700' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 22, N'Người thứ nhất', CAST(N'2018-12-21 07:27:38.770' AS DateTime), CAST(N'2018-12-21 07:27:38.770' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 23, N'Đao', CAST(N'2018-12-21 07:27:44.077' AS DateTime), CAST(N'2018-12-21 07:27:44.077' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 24, N'Ngộ nhận là trời sinh thần lực', CAST(N'2018-12-21 07:27:49.273' AS DateTime), CAST(N'2018-12-21 07:27:49.273' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 25, N'Thiên Hỏa Thành', CAST(N'2018-12-21 07:27:54.467' AS DateTime), CAST(N'2018-12-21 07:27:54.467' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (15, 26, N'Thiên Phú', CAST(N'2018-12-21 07:27:59.717' AS DateTime), CAST(N'2018-12-21 07:27:59.717' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 1, N'Mượn đao hại Nanh Thú', CAST(N'2018-12-21 07:25:48.343' AS DateTime), CAST(N'2018-12-21 07:25:48.343' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 2, N'Ẩn Linh Thuật', CAST(N'2018-12-21 07:25:54.490' AS DateTime), CAST(N'2018-12-21 07:25:54.490' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 3, N'Nhất tiễn song điêu', CAST(N'2018-12-21 07:25:59.847' AS DateTime), CAST(N'2018-12-21 07:25:59.847' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 4, N'Quang Minh Giáo Đình phát triển', CAST(N'2018-12-21 07:26:05.963' AS DateTime), CAST(N'2018-12-21 07:26:05.963' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 5, N'Đàn linh trùng khát máu', CAST(N'2018-12-21 07:26:10.767' AS DateTime), CAST(N'2018-12-21 07:26:10.767' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 6, N'Kho báu của long đế', CAST(N'2018-12-21 07:26:16.017' AS DateTime), CAST(N'2018-12-21 07:26:16.017' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 7, N'Một lời hứa, năm tháng sau này liệu sẽ trở thành hiện thực?​', CAST(N'2018-12-21 07:26:20.317' AS DateTime), CAST(N'2018-12-21 07:26:20.317' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 8, N'Trên đường gặp bọn cướp', CAST(N'2018-12-21 07:26:25.390' AS DateTime), CAST(N'2018-12-21 07:26:25.390' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 9, N'Tề Vương khẩu vị ', CAST(N'2018-12-21 07:26:30.703' AS DateTime), CAST(N'2018-12-21 07:26:30.703' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 10, N'Thẳng Tiến Đến Tháp Nhĩ Qua Sa Mạc', CAST(N'2018-12-21 07:26:35.930' AS DateTime), CAST(N'2018-12-21 07:26:35.930' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 11, N'Thanh Đàn Thành ', CAST(N'2018-12-21 07:26:40.697' AS DateTime), CAST(N'2018-12-21 07:26:40.697' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 12, N'Nhàn thoại nơi Bắc Địa', CAST(N'2018-12-21 07:26:45.987' AS DateTime), CAST(N'2018-12-21 07:26:45.987' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 13, N'Tu luyện. Học tập (2)', CAST(N'2018-12-21 07:26:50.687' AS DateTime), CAST(N'2018-12-21 07:26:50.687' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 14, N'Bái đán thành!! ', CAST(N'2018-12-21 07:26:56.183' AS DateTime), CAST(N'2018-12-21 07:26:56.183' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 15, N'Bỗng nhiên quay đầu, người vẫn ở đó…', CAST(N'2018-12-21 07:27:01.980' AS DateTime), CAST(N'2018-12-21 07:27:01.980' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 16, N'Đột Phá Mới', CAST(N'2018-12-21 07:27:07.247' AS DateTime), CAST(N'2018-12-21 07:27:07.247' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 17, N'Đến Âm Dương Tông', CAST(N'2018-12-21 07:27:12.950' AS DateTime), CAST(N'2018-12-21 07:27:12.950' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 18, N'Thức tỉnh', CAST(N'2018-12-21 07:27:18.477' AS DateTime), CAST(N'2018-12-21 07:27:18.477' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 19, N'Tiến vào', CAST(N'2018-12-21 07:27:23.683' AS DateTime), CAST(N'2018-12-21 07:27:23.683' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 20, N'Phủ Toái Băng', CAST(N'2018-12-21 07:27:28.563' AS DateTime), CAST(N'2018-12-21 07:27:28.563' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 21, N'Căn cốt', CAST(N'2018-12-21 07:27:33.863' AS DateTime), CAST(N'2018-12-21 07:27:33.863' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 22, N'Đao', CAST(N'2018-12-21 07:27:38.907' AS DateTime), CAST(N'2018-12-21 07:27:38.907' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 23, N'Quy y', CAST(N'2018-12-21 07:27:44.253' AS DateTime), CAST(N'2018-12-21 07:27:44.253' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 24, N'Đầu đất', CAST(N'2018-12-21 07:27:49.410' AS DateTime), CAST(N'2018-12-21 07:27:49.410' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 25, N'Khuất nhục!', CAST(N'2018-12-21 07:27:54.593' AS DateTime), CAST(N'2018-12-21 07:27:54.593' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (16, 26, N'Thiên Tài _ Yêu Nghiệt', CAST(N'2018-12-21 07:27:59.837' AS DateTime), CAST(N'2018-12-21 07:27:59.837' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 1, N'Công lao của mộc thiên liệu', CAST(N'2018-12-21 07:25:48.540' AS DateTime), CAST(N'2018-12-21 07:25:48.540' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 2, N'Hỗn Độn Thiên Mục - Tụ Khí Tầng 2', CAST(N'2018-12-21 07:25:54.653' AS DateTime), CAST(N'2018-12-21 07:25:54.653' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 3, N'Lần đầu giết người', CAST(N'2018-12-21 07:26:00.050' AS DateTime), CAST(N'2018-12-21 07:26:00.050' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 4, N'Hắc Y đột kích', CAST(N'2018-12-21 07:26:06.073' AS DateTime), CAST(N'2018-12-21 07:26:06.073' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 5, N'Tiểu nha đầu kiên cường', CAST(N'2018-12-21 07:26:10.987' AS DateTime), CAST(N'2018-12-21 07:26:10.987' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 6, N'Ác quả ác báo', CAST(N'2018-12-21 07:26:16.137' AS DateTime), CAST(N'2018-12-21 07:26:16.137' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 7, N'Đến Bách Thảo Đường​', CAST(N'2018-12-21 07:26:20.457' AS DateTime), CAST(N'2018-12-21 07:26:20.457' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 8, N'Hắc Tam', CAST(N'2018-12-21 07:26:25.517' AS DateTime), CAST(N'2018-12-21 07:26:25.517' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 9, N'Nguyên thực', CAST(N'2018-12-21 07:26:30.830' AS DateTime), CAST(N'2018-12-21 07:26:30.830' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 10, N'Tình Trạng Của Nữ Vương Medusa', CAST(N'2018-12-21 07:26:36.090' AS DateTime), CAST(N'2018-12-21 07:26:36.090' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 11, N'Trời sinh chính khí cương trực', CAST(N'2018-12-21 07:26:40.823' AS DateTime), CAST(N'2018-12-21 07:26:40.823' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 12, N'Họa này sát thân', CAST(N'2018-12-21 07:26:46.117' AS DateTime), CAST(N'2018-12-21 07:26:46.117' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 13, N'Công cuộc cày level', CAST(N'2018-12-21 07:26:50.863' AS DateTime), CAST(N'2018-12-21 07:26:50.863' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 14, N'Thánh long kỵ sĩ (1) ', CAST(N'2018-12-21 07:26:56.333' AS DateTime), CAST(N'2018-12-21 07:26:56.333' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 15, N'Tống tiền bối, điện thoại của ngài cũng hết pin rồi', CAST(N'2018-12-21 07:27:02.200' AS DateTime), CAST(N'2018-12-21 07:27:02.200' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 16, N'Đấu giá, Mộc Linh Thảo', CAST(N'2018-12-21 07:27:07.440' AS DateTime), CAST(N'2018-12-21 07:27:07.440' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 17, N'Chiến Yêu Xà', CAST(N'2018-12-21 07:27:13.160' AS DateTime), CAST(N'2018-12-21 07:27:13.160' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 18, N'Ta là Hàn Lập', CAST(N'2018-12-21 07:27:18.727' AS DateTime), CAST(N'2018-12-21 07:27:18.727' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 19, N'Yêu hổ', CAST(N'2018-12-21 07:27:23.850' AS DateTime), CAST(N'2018-12-21 07:27:23.850' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 20, N'Cơn tức giận của sấm chớp', CAST(N'2018-12-21 07:27:28.693' AS DateTime), CAST(N'2018-12-21 07:27:28.693' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 21, N'Thân Đồ gia tộc', CAST(N'2018-12-21 07:27:34.003' AS DateTime), CAST(N'2018-12-21 07:27:34.003' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 22, N'Trận chiến đầu tiên', CAST(N'2018-12-21 07:27:39.040' AS DateTime), CAST(N'2018-12-21 07:27:39.040' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 23, N'Trận chiến đầu tiên', CAST(N'2018-12-21 07:27:44.390' AS DateTime), CAST(N'2018-12-21 07:27:44.390' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 24, N'Lục Thi Y', CAST(N'2018-12-21 07:27:49.567' AS DateTime), CAST(N'2018-12-21 07:27:49.567' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 25, N'Hai năm sau', CAST(N'2018-12-21 07:27:54.730' AS DateTime), CAST(N'2018-12-21 07:27:54.730' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (17, 26, N'Tiểu Thiên Tài', CAST(N'2018-12-21 07:27:59.957' AS DateTime), CAST(N'2018-12-21 07:27:59.957' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 1, N'Đạo diễn số khổ nhất', CAST(N'2018-12-21 07:25:48.730' AS DateTime), CAST(N'2018-12-21 07:25:48.730' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 2, N'Mày Là Thằng Nào', CAST(N'2018-12-21 07:25:54.800' AS DateTime), CAST(N'2018-12-21 07:25:54.800' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 3, N'Kim đế cung điện', CAST(N'2018-12-21 07:26:00.307' AS DateTime), CAST(N'2018-12-21 07:26:00.307' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 4, N'Thẩm vấn phạm nhân', CAST(N'2018-12-21 07:26:06.187' AS DateTime), CAST(N'2018-12-21 07:26:06.187' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 5, N'Tu luyện thần thông', CAST(N'2018-12-21 07:26:11.117' AS DateTime), CAST(N'2018-12-21 07:26:11.117' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 6, N'Đại chiến lần đầu - Vương Long hóa thân', CAST(N'2018-12-21 07:26:16.370' AS DateTime), CAST(N'2018-12-21 07:26:16.370' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 7, N'Lĩnh ngộ​', CAST(N'2018-12-21 07:26:20.583' AS DateTime), CAST(N'2018-12-21 07:26:20.583' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 8, N'Hắc Lang Tinh', CAST(N'2018-12-21 07:26:25.687' AS DateTime), CAST(N'2018-12-21 07:26:25.687' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 9, N'Xung mạch ', CAST(N'2018-12-21 07:26:30.967' AS DateTime), CAST(N'2018-12-21 07:26:30.967' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 10, N'Nữ Vương Medusa', CAST(N'2018-12-21 07:26:36.207' AS DateTime), CAST(N'2018-12-21 07:26:36.207' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 11, N'Đại La Thánh Khí', CAST(N'2018-12-21 07:26:40.960' AS DateTime), CAST(N'2018-12-21 07:26:40.960' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 12, N'Bách quỷ dạ hành', CAST(N'2018-12-21 07:26:46.237' AS DateTime), CAST(N'2018-12-21 07:26:46.237' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 13, N'Diệp gia đại loạn', CAST(N'2018-12-21 07:26:50.983' AS DateTime), CAST(N'2018-12-21 07:26:50.983' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 14, N'Thánh long kỵ sĩ (2) ', CAST(N'2018-12-21 07:26:56.463' AS DateTime), CAST(N'2018-12-21 07:26:56.463' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 15, N'Nếu như...', CAST(N'2018-12-21 07:27:02.320' AS DateTime), CAST(N'2018-12-21 07:27:02.320' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 16, N'Diệt Ngụy', CAST(N'2018-12-21 07:27:07.610' AS DateTime), CAST(N'2018-12-21 07:27:07.610' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 17, N'Tam đại phân thân', CAST(N'2018-12-21 07:27:13.370' AS DateTime), CAST(N'2018-12-21 07:27:13.370' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 18, N'Ma Quang', CAST(N'2018-12-21 07:27:18.963' AS DateTime), CAST(N'2018-12-21 07:27:18.963' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 19, N'Cố Nguyên tầng hai', CAST(N'2018-12-21 07:27:24.050' AS DateTime), CAST(N'2018-12-21 07:27:24.050' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 20, N'Của rơi vào đầu', CAST(N'2018-12-21 07:27:28.843' AS DateTime), CAST(N'2018-12-21 07:27:28.843' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 21, N'Thối Thân Trì', CAST(N'2018-12-21 07:27:34.117' AS DateTime), CAST(N'2018-12-21 07:27:34.117' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 22, N'Viện thủ', CAST(N'2018-12-21 07:27:39.160' AS DateTime), CAST(N'2018-12-21 07:27:39.160' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 23, N'Viện thủ', CAST(N'2018-12-21 07:27:44.510' AS DateTime), CAST(N'2018-12-21 07:27:44.510' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 24, N'Chân chính thiên tài', CAST(N'2018-12-21 07:27:49.693' AS DateTime), CAST(N'2018-12-21 07:27:49.693' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 25, N'Bị bắt', CAST(N'2018-12-21 07:27:54.900' AS DateTime), CAST(N'2018-12-21 07:27:54.900' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (18, 26, N'Hóa Hình...? _ Ai Đó?', CAST(N'2018-12-21 07:28:00.203' AS DateTime), CAST(N'2018-12-21 07:28:00.203' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 1, N'Thức ăn chay cũng có thể rất kinh diễm', CAST(N'2018-12-21 07:25:48.870' AS DateTime), CAST(N'2018-12-21 07:25:48.870' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 2, N'Cút...', CAST(N'2018-12-21 07:25:54.947' AS DateTime), CAST(N'2018-12-21 07:25:54.947' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 3, N'Đấu phá thiên long', CAST(N'2018-12-21 07:26:00.447' AS DateTime), CAST(N'2018-12-21 07:26:00.447' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 4, N'Yên bình trước cơn bão', CAST(N'2018-12-21 07:26:06.330' AS DateTime), CAST(N'2018-12-21 07:26:06.330' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 5, N'Yêu thú cấp hai khủng bố', CAST(N'2018-12-21 07:26:11.247' AS DateTime), CAST(N'2018-12-21 07:26:11.247' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 6, N'Người Việt Nam', CAST(N'2018-12-21 07:26:16.497' AS DateTime), CAST(N'2018-12-21 07:26:16.497' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 7, N'Linh thức cường đại​', CAST(N'2018-12-21 07:26:20.737' AS DateTime), CAST(N'2018-12-21 07:26:20.737' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 8, N'Đạo sĩ và đầu bếp', CAST(N'2018-12-21 07:26:25.807' AS DateTime), CAST(N'2018-12-21 07:26:25.807' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 9, N'Thần hồn ', CAST(N'2018-12-21 07:26:31.100' AS DateTime), CAST(N'2018-12-21 07:26:31.100' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 10, N'Đa Nhân Cách?', CAST(N'2018-12-21 07:26:36.327' AS DateTime), CAST(N'2018-12-21 07:26:36.327' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 11, N'Tự loạn đầu trận tuyến ', CAST(N'2018-12-21 07:26:41.083' AS DateTime), CAST(N'2018-12-21 07:26:41.083' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 12, N'Ta tìm ngươi đã hơn ngàn năm', CAST(N'2018-12-21 07:26:46.377' AS DateTime), CAST(N'2018-12-21 07:26:46.377' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 13, N'Diệp gia đại loạn 2', CAST(N'2018-12-21 07:26:51.097' AS DateTime), CAST(N'2018-12-21 07:26:51.097' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 14, N'Giáo hoàng. ', CAST(N'2018-12-21 07:26:56.627' AS DateTime), CAST(N'2018-12-21 07:26:56.627' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 15, N'Tiền bối, ta gửi ngài hai rương dược liệu làm tạ lễ nhé', CAST(N'2018-12-21 07:27:02.457' AS DateTime), CAST(N'2018-12-21 07:27:02.457' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 16, N'Nghiên Cứu', CAST(N'2018-12-21 07:27:07.810' AS DateTime), CAST(N'2018-12-21 07:27:07.810' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 17, N'Quỷ Vương giáng thế', CAST(N'2018-12-21 07:27:13.503' AS DateTime), CAST(N'2018-12-21 07:27:13.503' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 18, N'Gặp biến', CAST(N'2018-12-21 07:27:19.103' AS DateTime), CAST(N'2018-12-21 07:27:19.103' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 19, N'Gan báo', CAST(N'2018-12-21 07:27:24.207' AS DateTime), CAST(N'2018-12-21 07:27:24.207' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 20, N' Sinh hoạt thường ngày', CAST(N'2018-12-21 07:27:28.960' AS DateTime), CAST(N'2018-12-21 07:27:28.960' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 21, N'Chí khí', CAST(N'2018-12-21 07:27:34.233' AS DateTime), CAST(N'2018-12-21 07:27:34.233' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 22, N'Tự sát', CAST(N'2018-12-21 07:27:39.280' AS DateTime), CAST(N'2018-12-21 07:27:39.280' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 23, N'Tự sát', CAST(N'2018-12-21 07:27:44.653' AS DateTime), CAST(N'2018-12-21 07:27:44.653' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 24, N'Đại thành hỏa hầu', CAST(N'2018-12-21 07:27:49.853' AS DateTime), CAST(N'2018-12-21 07:27:49.853' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 25, N'Hỏa Linh Sơn', CAST(N'2018-12-21 07:27:55.033' AS DateTime), CAST(N'2018-12-21 07:27:55.033' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (19, 26, N'Tin Tức Đại Hội', CAST(N'2018-12-21 07:28:00.333' AS DateTime), CAST(N'2018-12-21 07:28:00.333' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 1, N'Đồ tốt tiện nghi thực dụng', CAST(N'2018-12-21 07:25:49.030' AS DateTime), CAST(N'2018-12-21 07:25:49.030' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 2, N'Hoàng Dương', CAST(N'2018-12-21 07:25:55.087' AS DateTime), CAST(N'2018-12-21 07:25:55.087' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 3, N'Lăng ba đi bộ', CAST(N'2018-12-21 07:26:00.633' AS DateTime), CAST(N'2018-12-21 07:26:00.633' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 4, N'Giáo Đình và Hắc Viên tộc', CAST(N'2018-12-21 07:26:06.477' AS DateTime), CAST(N'2018-12-21 07:26:06.477' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 5, N'Nữ nhân thần bí, bảo vật bất ngờ', CAST(N'2018-12-21 07:26:11.380' AS DateTime), CAST(N'2018-12-21 07:26:11.380' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 6, N'Hệ thống?', CAST(N'2018-12-21 07:26:16.610' AS DateTime), CAST(N'2018-12-21 07:26:16.610' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 7, N'Tấm da thần bí ​', CAST(N'2018-12-21 07:26:20.867' AS DateTime), CAST(N'2018-12-21 07:26:20.867' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 8, N' Mới vào sơn môn', CAST(N'2018-12-21 07:26:25.937' AS DateTime), CAST(N'2018-12-21 07:26:25.937' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 9, N'Hỗn Độn Thần Ma Quan Tưởng Pháp', CAST(N'2018-12-21 07:26:31.260' AS DateTime), CAST(N'2018-12-21 07:26:31.260' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 10, N'Lời Tiên Đoán Và Quyết ĐỊnh Của Nữ Vương', CAST(N'2018-12-21 07:26:36.470' AS DateTime), CAST(N'2018-12-21 07:26:36.470' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 11, N'Tu sĩ Ma Đạo', CAST(N'2018-12-21 07:26:41.220' AS DateTime), CAST(N'2018-12-21 07:26:41.220' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 12, N'Chiếc bánh xốp cuối cùng', CAST(N'2018-12-21 07:26:46.500' AS DateTime), CAST(N'2018-12-21 07:26:46.500' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 13, N'Thánh cấp?', CAST(N'2018-12-21 07:26:51.230' AS DateTime), CAST(N'2018-12-21 07:26:51.230' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 14, N'Tiến vào địa ngục. ', CAST(N'2018-12-21 07:26:56.753' AS DateTime), CAST(N'2018-12-21 07:26:56.753' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 15, N'Giáo sư Nhân Thủy bị thương', CAST(N'2018-12-21 07:27:02.570' AS DateTime), CAST(N'2018-12-21 07:27:02.570' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 16, N'Nội Tình', CAST(N'2018-12-21 07:27:07.960' AS DateTime), CAST(N'2018-12-21 07:27:07.960' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 17, N'Bạch Xà Trận', CAST(N'2018-12-21 07:27:13.633' AS DateTime), CAST(N'2018-12-21 07:27:13.633' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 18, N'Lệnh bài', CAST(N'2018-12-21 07:27:19.227' AS DateTime), CAST(N'2018-12-21 07:27:19.227' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 19, N'Bị thương nặng', CAST(N'2018-12-21 07:27:24.340' AS DateTime), CAST(N'2018-12-21 07:27:24.340' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 20, N' Nghi thức đính hôn', CAST(N'2018-12-21 07:27:29.220' AS DateTime), CAST(N'2018-12-21 07:27:29.220' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 21, N'Hồng Ngọc Công tầng thứ sáu', CAST(N'2018-12-21 07:27:34.353' AS DateTime), CAST(N'2018-12-21 07:27:34.353' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 22, N'Bảo chủ', CAST(N'2018-12-21 07:27:39.423' AS DateTime), CAST(N'2018-12-21 07:27:39.423' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 23, N'Bảo chủ', CAST(N'2018-12-21 07:27:44.790' AS DateTime), CAST(N'2018-12-21 07:27:44.790' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 24, N'Xung đột', CAST(N'2018-12-21 07:27:49.963' AS DateTime), CAST(N'2018-12-21 07:27:49.963' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 25, N'Hỏa long - Lửa giận của Hoàng Thiên', CAST(N'2018-12-21 07:27:55.177' AS DateTime), CAST(N'2018-12-21 07:27:55.177' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (20, 26, N'Linh Mạch_ Cải Tạo!!!(1)', CAST(N'2018-12-21 07:28:00.487' AS DateTime), CAST(N'2018-12-21 07:28:00.487' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 1, N'Quyền Thập Phương', CAST(N'2018-12-21 07:25:49.183' AS DateTime), CAST(N'2018-12-21 07:25:49.183' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 2, N'Cầm Nhầm Nội Y Của Nguyệt Nhi', CAST(N'2018-12-21 07:25:55.480' AS DateTime), CAST(N'2018-12-21 07:25:55.480' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 3, N'Giải cứu chung linh', CAST(N'2018-12-21 07:26:00.803' AS DateTime), CAST(N'2018-12-21 07:26:00.803' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 4, N'Lâm Phong chiến Hắc Viên', CAST(N'2018-12-21 07:26:06.593' AS DateTime), CAST(N'2018-12-21 07:26:06.593' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 5, N'Tồn tại không tưởng tượng nổi, nhân tâm khó dò', CAST(N'2018-12-21 07:26:11.527' AS DateTime), CAST(N'2018-12-21 07:26:11.527' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 6, N'Dưới rốn một tất', CAST(N'2018-12-21 07:26:16.750' AS DateTime), CAST(N'2018-12-21 07:26:16.750' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 7, N'Là ảo giác, hay là tương lai...​', CAST(N'2018-12-21 07:26:21.010' AS DateTime), CAST(N'2018-12-21 07:26:21.010' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 8, N'Tuyển chọn khắc nghiệt', CAST(N'2018-12-21 07:26:26.077' AS DateTime), CAST(N'2018-12-21 07:26:26.077' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 9, N'Đào góc tường ', CAST(N'2018-12-21 07:26:31.393' AS DateTime), CAST(N'2018-12-21 07:26:31.393' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 10, N'Trảm Nguyền Chú', CAST(N'2018-12-21 07:26:36.610' AS DateTime), CAST(N'2018-12-21 07:26:36.610' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 11, N'Trảm thảo trừ căn​', CAST(N'2018-12-21 07:26:41.380' AS DateTime), CAST(N'2018-12-21 07:26:41.380' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 12, N'Đao này tên là Mạc Thính Vũ', CAST(N'2018-12-21 07:26:46.640' AS DateTime), CAST(N'2018-12-21 07:26:46.640' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 13, N'Khuất phục', CAST(N'2018-12-21 07:26:51.377' AS DateTime), CAST(N'2018-12-21 07:26:51.377' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 14, N'Địa ngục cư dân. ', CAST(N'2018-12-21 07:26:56.860' AS DateTime), CAST(N'2018-12-21 07:26:56.860' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 15, N'Việc này có chút tà môn!', CAST(N'2018-12-21 07:27:02.687' AS DateTime), CAST(N'2018-12-21 07:27:02.687' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 16, N'Cõi U Minh', CAST(N'2018-12-21 07:27:08.153' AS DateTime), CAST(N'2018-12-21 07:27:08.153' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 17, N'Si Tình Chú', CAST(N'2018-12-21 07:27:13.760' AS DateTime), CAST(N'2018-12-21 07:27:13.760' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 18, N'Tuyệt vọng', CAST(N'2018-12-21 07:27:19.347' AS DateTime), CAST(N'2018-12-21 07:27:19.347' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 19, N'Bắc Huyền Tông', CAST(N'2018-12-21 07:27:24.450' AS DateTime), CAST(N'2018-12-21 07:27:24.450' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 20, N'Bức cung', CAST(N'2018-12-21 07:27:29.350' AS DateTime), CAST(N'2018-12-21 07:27:29.350' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 21, N'Xích Tuyết Đan', CAST(N'2018-12-21 07:27:34.480' AS DateTime), CAST(N'2018-12-21 07:27:34.480' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 22, N'Hình mẫu ''Lý tưởng'' của Mạnh Kỳ', CAST(N'2018-12-21 07:27:39.547' AS DateTime), CAST(N'2018-12-21 07:27:39.547' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 23, N'Hình mẫu', CAST(N'2018-12-21 07:27:44.910' AS DateTime), CAST(N'2018-12-21 07:27:44.910' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 24, N'“Quân tử như Ngọc” Vương Thần', CAST(N'2018-12-21 07:27:50.100' AS DateTime), CAST(N'2018-12-21 07:27:50.100' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 25, N'Đột Phá!', CAST(N'2018-12-21 07:27:55.363' AS DateTime), CAST(N'2018-12-21 07:27:55.363' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (21, 26, N'Linh Mạch_ Cải Tạo!!! (2)', CAST(N'2018-12-21 07:28:00.600' AS DateTime), CAST(N'2018-12-21 07:28:00.600' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 1, N'Thiếu hiệp lạc đường', CAST(N'2018-12-21 07:25:49.340' AS DateTime), CAST(N'2018-12-21 07:25:49.340' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 2, N'Nhiệm Vụ Đường', CAST(N'2018-12-21 07:25:55.637' AS DateTime), CAST(N'2018-12-21 07:25:55.637' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 3, N'Tiêu dao thiên hạ', CAST(N'2018-12-21 07:26:00.930' AS DateTime), CAST(N'2018-12-21 07:26:00.930' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 4, N'Hắc Lão Quỷ', CAST(N'2018-12-21 07:26:06.720' AS DateTime), CAST(N'2018-12-21 07:26:06.720' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 5, N'Thiên Hạ Hồng Lô, 17+', CAST(N'2018-12-21 07:26:11.643' AS DateTime), CAST(N'2018-12-21 07:26:11.643' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 6, N'Mẹ vợ', CAST(N'2018-12-21 07:26:16.917' AS DateTime), CAST(N'2018-12-21 07:26:16.917' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 7, N'Đột phá Dẫn Huyết cảnh tầng thứ bảy ​', CAST(N'2018-12-21 07:26:21.143' AS DateTime), CAST(N'2018-12-21 07:26:21.143' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 8, N'Trung hiếu', CAST(N'2018-12-21 07:26:26.210' AS DateTime), CAST(N'2018-12-21 07:26:26.210' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 9, N'Lâm Phong ', CAST(N'2018-12-21 07:26:31.517' AS DateTime), CAST(N'2018-12-21 07:26:31.517' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 10, N'Tin Tức Tốt Của Cơ Diễm', CAST(N'2018-12-21 07:26:36.720' AS DateTime), CAST(N'2018-12-21 07:26:36.720' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 11, N'Ngang ngược vô kỵ​', CAST(N'2018-12-21 07:26:41.530' AS DateTime), CAST(N'2018-12-21 07:26:41.530' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 12, N'Ngươi muốn chết sao?', CAST(N'2018-12-21 07:26:46.767' AS DateTime), CAST(N'2018-12-21 07:26:46.767' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 13, N'Nhiệm vụ đầu tiên', CAST(N'2018-12-21 07:26:51.493' AS DateTime), CAST(N'2018-12-21 07:26:51.493' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 14, N'Vô đề. ', CAST(N'2018-12-21 07:26:56.967' AS DateTime), CAST(N'2018-12-21 07:26:56.967' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 15, N'Quỷ Đăng Tự và thăm dò', CAST(N'2018-12-21 07:27:02.813' AS DateTime), CAST(N'2018-12-21 07:27:02.813' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 16, N'Tìm Hiểu. Đại Thịnh', CAST(N'2018-12-21 07:27:08.290' AS DateTime), CAST(N'2018-12-21 07:27:08.290' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 17, N'Ký ức', CAST(N'2018-12-21 07:27:13.870' AS DateTime), CAST(N'2018-12-21 07:27:13.870' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 18, N'Diệt nhị tu', CAST(N'2018-12-21 07:27:19.470' AS DateTime), CAST(N'2018-12-21 07:27:19.470' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 19, N'Kinh hỉ', CAST(N'2018-12-21 07:27:24.573' AS DateTime), CAST(N'2018-12-21 07:27:24.573' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 20, N'Hóa giải', CAST(N'2018-12-21 07:27:29.520' AS DateTime), CAST(N'2018-12-21 07:27:29.520' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 21, N' Lục trọng trung kỳ', CAST(N'2018-12-21 07:27:34.593' AS DateTime), CAST(N'2018-12-21 07:27:34.593' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 22, N'Quy đổi', CAST(N'2018-12-21 07:27:39.677' AS DateTime), CAST(N'2018-12-21 07:27:39.677' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 23, N'Quy đổi', CAST(N'2018-12-21 07:27:45.097' AS DateTime), CAST(N'2018-12-21 07:27:45.097' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 24, N'Biến dị Băng lang', CAST(N'2018-12-21 07:27:50.227' AS DateTime), CAST(N'2018-12-21 07:27:50.227' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 25, N'Rời đi', CAST(N'2018-12-21 07:27:55.483' AS DateTime), CAST(N'2018-12-21 07:27:55.483' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (22, 26, N'Luyện Chế Xe Thể Thao Không Gian???', CAST(N'2018-12-21 07:28:00.727' AS DateTime), CAST(N'2018-12-21 07:28:00.727' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 1, N'Phát tài, phát tài!', CAST(N'2018-12-21 07:25:49.483' AS DateTime), CAST(N'2018-12-21 07:25:49.483' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 2, N'Nữ Sinh Mặc Thanh Y', CAST(N'2018-12-21 07:25:55.797' AS DateTime), CAST(N'2018-12-21 07:25:55.797' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 3, N' Mạn đà sơn trang', CAST(N'2018-12-21 07:26:01.160' AS DateTime), CAST(N'2018-12-21 07:26:01.160' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 4, N'Thánh Thể Hiển uy', CAST(N'2018-12-21 07:26:06.837' AS DateTime), CAST(N'2018-12-21 07:26:06.837' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 5, N'Tú Hạ Thảo 18+', CAST(N'2018-12-21 07:26:11.810' AS DateTime), CAST(N'2018-12-21 07:26:11.810' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 6, N' Hồng hạnh xuất tường', CAST(N'2018-12-21 07:26:17.077' AS DateTime), CAST(N'2018-12-21 07:26:17.077' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 7, N'Hầu Quân Lâu​', CAST(N'2018-12-21 07:26:21.277' AS DateTime), CAST(N'2018-12-21 07:26:21.277' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 8, N' Giải thích', CAST(N'2018-12-21 07:26:26.363' AS DateTime), CAST(N'2018-12-21 07:26:26.363' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 9, N'Văn Võ ', CAST(N'2018-12-21 07:26:31.653' AS DateTime), CAST(N'2018-12-21 07:26:31.653' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 10, N'Chiến Tiêu Đỉnh, Tiêu Lệ', CAST(N'2018-12-21 07:26:36.837' AS DateTime), CAST(N'2018-12-21 07:26:36.837' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 11, N'Phong khởi vân dũng​', CAST(N'2018-12-21 07:26:41.707' AS DateTime), CAST(N'2018-12-21 07:26:41.707' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 12, N'Một lần nói chuyện về Thần (thượng)', CAST(N'2018-12-21 07:26:46.900' AS DateTime), CAST(N'2018-12-21 07:26:46.900' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 13, N'Thà làm tiểu nhân chứ không làm quân tử', CAST(N'2018-12-21 07:26:51.623' AS DateTime), CAST(N'2018-12-21 07:26:51.623' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 14, N' Lục giai và tiếp tục lên đường. ', CAST(N'2018-12-21 07:26:57.097' AS DateTime), CAST(N'2018-12-21 07:26:57.097' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 15, N'Xa quê gặp bạn cũ', CAST(N'2018-12-21 07:27:02.937' AS DateTime), CAST(N'2018-12-21 07:27:02.937' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 16, N'Lực lượng. Nghiên Cứu Pháp Tắc', CAST(N'2018-12-21 07:27:08.407' AS DateTime), CAST(N'2018-12-21 07:27:08.407' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 17, N'Không gian luân hồi', CAST(N'2018-12-21 07:27:13.977' AS DateTime), CAST(N'2018-12-21 07:27:13.977' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 18, N'Thỉnh cầu', CAST(N'2018-12-21 07:27:19.610' AS DateTime), CAST(N'2018-12-21 07:27:19.610' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 19, N'Vây sát đảo nghịch', CAST(N'2018-12-21 07:27:24.693' AS DateTime), CAST(N'2018-12-21 07:27:24.693' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 20, N'Mặt mũi của Lăng Liệt', CAST(N'2018-12-21 07:27:29.653' AS DateTime), CAST(N'2018-12-21 07:27:29.653' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 21, N' Lý Sơn Hà', CAST(N'2018-12-21 07:27:34.720' AS DateTime), CAST(N'2018-12-21 07:27:34.720' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 22, N'Trở về', CAST(N'2018-12-21 07:27:39.817' AS DateTime), CAST(N'2018-12-21 07:27:39.817' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 23, N'Trở về', CAST(N'2018-12-21 07:27:45.240' AS DateTime), CAST(N'2018-12-21 07:27:45.240' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 24, N'Trong phút sinh tử', CAST(N'2018-12-21 07:27:50.340' AS DateTime), CAST(N'2018-12-21 07:27:50.340' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 25, N'Cố nhân', CAST(N'2018-12-21 07:27:55.683' AS DateTime), CAST(N'2018-12-21 07:27:55.683' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (23, 26, N'Mẹ Con Bí Mật!!! (1)', CAST(N'2018-12-21 07:28:00.840' AS DateTime), CAST(N'2018-12-21 07:28:00.840' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 1, N'Tức nhưỡng thần kỳ', CAST(N'2018-12-21 07:25:49.683' AS DateTime), CAST(N'2018-12-21 07:25:49.683' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 2, N'Oan Gia Ngõ Hẹp', CAST(N'2018-12-21 07:25:55.947' AS DateTime), CAST(N'2018-12-21 07:25:55.947' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 3, N'Lấy 1 cân 5', CAST(N'2018-12-21 07:26:01.363' AS DateTime), CAST(N'2018-12-21 07:26:01.363' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 4, N'Nhất Dương Trảm Ma', CAST(N'2018-12-21 07:26:07.000' AS DateTime), CAST(N'2018-12-21 07:26:07.000' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 5, N'Nho tu', CAST(N'2018-12-21 07:26:11.927' AS DateTime), CAST(N'2018-12-21 07:26:11.927' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 6, N'Lại đến', CAST(N'2018-12-21 07:26:17.187' AS DateTime), CAST(N'2018-12-21 07:26:17.187' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 7, N'Đụng phải địch thủ​', CAST(N'2018-12-21 07:26:21.410' AS DateTime), CAST(N'2018-12-21 07:26:21.410' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 8, N'Thay Đạo bào', CAST(N'2018-12-21 07:26:26.510' AS DateTime), CAST(N'2018-12-21 07:26:26.510' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 9, N'Khai mạch ', CAST(N'2018-12-21 07:26:31.780' AS DateTime), CAST(N'2018-12-21 07:26:31.780' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 10, N'Mặt Khác Của Uyển Nhi', CAST(N'2018-12-21 07:26:36.957' AS DateTime), CAST(N'2018-12-21 07:26:36.957' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 11, N'Ngộ thương', CAST(N'2018-12-21 07:26:41.843' AS DateTime), CAST(N'2018-12-21 07:26:41.843' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 12, N'Một lần nói chuyện về Thần (hạ)', CAST(N'2018-12-21 07:26:47.033' AS DateTime), CAST(N'2018-12-21 07:26:47.033' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 13, N'Tử phong xui xẻo', CAST(N'2018-12-21 07:26:51.753' AS DateTime), CAST(N'2018-12-21 07:26:51.753' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 14, N'Đấu thiên sứ. ', CAST(N'2018-12-21 07:26:57.220' AS DateTime), CAST(N'2018-12-21 07:26:57.220' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 15, N'Quỷ Đăng Tự năm mươi năm trước', CAST(N'2018-12-21 07:27:03.047' AS DateTime), CAST(N'2018-12-21 07:27:03.047' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 16, N'Lịch lãm. Âm Dương Nhãn', CAST(N'2018-12-21 07:27:08.533' AS DateTime), CAST(N'2018-12-21 07:27:08.533' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 17, N'Càn Khôn Đại Na Di', CAST(N'2018-12-21 07:27:14.143' AS DateTime), CAST(N'2018-12-21 07:27:14.143' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 18, N'Chất tôn của Hóa Thần', CAST(N'2018-12-21 07:27:19.760' AS DateTime), CAST(N'2018-12-21 07:27:19.760' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 19, N'Tranh đoạt', CAST(N'2018-12-21 07:27:24.823' AS DateTime), CAST(N'2018-12-21 07:27:24.823' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 20, N'Bế quan', CAST(N'2018-12-21 07:27:29.790' AS DateTime), CAST(N'2018-12-21 07:27:29.790' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 21, N'Hồng Ngọc Chi Xúc', CAST(N'2018-12-21 07:27:34.847' AS DateTime), CAST(N'2018-12-21 07:27:34.847' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 22, N'Dũng khí', CAST(N'2018-12-21 07:27:39.957' AS DateTime), CAST(N'2018-12-21 07:27:39.957' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 23, N'Dũng khí', CAST(N'2018-12-21 07:27:45.427' AS DateTime), CAST(N'2018-12-21 07:27:45.427' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 24, N'Thiên Hoang Táng Thần, Tứ Phương Trấn Sát!', CAST(N'2018-12-21 07:27:50.470' AS DateTime), CAST(N'2018-12-21 07:27:50.470' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 25, N'Thời gian qua đi, lòng người thay đổi', CAST(N'2018-12-21 07:27:55.813' AS DateTime), CAST(N'2018-12-21 07:27:55.813' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (24, 26, N'Mẹ Con Bí Mật!!! (2)', CAST(N'2018-12-21 07:28:00.963' AS DateTime), CAST(N'2018-12-21 07:28:00.963' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 1, N'Thu hoạch Gạo Vân Hương', CAST(N'2018-12-21 07:25:49.833' AS DateTime), CAST(N'2018-12-21 07:25:49.833' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 2, N'Giao Thủ Ngắn Ngủi', CAST(N'2018-12-21 07:25:56.087' AS DateTime), CAST(N'2018-12-21 07:25:56.087' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 3, N'Dã Chiến (Double Rampage)', CAST(N'2018-12-21 07:26:01.540' AS DateTime), CAST(N'2018-12-21 07:26:01.540' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 4, N'Đại Chiến Kết Thúc', CAST(N'2018-12-21 07:26:07.150' AS DateTime), CAST(N'2018-12-21 07:26:07.150' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 5, N'Song tu 18+', CAST(N'2018-12-21 07:26:12.067' AS DateTime), CAST(N'2018-12-21 07:26:12.067' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 6, N'Lôi Thuấn', CAST(N'2018-12-21 07:26:17.317' AS DateTime), CAST(N'2018-12-21 07:26:17.317' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 7, N'Tang Tương triển uy​', CAST(N'2018-12-21 07:26:21.633' AS DateTime), CAST(N'2018-12-21 07:26:21.633' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 8, N'Độ', CAST(N'2018-12-21 07:26:26.663' AS DateTime), CAST(N'2018-12-21 07:26:26.663' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 9, N'Nguyên thuật ', CAST(N'2018-12-21 07:26:31.940' AS DateTime), CAST(N'2018-12-21 07:26:31.940' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 10, N'Kế Hoạch Đen Tối Của Cơ Diễm', CAST(N'2018-12-21 07:26:37.093' AS DateTime), CAST(N'2018-12-21 07:26:37.093' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 11, N'Cung tiễn Tam Hoàng Tử', CAST(N'2018-12-21 07:26:41.987' AS DateTime), CAST(N'2018-12-21 07:26:41.987' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 12, N'Tô Trường An đã đến thành Trường An', CAST(N'2018-12-21 07:26:47.173' AS DateTime), CAST(N'2018-12-21 07:26:47.173' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 13, N'Lí do (1)', CAST(N'2018-12-21 07:26:51.880' AS DateTime), CAST(N'2018-12-21 07:26:51.880' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 14, N'Đau thương mất mát!! ', CAST(N'2018-12-21 07:26:57.350' AS DateTime), CAST(N'2018-12-21 07:26:57.350' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 15, N'Linh Quỷ', CAST(N'2018-12-21 07:27:03.163' AS DateTime), CAST(N'2018-12-21 07:27:03.163' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 16, N'Chí Dương. Chí Âm. Thần. Hết phần 1', CAST(N'2018-12-21 07:27:08.763' AS DateTime), CAST(N'2018-12-21 07:27:08.763' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 17, N'Tần Viên uy hiếp', CAST(N'2018-12-21 07:27:14.257' AS DateTime), CAST(N'2018-12-21 07:27:14.257' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 18, N'Mời', CAST(N'2018-12-21 07:27:20.043' AS DateTime), CAST(N'2018-12-21 07:27:20.043' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 19, N'Phá trận', CAST(N'2018-12-21 07:27:24.963' AS DateTime), CAST(N'2018-12-21 07:27:24.963' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 20, N'Kỳ nhân kia là ai?', CAST(N'2018-12-21 07:27:29.920' AS DateTime), CAST(N'2018-12-21 07:27:29.920' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 21, N' Trước giờ', CAST(N'2018-12-21 07:27:34.990' AS DateTime), CAST(N'2018-12-21 07:27:34.990' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 22, N'Bí ẩn', CAST(N'2018-12-21 07:27:40.073' AS DateTime), CAST(N'2018-12-21 07:27:40.073' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 23, N'Bí ẩn', CAST(N'2018-12-21 07:27:45.560' AS DateTime), CAST(N'2018-12-21 07:27:45.560' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 24, N'Ngưng dịch, Tế cốt, Thối tủy, Long đạo', CAST(N'2018-12-21 07:27:50.590' AS DateTime), CAST(N'2018-12-21 07:27:50.590' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 25, N'Uống rượu cùng giai nhân', CAST(N'2018-12-21 07:27:55.940' AS DateTime), CAST(N'2018-12-21 07:27:55.940' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (25, 26, N'Nhập Môn _Tu Luyện!!!', CAST(N'2018-12-21 07:28:01.077' AS DateTime), CAST(N'2018-12-21 07:28:01.077' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 1, N'Thịt nanh thú hầm với long nhãn', CAST(N'2018-12-21 07:25:49.983' AS DateTime), CAST(N'2018-12-21 07:25:49.983' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 2, N'Cuồng Chiến', CAST(N'2018-12-21 07:25:56.207' AS DateTime), CAST(N'2018-12-21 07:25:56.207' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 3, N'Cao triều trên bãi biển', CAST(N'2018-12-21 07:26:01.650' AS DateTime), CAST(N'2018-12-21 07:26:01.650' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 4, N'Thánh Viên Huyết Mạch', CAST(N'2018-12-21 07:26:07.277' AS DateTime), CAST(N'2018-12-21 07:26:07.277' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 5, N'Tiểu nữ nô động chân tình, xông vào Ma Kiếm Lâm', CAST(N'2018-12-21 07:26:12.173' AS DateTime), CAST(N'2018-12-21 07:26:12.173' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 6, N'Tần Quân Nghi gặp nguy?', CAST(N'2018-12-21 07:26:17.417' AS DateTime), CAST(N'2018-12-21 07:26:17.417' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 7, N'Đoạt đi kiếm câu​', CAST(N'2018-12-21 07:26:21.767' AS DateTime), CAST(N'2018-12-21 07:26:21.767' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 8, N'Bái nhập Thượng Thanh tông', CAST(N'2018-12-21 07:26:26.807' AS DateTime), CAST(N'2018-12-21 07:26:26.807' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 9, N'Long Bộ, Long Bi Thủ ', CAST(N'2018-12-21 07:26:32.043' AS DateTime), CAST(N'2018-12-21 07:26:32.043' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 10, N'Lừa Gạt Uyển Nhi', CAST(N'2018-12-21 07:26:37.220' AS DateTime), CAST(N'2018-12-21 07:26:37.220' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 11, N'Vô tư phụng hiến', CAST(N'2018-12-21 07:26:42.110' AS DateTime), CAST(N'2018-12-21 07:26:42.110' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 12, N'Sở Tích Phong ', CAST(N'2018-12-21 07:26:47.300' AS DateTime), CAST(N'2018-12-21 07:26:47.300' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 13, N'Lí do (2)', CAST(N'2018-12-21 07:26:52.013' AS DateTime), CAST(N'2018-12-21 07:26:52.013' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 14, N'Đạm đài thánh địa. ', CAST(N'2018-12-21 07:26:57.480' AS DateTime), CAST(N'2018-12-21 07:26:57.480' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 15, N'Độc Long Thảo, Thật Nguy Hiểm!', CAST(N'2018-12-21 07:27:03.370' AS DateTime), CAST(N'2018-12-21 07:27:03.370' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 16, N'Thiên Vân Môn. Full', CAST(N'2018-12-21 07:27:08.913' AS DateTime), CAST(N'2018-12-21 07:27:08.913' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 17, N'Hủy hôn', CAST(N'2018-12-21 07:27:14.373' AS DateTime), CAST(N'2018-12-21 07:27:14.373' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 18, N'Nguyên Anh dị biến', CAST(N'2018-12-21 07:27:20.200' AS DateTime), CAST(N'2018-12-21 07:27:20.200' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 19, N'Biến cố', CAST(N'2018-12-21 07:27:25.073' AS DateTime), CAST(N'2018-12-21 07:27:25.073' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 20, N'Bốn hình linh trận đồ', CAST(N'2018-12-21 07:27:30.053' AS DateTime), CAST(N'2018-12-21 07:27:30.053' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 21, N'Thiên tài chiến bắt đầu', CAST(N'2018-12-21 07:27:35.137' AS DateTime), CAST(N'2018-12-21 07:27:35.137' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 22, N'Họa phúc khôn lường', CAST(N'2018-12-21 07:27:40.257' AS DateTime), CAST(N'2018-12-21 07:27:40.257' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 23, N'Họa phúc khôn lường', CAST(N'2018-12-21 07:27:45.673' AS DateTime), CAST(N'2018-12-21 07:27:45.673' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 24, N'Vân Hoàng tâm tư', CAST(N'2018-12-21 07:27:50.713' AS DateTime), CAST(N'2018-12-21 07:27:50.713' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 25, N'Lại tới Tụ Bảo Các', CAST(N'2018-12-21 07:27:56.063' AS DateTime), CAST(N'2018-12-21 07:27:56.063' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (26, 26, N'Mua Xe!!! Mẹ Con Độc Nhất!!!', CAST(N'2018-12-21 07:28:01.190' AS DateTime), CAST(N'2018-12-21 07:28:01.190' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 1, N'Cùng nhau ăn cơm', CAST(N'2018-12-21 07:25:50.127' AS DateTime), CAST(N'2018-12-21 07:25:50.127' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 2, N'Vô Chiêu Thắng Hữu Chiêu', CAST(N'2018-12-21 07:25:56.393' AS DateTime), CAST(N'2018-12-21 07:25:56.393' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 3, N' Tịch Tà Yêu Lôi', CAST(N'2018-12-21 07:26:01.757' AS DateTime), CAST(N'2018-12-21 07:26:01.757' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 4, N'Luyện chế Trúc Cơ đan', CAST(N'2018-12-21 07:26:07.387' AS DateTime), CAST(N'2018-12-21 07:26:07.387' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 5, N'Mộc Linh Quả chi tranh', CAST(N'2018-12-21 07:26:12.327' AS DateTime), CAST(N'2018-12-21 07:26:12.327' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 6, N'Hạ Khiết Tâm', CAST(N'2018-12-21 07:26:17.537' AS DateTime), CAST(N'2018-12-21 07:26:17.537' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 7, N'Tranh chấp​', CAST(N'2018-12-21 07:26:21.903' AS DateTime), CAST(N'2018-12-21 07:26:21.903' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 8, N' Tắm rửa', CAST(N'2018-12-21 07:26:27.273' AS DateTime), CAST(N'2018-12-21 07:26:27.273' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 9, N'Đại khảo tiến đến ', CAST(N'2018-12-21 07:26:32.163' AS DateTime), CAST(N'2018-12-21 07:26:32.163' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 10, N'Cường Giả Đánh Tới', CAST(N'2018-12-21 07:26:37.350' AS DateTime), CAST(N'2018-12-21 07:26:37.350' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 11, N'Thiên Cương tam thập lục biến​', CAST(N'2018-12-21 07:26:42.217' AS DateTime), CAST(N'2018-12-21 07:26:42.217' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 12, N'Tiền bối hậu bối', CAST(N'2018-12-21 07:26:47.437' AS DateTime), CAST(N'2018-12-21 07:26:47.437' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 13, N'Thoát hiểm và hệ thống trí năng', CAST(N'2018-12-21 07:26:52.133' AS DateTime), CAST(N'2018-12-21 07:26:52.133' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 14, N'Ngũ tà. ', CAST(N'2018-12-21 07:26:57.613' AS DateTime), CAST(N'2018-12-21 07:26:57.613' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 15, N'Món Quà Bất Ngờ', CAST(N'2018-12-21 07:27:03.583' AS DateTime), CAST(N'2018-12-21 07:27:03.583' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 16, N'Nội Loạn Chư Hầu. Full', CAST(N'2018-12-21 07:27:09.100' AS DateTime), CAST(N'2018-12-21 07:27:09.100' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 17, N'Hủy hôn', CAST(N'2018-12-21 07:27:14.670' AS DateTime), CAST(N'2018-12-21 07:27:14.670' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 18, N'Phong Vân song sát', CAST(N'2018-12-21 07:27:20.380' AS DateTime), CAST(N'2018-12-21 07:27:20.380' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 19, N'Diều hâu bắt hổ', CAST(N'2018-12-21 07:27:25.190' AS DateTime), CAST(N'2018-12-21 07:27:25.190' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 20, N'Khổ tu ba tháng', CAST(N'2018-12-21 07:27:30.227' AS DateTime), CAST(N'2018-12-21 07:27:30.227' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 21, N'Cái đích cho mọi người chỉ trích', CAST(N'2018-12-21 07:27:35.253' AS DateTime), CAST(N'2018-12-21 07:27:35.253' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 22, N'Phản ứng', CAST(N'2018-12-21 07:27:40.393' AS DateTime), CAST(N'2018-12-21 07:27:40.393' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 23, N'Phản ứng', CAST(N'2018-12-21 07:27:45.783' AS DateTime), CAST(N'2018-12-21 07:27:45.783' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 24, N'Dùng nắm đấm của ta là đủ', CAST(N'2018-12-21 07:27:50.833' AS DateTime), CAST(N'2018-12-21 07:27:50.833' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 25, N'Bị ám sát!', CAST(N'2018-12-21 07:27:56.213' AS DateTime), CAST(N'2018-12-21 07:27:56.213' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (27, 26, N'Bugatti chiron!!!', CAST(N'2018-12-21 07:28:01.313' AS DateTime), CAST(N'2018-12-21 07:28:01.313' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 1, N'Đi đường về phía tây, ta đến rồi', CAST(N'2018-12-21 07:25:50.267' AS DateTime), CAST(N'2018-12-21 07:25:50.267' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 2, N'Người Trả Giá Cuối Cùng', CAST(N'2018-12-21 07:25:56.530' AS DateTime), CAST(N'2018-12-21 07:25:56.530' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 3, N' Khẩu chiến quần hùng', CAST(N'2018-12-21 07:26:02.027' AS DateTime), CAST(N'2018-12-21 07:26:02.027' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 4, N'Trúc Cơ đan', CAST(N'2018-12-21 07:26:07.507' AS DateTime), CAST(N'2018-12-21 07:26:07.507' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 5, N'Tú Hạ Thảo song tu 18+', CAST(N'2018-12-21 07:26:12.450' AS DateTime), CAST(N'2018-12-21 07:26:12.450' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 6, N' Mẹ!', CAST(N'2018-12-21 07:26:17.647' AS DateTime), CAST(N'2018-12-21 07:26:17.647' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 7, N'Giao dịch​', CAST(N'2018-12-21 07:26:22.030' AS DateTime), CAST(N'2018-12-21 07:26:22.030' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 8, N'Lão Rùa giảng kinh', CAST(N'2018-12-21 07:26:27.410' AS DateTime), CAST(N'2018-12-21 07:26:27.410' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 9, N'Để lộ tài hoa', CAST(N'2018-12-21 07:26:32.363' AS DateTime), CAST(N'2018-12-21 07:26:32.363' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 10, N'Mặc Gia', CAST(N'2018-12-21 07:26:37.513' AS DateTime), CAST(N'2018-12-21 07:26:37.513' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 11, N'Huyền Linh tông oanh động​', CAST(N'2018-12-21 07:26:42.347' AS DateTime), CAST(N'2018-12-21 07:26:42.347' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 12, N'Liêm Pha già rồi', CAST(N'2018-12-21 07:26:47.570' AS DateTime), CAST(N'2018-12-21 07:26:47.570' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 13, N'Nhiệm vụ mới', CAST(N'2018-12-21 07:26:52.243' AS DateTime), CAST(N'2018-12-21 07:26:52.243' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 14, N'Hấp công phi thăng! ', CAST(N'2018-12-21 07:26:57.750' AS DateTime), CAST(N'2018-12-21 07:26:57.750' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 15, N'Thủ Đoạn Của Linh Điệp Tôn Giả', CAST(N'2018-12-21 07:27:03.697' AS DateTime), CAST(N'2018-12-21 07:27:03.697' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 16, N'Hết Phần 2 Tam Quốc. Full', CAST(N'2018-12-21 07:27:09.310' AS DateTime), CAST(N'2018-12-21 07:27:09.310' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 17, N'Thiên Lão cay đắng', CAST(N'2018-12-21 07:27:14.797' AS DateTime), CAST(N'2018-12-21 07:27:14.797' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 18, N'Tranh đấu', CAST(N'2018-12-21 07:27:20.527' AS DateTime), CAST(N'2018-12-21 07:27:20.527' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 19, N'Thất bại trong gang tấc', CAST(N'2018-12-21 07:27:25.387' AS DateTime), CAST(N'2018-12-21 07:27:25.387' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 20, N'Nắm tay', CAST(N'2018-12-21 07:27:30.343' AS DateTime), CAST(N'2018-12-21 07:27:30.343' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 21, N'Truyền âm nhập mật', CAST(N'2018-12-21 07:27:35.383' AS DateTime), CAST(N'2018-12-21 07:27:35.383' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 22, N'', CAST(N'2018-12-21 07:27:40.523' AS DateTime), CAST(N'2018-12-21 07:27:40.523' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 23, N'', CAST(N'2018-12-21 07:27:45.897' AS DateTime), CAST(N'2018-12-21 07:27:45.897' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 24, N'Chiến Vương Thần', CAST(N'2018-12-21 07:27:50.950' AS DateTime), CAST(N'2018-12-21 07:27:50.950' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 25, N'Lần đầu giết người', CAST(N'2018-12-21 07:27:56.343' AS DateTime), CAST(N'2018-12-21 07:27:56.343' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (28, 26, N'Diệp Gia, Diệp Huyên', CAST(N'2018-12-21 07:28:01.433' AS DateTime), CAST(N'2018-12-21 07:28:01.433' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 1, N'Đã lâu không gặp', CAST(N'2018-12-21 07:25:50.413' AS DateTime), CAST(N'2018-12-21 07:25:50.413' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 2, N'Bị Tỏ Tình', CAST(N'2018-12-21 07:25:56.643' AS DateTime), CAST(N'2018-12-21 07:25:56.643' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 3, N'Du sơn ngoạn thủy', CAST(N'2018-12-21 07:26:02.143' AS DateTime), CAST(N'2018-12-21 07:26:02.143' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 4, N'Vũ Hy', CAST(N'2018-12-21 07:26:07.663' AS DateTime), CAST(N'2018-12-21 07:26:07.663' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 5, N'Dạ Thành chi dạ', CAST(N'2018-12-21 07:26:12.590' AS DateTime), CAST(N'2018-12-21 07:26:12.590' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 6, N'Miêu tộc đại nạn', CAST(N'2018-12-21 07:26:17.757' AS DateTime), CAST(N'2018-12-21 07:26:17.757' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 7, N'Âm Cốt Cổ Độc​', CAST(N'2018-12-21 07:26:22.183' AS DateTime), CAST(N'2018-12-21 07:26:22.183' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 8, N'Thâm ý ẩn giấu', CAST(N'2018-12-21 07:26:27.543' AS DateTime), CAST(N'2018-12-21 07:26:27.543' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 9, N'Lộ ra uy thế', CAST(N'2018-12-21 07:26:32.597' AS DateTime), CAST(N'2018-12-21 07:26:32.597' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 10, N'Mật Thất Của Mặc Gia', CAST(N'2018-12-21 07:26:37.663' AS DateTime), CAST(N'2018-12-21 07:26:37.663' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 11, N'Thua', CAST(N'2018-12-21 07:26:42.467' AS DateTime), CAST(N'2018-12-21 07:26:42.467' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 12, N'Số mệnh Thiên Lam', CAST(N'2018-12-21 07:26:47.693' AS DateTime), CAST(N'2018-12-21 07:26:47.693' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 13, N'Tính toán cho tương lai', CAST(N'2018-12-21 07:26:52.387' AS DateTime), CAST(N'2018-12-21 07:26:52.387' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 14, N'Vô tận hải - Phong lôi thành!! ', CAST(N'2018-12-21 07:26:58.050' AS DateTime), CAST(N'2018-12-21 07:26:58.050' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 15, N'Bạn Học Tống Thư Hàng, Cậu Có ….', CAST(N'2018-12-21 07:27:03.807' AS DateTime), CAST(N'2018-12-21 07:27:03.807' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 16, N'Phần 3: Phi Thăng. Full chap', CAST(N'2018-12-21 07:27:09.443' AS DateTime), CAST(N'2018-12-21 07:27:09.443' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 17, N'Bái sư', CAST(N'2018-12-21 07:27:14.943' AS DateTime), CAST(N'2018-12-21 07:27:14.943' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 18, N'Nghiền ép', CAST(N'2018-12-21 07:27:20.660' AS DateTime), CAST(N'2018-12-21 07:27:20.660' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 19, N'Tức giận', CAST(N'2018-12-21 07:27:25.547' AS DateTime), CAST(N'2018-12-21 07:27:25.547' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 20, N'Thiên Lang Sơn', CAST(N'2018-12-21 07:27:30.530' AS DateTime), CAST(N'2018-12-21 07:27:30.530' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 21, N'Đại cục làm trọng', CAST(N'2018-12-21 07:27:35.517' AS DateTime), CAST(N'2018-12-21 07:27:35.517' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 22, N'Đối luyện', CAST(N'2018-12-21 07:27:40.650' AS DateTime), CAST(N'2018-12-21 07:27:40.650' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 23, N'Đối luyện', CAST(N'2018-12-21 07:27:46.023' AS DateTime), CAST(N'2018-12-21 07:27:46.023' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 24, N'Tứ phái tụ họp', CAST(N'2018-12-21 07:27:51.060' AS DateTime), CAST(N'2018-12-21 07:27:51.060' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 25, N'Thiên kiếm', CAST(N'2018-12-21 07:27:56.567' AS DateTime), CAST(N'2018-12-21 07:27:56.567' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (29, 26, N'Mình có tiền a!!!', CAST(N'2018-12-21 07:28:01.593' AS DateTime), CAST(N'2018-12-21 07:28:01.593' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 1, N'Trường Thiên, ngươi thấy thế nào?', CAST(N'2018-12-21 07:25:50.560' AS DateTime), CAST(N'2018-12-21 07:25:50.560' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 2, N'Ma Tiểu Uyên', CAST(N'2018-12-21 07:25:56.767' AS DateTime), CAST(N'2018-12-21 07:25:56.767' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 3, N' Vô tình cắm liễu', CAST(N'2018-12-21 07:26:02.310' AS DateTime), CAST(N'2018-12-21 07:26:02.310' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 4, N'Cái bẫy (1)', CAST(N'2018-12-21 07:26:07.803' AS DateTime), CAST(N'2018-12-21 07:26:07.803' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 5, N'Âm mưu lật tẩy', CAST(N'2018-12-21 07:26:12.820' AS DateTime), CAST(N'2018-12-21 07:26:12.820' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 6, N'''Bất quá ca thích''', CAST(N'2018-12-21 07:26:17.873' AS DateTime), CAST(N'2018-12-21 07:26:17.873' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 7, N'Hồ điệp giữa trời tuyết​', CAST(N'2018-12-21 07:26:22.293' AS DateTime), CAST(N'2018-12-21 07:26:22.293' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 8, N'Ngộ', CAST(N'2018-12-21 07:26:27.673' AS DateTime), CAST(N'2018-12-21 07:26:27.673' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 9, N'Chiến Lâm Phong ', CAST(N'2018-12-21 07:26:32.807' AS DateTime), CAST(N'2018-12-21 07:26:32.807' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 10, N'Lão Phu Chính Là Vô Tà', CAST(N'2018-12-21 07:26:37.860' AS DateTime), CAST(N'2018-12-21 07:26:37.860' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 11, N'Bằng phẳng', CAST(N'2018-12-21 07:26:42.643' AS DateTime), CAST(N'2018-12-21 07:26:42.643' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 12, N'Thiếu niên từng nghi hoặc, lão giả từng giải thích', CAST(N'2018-12-21 07:26:47.867' AS DateTime), CAST(N'2018-12-21 07:26:47.867' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 13, N'Sáu tháng sau', CAST(N'2018-12-21 07:26:52.563' AS DateTime), CAST(N'2018-12-21 07:26:52.563' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 14, N'Luyện thần đạo. ', CAST(N'2018-12-21 07:26:58.183' AS DateTime), CAST(N'2018-12-21 07:26:58.183' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 15, N'Hai Rương Dược Liệu!', CAST(N'2018-12-21 07:27:03.957' AS DateTime), CAST(N'2018-12-21 07:27:03.957' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 16, N'Hỗn Nguyên Nhất Khí. Full', CAST(N'2018-12-21 07:27:09.593' AS DateTime), CAST(N'2018-12-21 07:27:09.593' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 17, N'Túy âm', CAST(N'2018-12-21 07:27:15.093' AS DateTime), CAST(N'2018-12-21 07:27:15.093' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 18, N'Lục Nhai', CAST(N'2018-12-21 07:27:20.810' AS DateTime), CAST(N'2018-12-21 07:27:20.810' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 19, N'Đại khai sát giới', CAST(N'2018-12-21 07:27:25.693' AS DateTime), CAST(N'2018-12-21 07:27:25.693' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 20, N'Cao giai linh tài', CAST(N'2018-12-21 07:27:30.667' AS DateTime), CAST(N'2018-12-21 07:27:30.667' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 21, N' Lão tổ Lý gia ', CAST(N'2018-12-21 07:27:35.643' AS DateTime), CAST(N'2018-12-21 07:27:35.643' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 22, N'Bá chủ Diễn Võ Điện', CAST(N'2018-12-21 07:27:40.783' AS DateTime), CAST(N'2018-12-21 07:27:40.783' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 23, N'Bá chủ Diễn Võ Điện', CAST(N'2018-12-21 07:27:46.150' AS DateTime), CAST(N'2018-12-21 07:27:46.150' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 24, N'Lần lượt nghiền ép', CAST(N'2018-12-21 07:27:51.193' AS DateTime), CAST(N'2018-12-21 07:27:51.193' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 25, N'Sơ đấu Nguyên đan tu sỹ', CAST(N'2018-12-21 07:27:56.677' AS DateTime), CAST(N'2018-12-21 07:27:56.677' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (30, 26, N'Kinh ngạc!', CAST(N'2018-12-21 07:28:01.780' AS DateTime), CAST(N'2018-12-21 07:28:01.780' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 1, N'Yêu quái làm loạn', CAST(N'2018-12-21 07:25:50.750' AS DateTime), CAST(N'2018-12-21 07:25:50.750' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 2, N'Tụ Khí Tầng Hai trung kỳ', CAST(N'2018-12-21 07:25:56.900' AS DateTime), CAST(N'2018-12-21 07:25:56.900' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 3, N'Bất chiến tự nhiên thành', CAST(N'2018-12-21 07:26:02.560' AS DateTime), CAST(N'2018-12-21 07:26:02.560' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 4, N'Cái bẫy (2)', CAST(N'2018-12-21 07:26:07.997' AS DateTime), CAST(N'2018-12-21 07:26:07.997' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 5, N'Thiên Hạ Khách Điếm, đấu gia hội', CAST(N'2018-12-21 07:26:12.947' AS DateTime), CAST(N'2018-12-21 07:26:12.947' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 6, N'Bà cô đanh đá', CAST(N'2018-12-21 07:26:18.013' AS DateTime), CAST(N'2018-12-21 07:26:18.013' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 7, N'Lời ước nguyện đi theo cùng mây gió​', CAST(N'2018-12-21 07:26:22.403' AS DateTime), CAST(N'2018-12-21 07:26:22.403' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 8, N'Giảng kinh xong', CAST(N'2018-12-21 07:26:27.803' AS DateTime), CAST(N'2018-12-21 07:26:27.803' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 9, N'Xu thế quật khởi', CAST(N'2018-12-21 07:26:32.937' AS DateTime), CAST(N'2018-12-21 07:26:32.937' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 10, N'Hai Vị Mỹ Nữ Chơi Vậy Là Không Đẹp Nha', CAST(N'2018-12-21 07:26:37.970' AS DateTime), CAST(N'2018-12-21 07:26:37.970' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 11, N'Áp bách', CAST(N'2018-12-21 07:26:42.747' AS DateTime), CAST(N'2018-12-21 07:26:42.747' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 12, N'Những người này từng khiến thiên hạ nể phục', CAST(N'2018-12-21 07:26:47.980' AS DateTime), CAST(N'2018-12-21 07:26:47.980' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 13, N'Cười đủ chưa', CAST(N'2018-12-21 07:26:52.787' AS DateTime), CAST(N'2018-12-21 07:26:52.787' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 14, N'Thông thiên ma uy. ', CAST(N'2018-12-21 07:26:58.337' AS DateTime), CAST(N'2018-12-21 07:26:58.337' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 15, N'Tôi Và Cách Luyện Đan Không Giống Người Thường….', CAST(N'2018-12-21 07:27:04.077' AS DateTime), CAST(N'2018-12-21 07:27:04.077' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 16, N'Một đám cô nhi. Full. Hết phần 4', CAST(N'2018-12-21 07:27:09.740' AS DateTime), CAST(N'2018-12-21 07:27:09.740' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 17, N'Ai mua rượu tôi bán rượu cho', CAST(N'2018-12-21 07:27:15.310' AS DateTime), CAST(N'2018-12-21 07:27:15.310' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 18, N'Tung tích địch nhân', CAST(N'2018-12-21 07:27:20.947' AS DateTime), CAST(N'2018-12-21 07:27:20.947' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 19, N'Thế cục', CAST(N'2018-12-21 07:27:25.833' AS DateTime), CAST(N'2018-12-21 07:27:25.833' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 20, N'Gợn sóng', CAST(N'2018-12-21 07:27:30.793' AS DateTime), CAST(N'2018-12-21 07:27:30.793' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 21, N'Toàn trường đều kinh hãi', CAST(N'2018-12-21 07:27:35.863' AS DateTime), CAST(N'2018-12-21 07:27:35.863' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 22, N'Ác nhân Tiểu Mạnh', CAST(N'2018-12-21 07:27:40.987' AS DateTime), CAST(N'2018-12-21 07:27:40.987' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 23, N'Ác nhân Tiểu Mạnh', CAST(N'2018-12-21 07:27:46.280' AS DateTime), CAST(N'2018-12-21 07:27:46.280' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 24, N'Kinh diễm toàn trường', CAST(N'2018-12-21 07:27:51.327' AS DateTime), CAST(N'2018-12-21 07:27:51.327' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (31, 25, N'Thành Đại La', CAST(N'2018-12-21 07:27:56.837' AS DateTime), CAST(N'2018-12-21 07:27:56.837' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 1, N'Hoàng lão tài gia yến', CAST(N'2018-12-21 07:25:51.017' AS DateTime), CAST(N'2018-12-21 07:25:51.017' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 2, N'Nhận Ra Vấn Đề', CAST(N'2018-12-21 07:25:57.007' AS DateTime), CAST(N'2018-12-21 07:25:57.007' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 3, N'Bốn loại ma thú', CAST(N'2018-12-21 07:26:02.740' AS DateTime), CAST(N'2018-12-21 07:26:02.740' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 4, N'Không Yên Thành Chủ', CAST(N'2018-12-21 07:26:08.100' AS DateTime), CAST(N'2018-12-21 07:26:08.100' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 5, N'Trần Duyên thổ lộ', CAST(N'2018-12-21 07:26:13.073' AS DateTime), CAST(N'2018-12-21 07:26:13.073' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 7, N'Sứ giả Mông Đan bộ lạc​', CAST(N'2018-12-21 07:26:22.527' AS DateTime), CAST(N'2018-12-21 07:26:22.527' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 8, N'Quán đỉnh', CAST(N'2018-12-21 07:26:27.937' AS DateTime), CAST(N'2018-12-21 07:26:27.937' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 9, N'Kết thúc kỳ thi', CAST(N'2018-12-21 07:26:33.073' AS DateTime), CAST(N'2018-12-21 07:26:33.073' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 10, N'&quot;Cao Nhân&quot;?', CAST(N'2018-12-21 07:26:38.087' AS DateTime), CAST(N'2018-12-21 07:26:38.087' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 11, N'Nhường ngươi 3 chiêu​', CAST(N'2018-12-21 07:26:42.890' AS DateTime), CAST(N'2018-12-21 07:26:42.890' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 12, N'Phồn Thần ba vạn vạn, Tinh Vương chỉ một người', CAST(N'2018-12-21 07:26:48.103' AS DateTime), CAST(N'2018-12-21 07:26:48.103' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 13, N'Vũ kĩ thân pháp', CAST(N'2018-12-21 07:26:52.903' AS DateTime), CAST(N'2018-12-21 07:26:52.903' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 14, N'Thánh thành và cửu trọng thiên. ', CAST(N'2018-12-21 07:26:58.550' AS DateTime), CAST(N'2018-12-21 07:26:58.550' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 15, N'Luyện Chế Thối Thể Dịch', CAST(N'2018-12-21 07:27:04.217' AS DateTime), CAST(N'2018-12-21 07:27:04.217' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 16, N'Thật hay Mơ. Full', CAST(N'2018-12-21 07:27:09.877' AS DateTime), CAST(N'2018-12-21 07:27:09.877' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 17, N'Nỗi đau xót xa', CAST(N'2018-12-21 07:27:15.513' AS DateTime), CAST(N'2018-12-21 07:27:15.513' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 18, N'Gánh ngũ nhạc, áp ngũ quỷ', CAST(N'2018-12-21 07:27:21.070' AS DateTime), CAST(N'2018-12-21 07:27:21.070' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 19, N'Mũi đao nhọn', CAST(N'2018-12-21 07:27:25.940' AS DateTime), CAST(N'2018-12-21 07:27:25.940' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 20, N'Vô cùng cấp bách', CAST(N'2018-12-21 07:27:30.940' AS DateTime), CAST(N'2018-12-21 07:27:30.940' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 21, N' Giáng xuống làm chi thứ', CAST(N'2018-12-21 07:27:35.993' AS DateTime), CAST(N'2018-12-21 07:27:35.993' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 22, N'Khen thưởng - ''xử phạt''', CAST(N'2018-12-21 07:27:41.190' AS DateTime), CAST(N'2018-12-21 07:27:41.190' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 23, N'Khen thưởng -', CAST(N'2018-12-21 07:27:46.413' AS DateTime), CAST(N'2018-12-21 07:27:46.413' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 24, N'Dạ Cách cung thiếu cung chủ', CAST(N'2018-12-21 07:27:51.450' AS DateTime), CAST(N'2018-12-21 07:27:51.450' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (32, 25, N'Khảo thí', CAST(N'2018-12-21 07:27:56.953' AS DateTime), CAST(N'2018-12-21 07:27:56.953' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 1, N'Hoàng lão tài gia yến', CAST(N'2018-12-21 07:25:51.227' AS DateTime), CAST(N'2018-12-21 07:25:51.227' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 2, N'Nhận Nhiệm Vụ', CAST(N'2018-12-21 07:25:57.120' AS DateTime), CAST(N'2018-12-21 07:25:57.120' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 3, N'Anh hùng xạ điêu', CAST(N'2018-12-21 07:26:02.860' AS DateTime), CAST(N'2018-12-21 07:26:02.860' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 4, N'Quyết đấu', CAST(N'2018-12-21 07:26:08.213' AS DateTime), CAST(N'2018-12-21 07:26:08.213' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 5, N'Nhiệm vụ khó hiểu', CAST(N'2018-12-21 07:26:13.297' AS DateTime), CAST(N'2018-12-21 07:26:13.297' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 7, N'Số mười lăm​', CAST(N'2018-12-21 07:26:22.810' AS DateTime), CAST(N'2018-12-21 07:26:22.810' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 8, N'Phong thái của bậc Đại đức', CAST(N'2018-12-21 07:26:28.103' AS DateTime), CAST(N'2018-12-21 07:26:28.103' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 9, N'Vào giáp viện', CAST(N'2018-12-21 07:26:33.283' AS DateTime), CAST(N'2018-12-21 07:26:33.283' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 10, N'Thân Pháp Đấu Kỹ, Quỷ Ảnh', CAST(N'2018-12-21 07:26:38.207' AS DateTime), CAST(N'2018-12-21 07:26:38.207' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 11, N'Hoa Khai Khoảnh Khắc​', CAST(N'2018-12-21 07:26:43.110' AS DateTime), CAST(N'2018-12-21 07:26:43.110' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 12, N'Phồn Thần ba vạn vạn, Tinh Vương chỉ một người (hạ)', CAST(N'2018-12-21 07:26:48.223' AS DateTime), CAST(N'2018-12-21 07:26:48.223' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 13, N'Dong binh đoàn vô danh', CAST(N'2018-12-21 07:26:53.020' AS DateTime), CAST(N'2018-12-21 07:26:53.020' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 14, N'Xuất hải. ', CAST(N'2018-12-21 07:26:58.680' AS DateTime), CAST(N'2018-12-21 07:26:58.680' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 15, N'Coi Ngựa Chết Thành Ngựa Sống Mà Chữa, Go!', CAST(N'2018-12-21 07:27:04.417' AS DateTime), CAST(N'2018-12-21 07:27:04.417' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 16, N'Tấn phong. Chiến sự. Nội tình. Full', CAST(N'2018-12-21 07:27:10.007' AS DateTime), CAST(N'2018-12-21 07:27:10.007' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 17, N'Lỗ Nhị phá bình cảnh', CAST(N'2018-12-21 07:27:15.787' AS DateTime), CAST(N'2018-12-21 07:27:15.787' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 18, N'Kinh sợ', CAST(N'2018-12-21 07:27:21.207' AS DateTime), CAST(N'2018-12-21 07:27:21.207' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 19, N'Đấu võ', CAST(N'2018-12-21 07:27:26.053' AS DateTime), CAST(N'2018-12-21 07:27:26.053' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 20, N'Đuổi giết', CAST(N'2018-12-21 07:27:31.157' AS DateTime), CAST(N'2018-12-21 07:27:31.157' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 21, N'Khắc tinh của Quan gia', CAST(N'2018-12-21 07:27:36.103' AS DateTime), CAST(N'2018-12-21 07:27:36.103' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 22, N'Nhiệm vụ mới', CAST(N'2018-12-21 07:27:41.327' AS DateTime), CAST(N'2018-12-21 07:27:41.327' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 23, N'Nhiệm vụ mới', CAST(N'2018-12-21 07:27:46.597' AS DateTime), CAST(N'2018-12-21 07:27:46.597' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 24, N'Lục Thi Y, ta sẽ chịu trách nhiệm!!!', CAST(N'2018-12-21 07:27:51.657' AS DateTime), CAST(N'2018-12-21 07:27:51.657' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (33, 25, N'Vượt qua khảo thí', CAST(N'2018-12-21 07:27:57.093' AS DateTime), CAST(N'2018-12-21 07:27:57.093' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 1, N'Nên ôm lấy nam nhân như vậy', CAST(N'2018-12-21 07:25:51.347' AS DateTime), CAST(N'2018-12-21 07:25:51.347' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 2, N'Rời Khỏi Học Viện', CAST(N'2018-12-21 07:25:57.283' AS DateTime), CAST(N'2018-12-21 07:25:57.283' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 3, N'Song hỷ lâm môn', CAST(N'2018-12-21 07:26:03.027' AS DateTime), CAST(N'2018-12-21 07:26:03.027' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 4, N'Trấn Áp', CAST(N'2018-12-21 07:26:08.320' AS DateTime), CAST(N'2018-12-21 07:26:08.320' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 5, N'Từng bước gian nan', CAST(N'2018-12-21 07:26:13.420' AS DateTime), CAST(N'2018-12-21 07:26:13.420' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 7, N'Thiên địa nguyên khí​', CAST(N'2018-12-21 07:26:22.937' AS DateTime), CAST(N'2018-12-21 07:26:22.937' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 8, N'Ý ', CAST(N'2018-12-21 07:26:28.227' AS DateTime), CAST(N'2018-12-21 07:26:28.227' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 9, N'Thác Ngọc Linh', CAST(N'2018-12-21 07:26:33.437' AS DateTime), CAST(N'2018-12-21 07:26:33.437' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 10, N'Thu Một Cái Thị Nữ Đấu Hoàng', CAST(N'2018-12-21 07:26:38.337' AS DateTime), CAST(N'2018-12-21 07:26:38.337' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 11, N'Cao thủ ẩn tàng​', CAST(N'2018-12-21 07:26:43.323' AS DateTime), CAST(N'2018-12-21 07:26:43.323' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 12, N'Ta tên Tô Trường An, đao là Mạc Thính Vũ', CAST(N'2018-12-21 07:26:48.350' AS DateTime), CAST(N'2018-12-21 07:26:48.350' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 13, N'Huyết mạch tiến hóa', CAST(N'2018-12-21 07:26:53.123' AS DateTime), CAST(N'2018-12-21 07:26:53.123' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 14, N'Khôi lỗi dẫn thần. ', CAST(N'2018-12-21 07:26:58.803' AS DateTime), CAST(N'2018-12-21 07:26:58.803' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 15, N'Chạy Băng Băng Dưới Tịch Dương, Ấy Là Thanh Xuân Đã Mất Của Tôi.', CAST(N'2018-12-21 07:27:04.620' AS DateTime), CAST(N'2018-12-21 07:27:04.620' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 16, N'Đầu Thai. Full', CAST(N'2018-12-21 07:27:10.153' AS DateTime), CAST(N'2018-12-21 07:27:10.153' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 17, N'Chó Gát ma thú', CAST(N'2018-12-21 07:27:15.903' AS DateTime), CAST(N'2018-12-21 07:27:15.903' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 18, N'Dãy núi Linh Diễm', CAST(N'2018-12-21 07:27:21.327' AS DateTime), CAST(N'2018-12-21 07:27:21.327' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 19, N'Chiến tử', CAST(N'2018-12-21 07:27:26.153' AS DateTime), CAST(N'2018-12-21 07:27:26.153' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 20, N'Gặp mặt', CAST(N'2018-12-21 07:27:31.270' AS DateTime), CAST(N'2018-12-21 07:27:31.270' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 21, N'Tranh đệ nhất', CAST(N'2018-12-21 07:27:36.213' AS DateTime), CAST(N'2018-12-21 07:27:36.213' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 22, N'Vây giết', CAST(N'2018-12-21 07:27:41.453' AS DateTime), CAST(N'2018-12-21 07:27:41.453' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 23, N'Vây giết', CAST(N'2018-12-21 07:27:46.740' AS DateTime), CAST(N'2018-12-21 07:27:46.740' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 24, N'Lam Anh mở ra', CAST(N'2018-12-21 07:27:51.783' AS DateTime), CAST(N'2018-12-21 07:27:51.783' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (34, 25, N'Oan gia ngõ hẹp', CAST(N'2018-12-21 07:27:57.277' AS DateTime), CAST(N'2018-12-21 07:27:57.277' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 1, N'Giáp xác tướng quân chuyển lên trên bàn', CAST(N'2018-12-21 07:25:51.500' AS DateTime), CAST(N'2018-12-21 07:25:51.500' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 2, N'Chạy Trốn - Nhẫn Trữ Vật', CAST(N'2018-12-21 07:25:57.437' AS DateTime), CAST(N'2018-12-21 07:25:57.437' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 3, N' Đồng nhan cự nhũ', CAST(N'2018-12-21 07:26:03.210' AS DateTime), CAST(N'2018-12-21 07:26:03.210' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 4, N'Trái tim cường giả', CAST(N'2018-12-21 07:26:08.480' AS DateTime), CAST(N'2018-12-21 07:26:08.480' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 5, N'Ngũ Trưởng Lão', CAST(N'2018-12-21 07:26:13.580' AS DateTime), CAST(N'2018-12-21 07:26:13.580' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 7, N'Tán công​', CAST(N'2018-12-21 07:26:23.057' AS DateTime), CAST(N'2018-12-21 07:26:23.057' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 8, N'Chân truyền', CAST(N'2018-12-21 07:26:28.347' AS DateTime), CAST(N'2018-12-21 07:26:28.347' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 9, N'Mở đệ tam mạch', CAST(N'2018-12-21 07:26:33.597' AS DateTime), CAST(N'2018-12-21 07:26:33.597' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 10, N'Vô Đề', CAST(N'2018-12-21 07:26:38.467' AS DateTime), CAST(N'2018-12-21 07:26:38.467' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 11, N'Giá Vụ Đằng Vân​', CAST(N'2018-12-21 07:26:43.437' AS DateTime), CAST(N'2018-12-21 07:26:43.437' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 12, N'Phá hỏng thanh danh người, như hại tính mạng ta ', CAST(N'2018-12-21 07:26:48.480' AS DateTime), CAST(N'2018-12-21 07:26:48.480' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 13, N'Xuất phát', CAST(N'2018-12-21 07:26:53.313' AS DateTime), CAST(N'2018-12-21 07:26:53.313' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 14, N'Hỗn độn tinh thiết. ', CAST(N'2018-12-21 07:26:58.920' AS DateTime), CAST(N'2018-12-21 07:26:58.920' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 15, N'Triều Vấn Đạo, Tịch Tử? Khả Hỉ!', CAST(N'2018-12-21 07:27:04.763' AS DateTime), CAST(N'2018-12-21 07:27:04.763' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 16, N'Lực lượng. Hỗn Nguyên. Full', CAST(N'2018-12-21 07:27:10.303' AS DateTime), CAST(N'2018-12-21 07:27:10.303' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 17, N'Giao dịch', CAST(N'2018-12-21 07:27:16.027' AS DateTime), CAST(N'2018-12-21 07:27:16.027' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 18, N'Nâng ruộng', CAST(N'2018-12-21 07:27:21.430' AS DateTime), CAST(N'2018-12-21 07:27:21.430' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 19, N'Mạnh mẽ đột phá', CAST(N'2018-12-21 07:27:26.273' AS DateTime), CAST(N'2018-12-21 07:27:26.273' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 20, N'Huyết chiến', CAST(N'2018-12-21 07:27:31.397' AS DateTime), CAST(N'2018-12-21 07:27:31.397' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 21, N'Quán quân', CAST(N'2018-12-21 07:27:36.333' AS DateTime), CAST(N'2018-12-21 07:27:36.333' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 22, N'', CAST(N'2018-12-21 07:27:41.617' AS DateTime), CAST(N'2018-12-21 07:27:41.617' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 23, N'', CAST(N'2018-12-21 07:27:46.880' AS DateTime), CAST(N'2018-12-21 07:27:46.880' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 24, N'Khống hồn quỷ trùng, biến dị Hoả Sư', CAST(N'2018-12-21 07:27:51.907' AS DateTime), CAST(N'2018-12-21 07:27:51.907' AS DateTime))
GO
INSERT [dbo].[Chapter] ([ChapterId], [StoryId], [Name], [WriterDate], [EditorDate]) VALUES (35, 25, N'Vũ Trụ Hỗn Độn', CAST(N'2018-12-21 07:27:57.403' AS DateTime), CAST(N'2018-12-21 07:27:57.403' AS DateTime))
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 1, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 2, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 3, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 4, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 5, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 6, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 7, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 8, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 9, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 10, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 11, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 12, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 13, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 14, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 15, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 16, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 17, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 18, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 19, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 20, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 21, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 22, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 23, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 24, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (30, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (31, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (32, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (33, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (34, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (35, 25, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (1, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (2, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (3, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (4, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (5, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (6, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (7, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (8, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (9, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (10, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (11, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (12, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (13, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (14, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (15, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (16, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (17, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (18, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (19, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (20, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (21, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (22, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (23, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (24, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (25, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (26, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (27, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (28, 26, NULL)
GO
INSERT [dbo].[Content] ([ContentId], [StoryId], [Content]) VALUES (29, 26, NULL)
GO
INSERT [dbo].[Status] ([StatusId], [Name]) VALUES (1, N'Đang cập nhật')
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (5, N'Khống Trùng Khống Thiên Hạ (Khống Trùng Khống Vận Mệnh)', NULL, CAST(N'2018-12-21 07:26:08.610' AS DateTime), CAST(N'2018-12-21 07:26:08.610' AS DateTime), N'https://webtruyen.com/public/images/khongtrungkhongthienhakhongtrungkhongvanmenhEfVTSvYsKW.jpg', N'Khống Trùng Khống Thiên Hạ (Khống Trùng Khống Vận Mệnh) - Đang tiến hành - huynhson<br><br>Giới thiệu <a href="https://webtruyen.com/tien-hiep/">truyện tiên hiệp</a> hấp dẫn này:<br><br>Rốt cuộc, đâu mới là con đường tu luyện để có thể đứng trên tất thảy, vô địch thiên hạ?<br><br>Nếu như có kẻ nói rằng: Vương đạo chính là quá trình kiếm tu? Khiển trùng chỉ dành cho những kẻ không có thực lực? Song tu chỉ là con đường tà đạo? <br><br>Vậy thì để ta cho ngươi thấy một chân trời mới qua tác phẩm này!<br class="kix-line-break"><br class="kix-line-break">Ngày tĩnh tay nắm thiên hạ, đêm say đầu gối mỹ nhân.<br class="kix-line-break"><br class="kix-line-break">Hệ thống tu luyện gồm có: Luyện khí (cấp 1), Trúc cơ (cấp 2), Kim đan (cấp 3), Nguyên anh (cấp 4),... Mỗi cấp còn chia ra Bính, Đinh, Ất, Giáp (Bính thấp nhất) áp dụng cho đan dược, phù, thiên tài địa bảo, bảo khí…<br><br>“Lại thất bại lần nữa, đây là lần thứ mấy rồi? Ông trời, tại sao ông lại bất công đến vậy?” Trần Duyên hét lên trút bỏ cơn tức giận.<br class="kix-line-break"><br class="kix-line-break">Thiên phú tu tiên quyết định bởi 2 thứ đầu tiên là kinh mạch, thứ 2 là đan điền. Kinh mạch như vòi nước linh khí lấy được càng nhiều phụ thuộc kinh mạch có lớn, dẻo dai hay không. Đan điền như hồ trữ nước đang điền lớn thì chứa được nhiều linh khí trong lúc sử dụng pháp quyết hay đột phá không dẫn đến tình trạng thiếu hụt chân khí.<br class="kix-line-break"><br class="kix-line-break">“Bản thân ta có kinh mạch lớn so với người khác gần như gấp đôi mà đan điền thì lại quá nhỏ tích trữ chân khí không đủ. Thân là luyện khí tầng 3 mà Khống Vật Quyết nho nhỏ của luyện khí tầng 1 mà không thi triển được.”<br><br>Rốt cuộc hắn phải làm sao?!<br><br>', 1, 1, 56551)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (6, N'Long Chi Đế Tu', NULL, CAST(N'2018-12-21 07:26:13.747' AS DateTime), CAST(N'2018-12-21 07:26:13.747' AS DateTime), N'https://webtruyen.com/public/images/longchidetuXBPqjRu6aX.jpg', N'Long Chi Đế Tu - Đang tiến hành - Cua Kì Cục Cục<br><br>Giới thiệu <a href="https://webtruyen.com/tien-hiep/">truyện tiên hiệp</a> đặc sắc này:<br><br>Trên Vạn Thiên đại lục, công pháp, ma kĩ, pháp quyết được chia làm Nhân, Huyền, Địa, Thiên phẩm nhân phẩm là nhiều nhất, hiếm nhất là Thiên phẩm đa số Thiên phẩm công pháp được truyền từ thời kỳ thượng cổ, tuy nhiên ngàn năm trước trên đại lục lại xuất hiện một nhân tài kiệt xuất, đánh bại tu sĩ khắp nơi, tranh đoạt vô số thiên tài, địa bảo tự mình sáng lập nên một bộ Thiên Phẩm công pháp lưu danh muôn đời, người này nghe nói thân thế bí ẩn, đến giờ cũng không ai biết vị đại nhân vật kia xuất thân từ sơn môn nào, người đời đều gọi là Thiên Đế.<br><br>Câu chuyện bắt đầu khi một thiếu niên có cơ hội được xuyên không về dị giới cũng trải qua một cuộc sống giản dị nơi này giữa giai đoạn rối ren, gặp được một cái hệ thống, thấy được thân phận của mình ở nơi này. <br><br>Cấp độ: Nhập linh cảnh (Đại viên mãn)<br class="kix-line-break"><br class="kix-line-break">Linh kĩ: Kế thừa (khi tiêu diệt một tu si, linh sĩ, dị thú có thiên phú đặc thù, chủ nhân có thể chọn kế thừa hoặc quy đổi sang ling nguyên)+ Do thám.<br class="kix-line-break"><br class="kix-line-break">Ma kĩ: Dạ hành(tầng 1 đại viên mãn) + Vương Long hóa thân(sơ giai).<br class="kix-line-break"><br class="kix-line-break">Công pháp luyện thể: Đế lôi huyết thú (thượng phẩm)(tầng 1 đại viên mãn).<br class="kix-line-break"><br class="kix-line-break">“Lần đầu đăng nhập hệ thống nhận được 500 linh nguyên, một lần dùng thử một chức năng có giá dưới 2000 linh nguyên, sử dụng huấn luyện trường miễn phí một ngày”.<br><br>Nhưng cuộc sống vốn không như mong muốn, hắn lại bị cuốn vào các cuộc đấu tranh, người thân bị uy hiếp. Trước hoàn cảnh đó, hắn sẽ chọn tranh đấu để quật cường vượt lên tất cả hay chấp nhận cúi đầu trước kẻ khác để có được cuộc sống bình thường cả đời?<br><br>', 1, 1, 24754)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (7, N'Đại La Thiên Tôn 2: Vĩnh Hằng Chi Mộng', NULL, CAST(N'2018-12-21 07:26:18.150' AS DateTime), CAST(N'2018-12-21 07:26:18.150' AS DateTime), N'https://webtruyen.com/public/images/dailathienton2vinhhangchimongYuUxmWv5UI.jpg', N'Trong <a href="https://webtruyen.com/tien-hiep/">truyện tiên hiệp hay nhất</a> mang tựa đề <a href="https://webtruyen.com/dai-la-thien-ton-2-vinh-hang-chi-mong/">Đại La Thiên Tôn 2: Vĩnh Hằng Chi Mộng</a>, hắn là một kẻ giả dối, đừng tưởng ngươi có thể trở thành bằng hữu tâm giao của hắn, hắn chỉ đang lợi dụng ngươi thôi. <br><br>Hắn lừa bằng hữu, hắn lừa những người thân thuộc, hắn lừa cả thiên hạ <a href="https://webtruyen.com/cuu-chau-dai-luc/">cửu châu đại lục</a>, thậm chí... hắn lừa chính cả bản thân hắn. <br><br>Phân chia: Linh Hậu (Phàm tiên, Phù tiên, Địa tiên), Linh Tiên (Thiên
tiên, Linh tiên, Chân tiên, Huyền tiên, Kim tiên), Chân Tiên (Đại la
huyền tiên, Đại la kim tiên, La thiên thượng tiên, Cửu thiên huyền
tiên), Thượng Tiên (Tiên vương, Tiên hoàng, Tiên quân, Tiên đế), Thượng
tôn tam cảnh (Nhân tôn, Địa tôn, Thiên tôn<br><br>Mời bạn đón <a href="https://webtruyen.com/">đọc truyện</a> từ tác giả Gã Khờ Mộng Mơ.', 1, 1, 459415)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (8, N'Tử Dương', NULL, CAST(N'2018-12-21 07:26:23.193' AS DateTime), CAST(N'2018-12-21 07:26:23.193' AS DateTime), N'https://webtruyen.com/public/images/tuduongWrRNtZGumw.jpg', N'Đừng bỏ lỡ truyện <a href="https://webtruyen.com/tu-duong/">Tử Dương</a> là siêu phẩm thứ hai của lão Phong Ngự Cửu Thu sau <a href="https://webtruyen.com/tan-bao/">Tàn bạo</a>. Truyện đã được
xuất bản thành sách bên TQ hồi T8/2016, có thể thấy được độ hay của nó.<br><br>Nói truyện là <a href="https://webtruyen.com/tien-hiep/">Tiên hiệp hay</a> cũng được, <a href="https://webtruyen.com/lich-su/">Lịch sử</a> quân sự cũng có, tình cảm
cũng có luôn :) truyện ông Phong Ngự có vài đoạn hơi bi kịch tí nhưng
kết thường có hậu các lão yên tâm :)<br><br>P/s: đây là bộ <a href="https://webtruyen.com/">truyện hot</a> đầu tiên mình dịch, khó khăn muôn vàn mà mình lại dịch
chậm kinh khủng -_- đạo hữu nào có lòng hảo tâm dịch bộ này cùng mình,
mình xin chân thành cảm tạ.', 1, 1, 633489)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (9, N'Nguyên Tôn', NULL, CAST(N'2018-12-21 07:26:28.500' AS DateTime), CAST(N'2018-12-21 07:26:28.500' AS DateTime), N'https://webtruyen.com/public/images/nguyentonyCJ6Lc8f7m.jpg', N'Trong <a href="https://webtruyen.com/tien-hiep/">truyện tiên hiệp hay nhất</a> từ tác giả Thiên Tằm Thổ Đậu có tựa đề <a href="https://webtruyen.com/nguyen-ton/">Nguyên Tôn</a>, ta có một ngụm Huyền Hoàng Khí, có thể nuốt thiên địa nhật nguyệt tinh.<br><br>Lúc đó đường về, đã là một con đường vận mệnh treo ngược.<br><br>Ngày xưa vinh hoa, như thay đổi khôn lường, một giấc ác mộng dài.<br><br>Thiếu niên chấp bút, Long Xà bay động.<br><br>Là vì một vòng quang mang bổ ra dáng vẻ nặng nề chi loạn thế, vấn đỉnh điện ngọc thương khung.<br><br>Đường báo thù, cùng ta đồng hành.<br><br>Một ngụm Huyền Hoàng chân khí nhất định nuốt thiên địa nhật nguyệt tinh thần, hùng thị cỏ cây thương sinh <a href="https://webtruyen.com/huyen-huyen/">huyền huyễn</a>.<br><br>Thiết họa tịch chiếu, vụ ải ngân câu, bút tẩu du long xông Cửu Châu.<br><br>Hoành tư thiên hạ, mực vẩy thanh sơn, thôn tính biển hồ nạp trăm sông. Mời bạn <a href="https://webtruyen.com/">đọc truyện</a> và thưởng thức cùng tác giả.', 1, 1, 3280597)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (10, N'Dị Giới Ký', NULL, CAST(N'2018-12-21 07:26:33.733' AS DateTime), CAST(N'2018-12-21 07:26:33.733' AS DateTime), N'https://webtruyen.com/public/images/digioiky2e9DJvwFwJ.jpg', N'<a href="https://webtruyen.com/di-gioi-ky/">Dị Giới Ký</a> - Đang tiến hành - VoLaiSacQuy<br><br>Giới thiệu <a href="https://webtruyen.com/di-gioi/">truyện dị giới</a> hấp dẫn này:<br><br>“Ta sẽ sớm chết sao? Hahaha, kẻ xấu du hoạ nghìn năm. Ta xấu xa thế này thì bất tử cmnr.”<br><br>Vô Tà lớn tiếng cười, câu nói này khiến trong mọi hoàn cảnh hắn đều vẫn giữ cái đầu lạnh mà tìm phương pháp tránh đi. Nhưng đang cười thì lão thiên không biết do vô tình hay cố mà thân ái tặng hắn một đạo thiên lôi thẳng vào đầu như thể lập tức chứng minh hắn là đang chém gió.<br class="kix-line-break"><br class="kix-line-break">“M* k***, lão tử chết yểu thế này chắc có lẽ lão tử là người tốt đây.”<br><br>Một suy nghĩ lóe lên trong đầu Vô Tà rồi hắn mất luôn ý thức, trong mọi hoàn cảnh Vô Tà đều có suy nghĩ tích cực.<br><br>“Đây rốt cục là thế giới nào, quen lắm sao nghĩ mãi không ra được.” <br><br>Thiếu niên lắc lắc đầu nói, thiếu niên là Vô Tà sau khi bị ngọn thiên lôi đánh xuống liền tại xuất hiện ở thế giới này. Mới đầu cơ bản thì hắn nghĩ là mơ cơ nhưng rốt cục sau mấy năm hắn đành chấp nhận sự thật này. Vô Tà rất muốn vùng vẫy trong thế giới này một lần vì qua điển tịch thì cả Gia Mã đế quốc cũng chỉ tương đương với Singapore ở địa cầu nếu xét hệ quy chiếu là thế giới này, Đấu Khí đại lục.<br><br>Thật là quá mức éo le đi? Tưởng rằng một khi đã bị thiên lôi đánh cho mất mạng thì sẽ chẳng còn gì. Ai ngờ, hắn cứ như vậy oanh oanh liệt liệt rơi vào một âm mưu to lớn, bị ép phải xuyên qua lần lượt từng loại thế giới một.<br><br>Map đầu tiên: Đấu Phá Thương Khung...<br><br>', 1, 1, 61395)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (11, N'Tối Cường Thần Thoại Đế Hoàng', NULL, CAST(N'2018-12-21 07:26:38.623' AS DateTime), CAST(N'2018-12-21 07:26:38.623' AS DateTime), N'https://webtruyen.com/public/images/toicuongthanthoaidehoang4eNiukSZQU.jpg', N'Nhân vật chính trong truyện <a href="https://webtruyen.com/toi-cuong-than-thoai-de-hoang/">Tối Cường Thần Thoại Đế Hoàng</a> của tác giả Nhâm Ngã Tiếu là Tần Quân thế mà lại <a href="https://webtruyen.com/xuyen-khong/">xuyên không</a>, đen đủi là hắn hóa thành một hoàng tử
bị hắt hủi, trong cơn tuyệt vọng thì lão thiên cho hắn một món quà cực
lớn - Thần Thoại Hệ Thống!<br><br>Nắm giữ trong tay khả năng triệu hoán bất cứ nhân vật Thần Thoại nào!<br><br>Tề Thiên Đại Thánh Tôn Ngộ Không, Nhất Côn tách thiên địa!<br><br>Thiên Lý Nhãn Thuận Phong Nhĩ, thiên nhãn thấu hư vô!<br><br>Như Lai Phật Tổ Chưởng Trung Phật Quốc, vô nhân năng đào!<br><br>Họa quốc ương dân Tô Đát Kỷ, Tu Hoa bế nguyệt Hằng Nga Tiên Tử, hỏa bạo Thiết Phiến Công Chúa, Tam Thánh Mẫu...<br><br>Tại Thần Ma Thế Giới, trở thành Thần Hoàng! <a href="https://webtruyen.com/">Truyện hay</a> còn những diễn biến khác ra sao, mời bạn theo dõi tác phẩm <a href="https://webtruyen.com/tien-hiep/">tiên hiệp hay nhất</a> ra mắt trong tháng nhé.', 1, 1, 2762141)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (12, N'Thư Kiếm Trường An', NULL, CAST(N'2018-12-21 07:26:43.570' AS DateTime), CAST(N'2018-12-21 07:26:43.570' AS DateTime), N'https://webtruyen.com/public/images/thukiemtruonganv8iqFCg9iS.jpg', N'Trong tác phẩm hay mang tên <a href="https://webtruyen.com/thu-kiem-truong-an/">Thư Kiếm Trường An</a> của
tác giả Hắn Từng Là Thiếu Niên mang đậm nét <a href="https://webtruyen.com/tien-hiep/">tiên hiệp hay</a>, nói về hai năm trước,
Mạc Thính Vũ mang theo một cây đao rời khỏi Trường An, một mình đi về phương Bắc.
Hai năm sau, một thiếu niên tên Tô Trường An mang theo một cây đao tới Trường
An.<br><br>Câu chuyện <a href="https://webtruyen.com/kiem-hiep/">kiếm hiệp</a> của chúng ta, bắt đầu từ lúc
này.<br><br>Trường An, tháng mười hai, mùa đông sắp hết.<br><br>Mưa phùn rơi xuống thành Trường An.<br><br>Một tin tức từ trong thành Trường An truyền ra, từ quan lớn quyền quý cho đến
dân chúng bình thường trong chợ.<br><br>- Mạc Thính Vũ đi Bắc Địa rồi.<br><br>Đúng vậy, Mạc Thính Vũ lên đường, không hề nói cho bất kỳ người nào, cũng không
mang theo bất cứ vật gì.<br><br>Một mình hắn đi Bắc Địa, chỉ mang theo thanh đao mười năm chưa ra khỏi vỏ.<br><br>Đây là <a href="https://webtruyen.com/">truyện hay</a> cần phải truy từ mười năm trước.<br><br>', 1, 1, 1043260)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (13, N'Cuồng Huyết Thiên Ma', NULL, CAST(N'2018-12-21 07:26:48.620' AS DateTime), CAST(N'2018-12-21 07:26:48.620' AS DateTime), N'https://webtruyen.com/public/images/cuonghuyetthienmagJDiZjs58d.jpg', N'Cuồng huyết Thiên Ma - Đang tiến hành - Hư Không<br><br>Giới thiệu <a href="https://webtruyen.com/huyen-huyen/">truyện huyền huyễn</a> hấp dẫn này:<br><br>Hắn là một sát thủ nổi tiếng ở thế kỷ hai mươi mốt, công
danh tiền tài rộng mở, cuộc sống đang rất ổn định, đang có hai dị năng kì lạ,
nhưng lại bất ngờ tử vong do bị gài bẫy. Quả nhiên, chẳng ai nghĩ hắn có thể
xuyên không tới một thế giới hoàn toàn khác, nhập vào một kẻ tầm thường có tên
giống hệt hắn. Đáng buồn thay, cơ thể mà hắn xuyên vào ấn định hắn là phế nhân,
không thể gánh vác việc nặng nhọc. Gia thế, thân phận của chủ nhân cái xác này
cũng là một bể đau khổ oan khuất không thể chịu nổi. Là con của một nàng hầu, lại
là con hoang của gia tộc, hắn phải sống chui lủi ở một căn nhà của gia nhân.
Ngoài ra, vị ca ca của hắn cũng chẳng ưa gì hắn, nên càng hành hạ làm đau đớn
thân xác này.<br><br>Đáng mừng thay, sau khi xuyên không, hắn sở hữu một hệ thống
tu luyện tối cường, trong phút chốc biến đổi chóng mặt, từ một người thấp bé bỗng
thành một chàng trai cao to mạnh mẽ, đồng thời có thêm sức mạnh kỳ lạ. Dù rằng
hệ thống đó rất giống game, nhưng không thể phủ nhận là chúng thực sự mạnh mẽ
và vô cùng kỳ diệu. Tuy nhiên, chuyện gì cũng có cái giá của nó, vậy hắn sẽ trả
giá cái gì?<br><br>Với khả năng điêu luyện của một sát thủ nổi tiếng, hệ thống
tu luyện nghịch thiên đảo địa cùng với tri thức của… 200 bộ tiểu thuyết xuyên
không mà hắn đã từng đọc, hắn sẽ xoay sở ra sao ở một thế giới cường giả vi tôn
đầy xa lạ này...<br><br>', 1, 1, 271505)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (14, N'Thần Mộ Chi Huyết Đế', NULL, CAST(N'2018-12-21 07:26:53.830' AS DateTime), CAST(N'2018-12-21 07:26:53.830' AS DateTime), N'https://webtruyen.com/public/images/thanmochihuyetdeVlZupLKG5N.jpg', N'Phan Vân là nhân vật chính trong <a href="https://webtruyen.com/tien-hiep/">truyện tiên hiệp hay</a> trong tháng mang tựa đề <a href="https://webtruyen.com/than-mo-chi-huyet-de/">Thần Mộ Chi Huyết Đế</a>, là một sinh viên trường đại học Bách Khoa của nước Việt Nam trong một lần đi mua đồ, ngoài ý muốn bị tia sẽ đánh trúng xuyên qua thế giới có tên là Tiên Ảo Đại Lục.<br><br>Ở đây hắn trở thành thiếu gia của gia tộc Đông Phương - Đông Phương Trường Minh.<br><br>Hắn vốn tưởng cuộc đời mình sẽ bình phàm trôi qua như bao người thường
khác. Nhưng lão thiên đã cho hắn một cơ hội trở thành cường giả của thế
giới này, hắn nhất định không để vụt mất.<br><br>Với những diễn biến đã biết trong cuốn tiểu thuyết Thần Mộ, Trường Minh sẽ làm gì để thay đổi số phận bi thảm của chính mình?<br><br>Mời các bạn <a href="https://webtruyen.com/">đọc truyện</a> và theo dõi bước chân trở thành cường giả đỉnh thiên lập địa <a href="https://webtruyen.com/di-gioi/">dị giới</a> của Đông Phương Trường Minh', 1, 1, 257627)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (15, N'Tu Chân Nói Chuyện Phiếm Quần', NULL, CAST(N'2018-12-21 07:26:59.120' AS DateTime), CAST(N'2018-12-21 07:26:59.120' AS DateTime), N'https://webtruyen.com/public/images/tuchannoichuyenphiemquanP2ZVAZSI3D.jpg', N'Bộ truyện <a href="https://webtruyen.com/tu-chan-noi-chuyen-phiem-quan/">Tu Chân Nói Chuyện Phiếm Quần</a> này rất đặc biệt, đan xen tu chân vào giữa thế giới <a href="https://webtruyen.com/do-thi/">đô thị</a> hiện
đại mà rất hay, hợp lý. Rất thích hợp cho bạn nào muốn đổi gió. Tình
tiết cực hài, cực sáng tạo, đầy bất ngờ (bạn chẳng thể bắt nhịp theo não tác giả được), nói chung đọc bộ này thì cứ chuẩn bị tình thần cười và
cười thôi :v.
Truyện xoay quanh một cái Cửu Châu Nhất Hào quần (như 1 group chát
online), trong đó toàn là những tu chân giả có thể di sơn đảo hải,
trường sinh ngàn năm các thể loại. Tình cờ một thanh niên đầy thẻ người
tốt Tống Thư Hàng (main của chúng ta) được mời vào “quần” và thế là con
đường tu chân gian nan đầy “đau bi” của main mở ra từ đó.<br><br>Đặc sắc của truyện <a href="https://webtruyen.com/tien-hiep/">tiệp hiệp hay</a> này là xây dựng 1 dàn nhân vật toàn là hàng “cực
phẩm”, đặc biệt là các thánh trong Cửu Châu quần, không ai lẫn với ai
được, có thể nói main là người bình thường nhất trong truyện rồi :v.<br><br>Anh Hàng nhà ta tuy được buff, cheat, có các tiền bối bảo kê kéo map
tận tình nhưng cũng gặp phải nhiều tình cảnh rất nhọ, chẳng bao giờ mọi
chuyện diễn ra theo ý, phấn đấu thành đạo sĩ lại toàn bị bắn qua tạo
hình hòa thượng, bị dìm đủ kiểu từ làm rễ hành đến giả gái bất quá ta
rất thích :v. Mà nhọ nhất là phải nói đến các nhân vật phản diện. <a href="https://webtruyen.com/">Đọc
truyện</a> này thì thấy các nhân vật phản diện rất đáng thương, thường bị
ngược một cách rất uất ức =)).<br><br>Nhược điểm duy nhất là main up level khá chậm so với số chương (so về thời gian tăng cấp thì rất nhanh) do truyện tập trung vào các tình
tiết, phó bản, event, diễn hài quá nhiều :v. Nhưng đảm bảo bạn sẽ không
thấy chán vì tình tiết liên tục đổi mới mà rất hài.<br><br>Bạn sẽ bắt đầu “hoài nghi nhân sinh” khi chứng kiến các tình cảnh
như: luyện đan bằng nồi lẩu, học bí kíp qua usb, nạp điện cho pháp khí,
hay lái trực thăng bay ra vũ trụ, đua xe ủi trên biển v…v… kèm theo đó
là các biểu cảm “mặt mộng bức”, “khóe miệng co giật”, “lá gan đau nhức”, “thế giới quan tan vỡ” “triệt để tuyệt vọng” … các thể loại. :v<br><br>Tóm lại là đọc rồi bạn sẽ nghiện với văn phong dí dóm, sáng tạo, các tình huống bất ngờ không theo một sáo lộ nào của tác giả.<br><br>1 câu nói kinh điển trong truyện: “Nằm thảo thảo thảo thảo thảo thảo! :v”<br><br>Các bạn cùng thưởng thức Tu chân nói chuyện phiếm quần<br><br>', 1, 1, 1698441)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (16, N'Thần Thoại Tái Sinh', NULL, CAST(N'2018-12-21 07:27:04.893' AS DateTime), CAST(N'2018-12-21 07:27:04.893' AS DateTime), N'https://webtruyen.com/public/images/thanthoaitaisinhXatEZRv6Mx.jpg', N'<a href="https://webtruyen.com/than-thoai-tai-sinh/">Thần Thoại Tái Sinh</a> - Đang tiến hành - hangvu999<br><br>Giới thiệu <a href="https://webtruyen.com/tien-hiep/">truyện tiên hiệp</a> hấp dẫn này:<br class="kix-line-break"><br class="kix-line-break">“Khí linh à, khi ta tỉnh dậy đừng nhắc quá khứ vội, hãy trả kí ức lúc ta 20 tuổi, chỉ dẫn ta rồi để tự ta trải nghiệm. Ta quá buồn tẻ tịch mịch rồi.”<br class="kix-line-break"><br class="kix-line-break">“Vâng chủ nhân.”<br><br>Dương Khiết 20 tuổi cảm nhận được một luồng ký ức tràn vào não mình. Nghe lời hệ thống, hắn liền nhắm mặt lại, sau đó thả lỏng mình. Dịch chuyển vào bên trong không gian hắn ngơ ngác xem xung quanh chỉ có đất và cỏ mênh mông.<br class="kix-line-break"><br class="kix-line-break">“Nơi này là không gian độc lập do người tạo ra. Ta là ý thức đc người tôi luyện tại U Minh giới. Hai ta là một, khi ngài chết thì ta cũng chết, không ai có thể vào đây nếu như ngài không muốn. Có vài việc ta hướng dẫn cho ngài nắm "<br class="kix-line-break"><br class="kix-line-break">"Việc thứ nhất là thời gian trong đây nhanh gấp 100 triệu lần so với bên ngoài, và tốc độ tăng lên gấp đôi khi người đạt 1 cảnh giới nhưng không tác động lên vật sống chỉ tác động lên cây mà thôi. Lợi dụng việc này trồng cây sẽ nhanh lớn và không chết chỉ dừng lại ở đỉnh phong sinh trưởng, một giống cây tối đa chỉ mười cây. Việc thứ hai là ta có thể phân tích nhờ quy tắc thoi diễn sự vật, kết hợp, kiến thức bất cứ thứ gì ngài hỏi."<br class="kix-line-break"><br class="kix-line-break">“Việc cuối cùng là ngài có thể trốn trong này khi gặp cường địch. Điều này quan trọng nhất. Ngài ngủm là ta xong đời. Ta sẽ canh chừng người."<br class="kix-line-break"><br class="kix-line-break">“Ta hiểu rồi. Giờ làm gì ta?”<br class="kix-line-break"><br class="kix-line-break">“Làm giàu là bước khởi điểm khiến vạn sự dễ dàng."<br><br><br class="kix-line-break">Con đường tu chân võ đạo của hắn liền từ đó mà bắt đầu.<br><br>', 1, 1, 55750)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (17, N'Ngạo Kiếm Vô Song', NULL, CAST(N'2018-12-21 07:27:10.470' AS DateTime), CAST(N'2018-12-21 07:27:10.470' AS DateTime), N'https://webtruyen.com/public/images/ngaokiemvosongpzheAwWwbQ.jpg', N'Thiên Phong trong <a href="https://webtruyen.com/tien-hiep/">truyện tiên hiệp hot</a> mang tên <a href="https://webtruyen.com/ngao-kiem-vo-song/">Ngạo Kiếm Vô Song</a> là một game thủ sống tách biệt với mọi người, một ngày chàng chết vì cưu người mình yêu. Không cam tâm với số
phận mình, sau khi chết chàng đã chuyển thế nhập vàornThiên
Bảo người còn lại duy nhất của Thanh Hư Phái bị diệt vong.<br><br>rnVượt qua bao khó khăn giản khổ để vượt lên, với tài trí tuyệt
vớirncùng tính cách vui vẻ chàng đã có thật nhiều người bạn
thân cùngrntri kỉ. Khi Thiên Bảo bước lên đỉnh cao, chàng mới
biết được ngoài thếrngiới này còn vô vàn thế giới khác nữa.
Một lòng tu luyện nhằm phá vỡ ranh giới <a href="https://webtruyen.com/vong-du/">võng du</a> trở về thế giớirncũ đón người mình yêu. Nhưng Thánh chiến diệt thế lại đến Thiên
Bảorncung các đồng đạo đứng lên chống lại, với trí tuệ của
một game thủrnvà thực lực đỉnh phong Thiên Bảo dựa trên các kĩ năng trong game đểrnđưa chúng vào hiện thực tạo nên một giai
thoại vang danh thiên cổ. <br><br>- Không được khóc <br><br>- Hắc Liên Yêu Nữ <br><br>- Thánh khí. <br><br>- Đại chiến<br><br>Mời bạn đón <a href="https://webtruyen.com/">đọc truyện hay</a> từ tác giả Nữ Ma Đạo.', 1, 1, 100679)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (18, N'Phàm Nhân Tiên Giới Thiên (Pntt 2)', NULL, CAST(N'2018-12-21 07:27:16.150' AS DateTime), CAST(N'2018-12-21 07:27:16.150' AS DateTime), N'https://webtruyen.com/public/images/phamnhantiengioithienpntt2ej33NknGfK.jpg', N'Sau thành công của những siêu phẩm <a href="https://webtruyen.com/tien-hiep/">tiên hiệp hay</a>, tác giả Vong Ngữ lại tiếp tục cho ra đời <a href="https://webtruyen.com/pham-nhan-tien-gioi-thien-pntt-2/">Phàm Nhân Tiên Giới Thiên (Pntt 2)</a>, hứa hẹn cũng tạo nên cơn sốt không kém cạnh những "đàn anh" trước đó.<br><br><a href="https://webtruyen.com/pham-nhan-tu-tien/">Phàm nhân tu tiên</a>, phong vân tái khởi<br><br>Xuyên qua không gian và thời gian, luân hồi nghịch chuyển<br><br>Kim Tiên Thái Ất, Đại La Đạo Tổ<br><br>Tam thiên đại đạo, pháp tắc chí tôn.<br><br>《 Phàm Nhân Tu Tiên Truyện 》 Tiên Giới Thiên là tích xưa về một Hàn
Lập khuynh đảo Tiên Giới, một tiểu tử người phàm tu tiên đến cảnh giới
Bất Diệt trong truyền thuyết. Mời bạn cùng theo dõi <a href="https://webtruyen.com/">truyện hot</a> trong tháng này nhé.<br><br>', 1, 1, 2602664)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (19, N'Đan Phù Chí Tôn', NULL, CAST(N'2018-12-21 07:27:21.550' AS DateTime), CAST(N'2018-12-21 07:27:21.550' AS DateTime), N'https://webtruyen.com/public/images/danphuchitonjiI1VkWPef.jpg', N'Đan Phù Chí Tôn - Đang tiến hành - Bảo Hào<br><br>Giới thiệu <a href="https://webtruyen.com/tien-hiep/">truyện tiên hiệp</a> đặc sắc này: <br class="kix-line-break"><br class="kix-line-break">Chỉ một viên đan, liền có thể khai vạn thế tiên đồ. Chỉ một tấm phù, đã có thể trấn cổ kim vô địch. <br class="kix-line-break"><br class="kix-line-break">Trên khắp Tứ giới rộng lớn, sự xuất hiện của tiên, ma, quỷ, nhân quả thật vô cùng hào nhoáng, khắc họa sự rộng lớn của nơi đây. Chân vực tranh bá, Nho, Đạo, Phật, Huyền tứ gia cùng diễn nghĩa. Hãy cùng xem xem liệu Bắc Thần sẽ dẫn lĩnh Huyền Môn chế phách chân vực bằng cách nào<br><br>Trích đoạn:<br><br>Ba viên đan hoàn màu vàng óng đang dần dần ngưng tụ, đan hương ngào ngạt, lan tràn cả tòa mật thất. Đã đến thời điểm ngưng đan then chốt, Bắc Thần ngồi ngăn ngắn bên cạnh đan lô, trên trán túa mồ hôi, linh lực trong cơ thể đã tiêu hao quá nửa.<br class="kix-line-break"><br class="kix-line-break">“Tiếp theo chính là thời điểm ngưng đan mấu chốt, tuyệt đối không thể lại ra phế đan, nếu không hai năm vừa qua ta quá lỗ vốn rồi! Ba viên là không thể, liều một phen, luyện hai viên đi.”<br class="kix-line-break"><br class="kix-line-break">Đã định chủ ý, thần sắc Bắc Thần nghiêm lại, đan quyết thúc dục, một đan hoàn bên trong lò đan nát vụn, hóa thành dược lực tinh thuần tiêu tan. Tuy còn sót lại hai viên đan hoàn, nhưng sắc mặt Bắc Thần càng nghiêm nghị hơn, tâm thần tập trung cao độ, linh lực trong cơ thể điên cuồng tuôn ra theo đan quyết.<br class="kix-line-break"><br class="kix-line-break">Thành đan chính vào lần này!<br class="kix-line-break"><br class="kix-line-break">Hai viên đan hoàn không ngừng hút linh lực Bắc Thần truyền vào. Nửa khắc đồng hồ sau, trong lò luyện đan hình thành hai vòng xoáy linh lực. Linh lực tinh thuần vào lô, giống như nước sôi dội tuyết, lưu quang bay bay, đan dược cô đọng, hai viên linh đan đã luyện thành côngcông<br><br>', 1, 1, 78924)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (20, N'Linh Vực', NULL, CAST(N'2018-12-21 07:27:26.393' AS DateTime), CAST(N'2018-12-21 07:27:26.393' AS DateTime), N'https://webtruyen.com/public/images/linhvucGhklYnDKsX.jpg', N'Thế giới ảo huyền mênh mông vô định, giữa vạn vật luôn biến đổi, ở đây giữa là thực hay là mơ, là ảo ảnh vô cùng hay sống động. Đó chính là thế giới trong truyện <a href="https://webtruyen.com/linh-vuc/">Linh Vực</a>, một truyện đặc sắc được giới thiệu với bạn đọc trên trang đọc truyện online.<br><br>Trong linh vực mênh mông vô bờ có hải dương vô ngần vô tận cùng rất nhiều đại lục, có đủ loại sinh linh chủng tộc sống trong đó. Bọn họ đang không ngừng đột phá bản thân, vĩnh viễn truy tìm huyền diệu cuối cùng trong trời đất.
Ở trong đó, đẳng cấp cùng các thế lực võ giả như bao trùm mọi hang cùng ngõ hẻm!
Ở trong đó, thế lực cấp Thanh Thạch chỉ biết dựa vào thế lực khác mà tồn tại, bị chà đạp lên danh dự đủ kiểu. <br><br>Những thế lực xuất hiện trong <a href="https://webtruyen.com/">truyện</a> được sắp xếp với nhiều đắng cấp, đứng đầu là cấp Hoàng Kim, chẳng những có được võ giả mạnh nhất trong trời đất, linh khí thần kỳ nhất, mỏ quặng giàu có và nhiều nhất, cấm địa bí cảnh huyền diệu nhất mà còn thống lĩnh cả các thế lực cấp Bạch Ngân, Xích Đồng, Hắc Thiết, Thanh Thạch.
Chỉ cần có một lệnh ban xuống là đã có thể làm trời đất biến đổi, máu chảy thành sông làm hàng tỉ sinh linh hóa thành hư vô. Mà nhân vật chính Tần Liệt lại bị phong ấn mất ký ức mười năm, bị ông nội gửi nuôi ở một gia tộc thế lực cấp Thanh Thạch không thể bình thường hơn. Liệu cậu có thể vượt qua được những khó khăn, có thể đạt được mục đích cuối cùng không cùng theo dõi <a href="https://webtruyen.com/tien-hiep/">truyện tiên hiệp</a> đặc sắc này nhé !!!', 1, 1, 8006156)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (21, N'Vĩnh Hằng Chí Tôn', NULL, CAST(N'2018-12-21 07:27:31.603' AS DateTime), CAST(N'2018-12-21 07:27:31.603' AS DateTime), N'https://webtruyen.com/public/images/vinhhangchitonAWLATdAXUb.jpg', N'<a href="https://webtruyen.com/vinh-hang-chi-ton/">Vĩnh Hằng Chí Tôn</a>, Võ đạo đỉnh phong, di sơn đảo hải,
truy tinh nã nguyệt, nghịch loạn thời không!<br><br><a href="https://webtruyen.com/kiem-hiep/">Kiếm hiệp</a> cực cảnh, nhất kiếm thành đạo, nhất kiếm thông thần, nhất kiếm phá vạn
pháp!<br><br>Thiếu niên Lý Phù Trần, ngẫu nhiên đạt được Kim Sắc Tiểu Phù, Linh hồn không ngừng
tiến hóa. Ở thế giới <a href="https://webtruyen.com/tien-hiep/">tiên hiệp</a> thiên tài như mưa, cường giả như mây, dùng kiếm trong tay,
đăng lâm tuyệt đỉnh....<br><br>Trời đất cuối cùng cũng ngã xuống, duy ta muốn vĩnh hằng bất hủ.<br><br>Truyện <a href="https://webtruyen.com/huyen-huyen/">huyền huyễn</a> còn để lại những tình khúc đắt
giá được điêu khắc trong từng chương <a href="https://webtruyen.com/">truyện</a>. Cùng theo dõi và tiếp tục ủng hộ
siêu phẩm của Kiếm Du Thái Hư nhé.<br><br>', 1, 1, 451755)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (22, N'Nhất Thế Chi Tôn 1', NULL, CAST(N'2018-12-21 07:27:36.473' AS DateTime), CAST(N'2018-12-21 07:27:36.473' AS DateTime), N'https://webtruyen.com/public/images/nhatthechitonLk3H2xvUBp.jpg', N'Ta cả đời này, không hỏi trước kia, không cầu kiếp
sau, chỉ oanh oanh liệt liệt, khoái ý ân cừu, chỉ bại các tộc anh kiệt, ngạo tiếu
lục đạo Thần Ma!<br><br>Đôi lời từ dịch giả: Ta tuy là người dịch, nhưng quãng thời gian đầu tiên
đọc cuốn <a href="https://webtruyen.com/">truyện</a> này cũng phải thừa nhận tác giả viết hơi thiếu điểm nhấn, câu
chữ thiếu gọn gàng, súc tích, miêu tả đánh đấm chưa thực sự sắc nét,.v..v...
khiến cho ta có đôi lúc thấy nản! Nhưng càng về sau ta thấy tác giả viết càng tốt
lên. Truyện khá gần gũi, không có kiểu một phát lên giời, các nhân vật từ chính
đến phụ đều có cá tính và sắc thái riêng. Từ trạng thái buồn rầu muốn mang con
bỏ chợ khi thấy người đọc lèo tèo, lượng người đọc ngày một giảm sút sau một
hai chương đầu mọi người nhao vào đọc thử. Thật tiếc vì ta ko thể sửa lại những
chương tác giả đã viết, nhưng có thể khẳng định, càng về sau truyện càng hay
hơn!<br><br>Các tình tiết có thể không quá đột biến nhưng ta thấy bố cục khá hợp lý, kiểu
mưa dầm thấm lâu, và thấy dần có thiện cảm với những tình tiết mang cái vẻ đời
thường ấy. Ta hy vọng tác giả viết trọn bộ, tập trung tinh lực và truyện sẽ
ngày một hay hơn nữa, ta sẽ gắng duy trì tốc độ ra chương từ 1 - 2 ngày 1
chương ( và sẽ tăng lên nếu có nhiều độc giả thực sự yêu thích và theo dõi bộ
truyện), cũng hy vọng có thêm nhiều độc giả kiên trì vượt qua những vụn sạn ban
đầu để được thưởng thức những bát cơm ngon hơn còn ở phía sau. Vạn sự khởi đầu
nan, sự đời không phải vẫn như vậy hay sao?!<br><br>Cùng đón đọc và ủng hộ truyện <a href="https://webtruyen.com/huyen-huyen/">huyền huyễn</a> mang tên <a href="https://webtruyen.com/nhat-the-chi-ton/">Nhất
Thế Chi Tôn</a> các bạn nhé.', 1, 1, 1451405)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (23, N'Nhất Thế Tôn Sư', NULL, CAST(N'2018-12-21 07:27:41.773' AS DateTime), CAST(N'2018-12-21 07:27:41.773' AS DateTime), N'https://webtruyen.com/public/images/nhatthetonsuyRUgWfnq9b.jpg', N'Truyện <a href="https://webtruyen.com/tien-hiep/">tiên hiệp</a> <a href="https://webtruyen.com/nhat-the-ton-su/">Nhất Thế Tôn Sư</a> của tác giả Mực Thích Lặn Nước
viết về võ học Thiếu Lâm nghe khá lạ và hấp dẫn, có điểm khác so với các truyện
tiên hiệp bây giờ, đặc biệt tiết tấu vừa phải.<br><br>Các tình tiết có thể không quá đột biến nhưng ta thấy bố cục khá hợp lý, kiểu
mưa dầm thấm lâu, và thấy dần có thiện cảm với những tình tiết mang cái vẻ đời
thường ấy. Ta cả đời này, không hỏi trước kia, không cầu kiếp sau, chỉ oanh
oanh liệt liệt, khoái ý ân cừu, chỉ bại các tộc anh kiệt, ngạo tiếu lục đạo Thần
Ma!<br><br><a href="https://webtruyen.com/">Truyện</a> được đánh giá cao và đứng top cùng lời dịch mượt mà sẽ đem đến những
giây phút thư giãn tuyệt vời nhất mong các bạn theo dõi.<br><br>', 1, 1, 1149552)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (24, N'Vô Song Chi Chủ', NULL, CAST(N'2018-12-21 07:27:47.113' AS DateTime), CAST(N'2018-12-21 07:27:47.113' AS DateTime), N'https://webtruyen.com/public/images/vosongchichuT8VNBT1XG2.jpg', N'Vô Song Chi Chủ - Đang tiến hành - Tam Tu<br><br>Giới thiệu <a href="https://webtruyen.com/tien-hiep/">truyện tiên hiệp</a> đặc sắc này:<br><br>Vân Hoàng điên cuồng vặn vẹo cơ thể, cường đại lực lượng liên tục đem hắn xé nát, nỗi đau dường như có thể khiến người ta điên loạn, cũng may là sau đó cảm quan của hắn liền bị ngắt, nếu không hắn sẽ ngất mất. Nhưng rồi, hắn phát hiện ra điều gì đó không bình thường.<br class="kix-line-break"><br class="kix-line-break">“Đợi đã, sao ta lại ở đây?” Vân Hoàng vốn chỉ là một nho nhỏ tán tu ở Vĩnh Lạc đại lục. Khi phụ mẫu hắn mất thời điểm, hắn mới chỉ mười ba tuổi.<br class="kix-line-break"><br class="kix-line-break">Hai năm sau hắn gia nhập một môn phái tu chân, nhưng tư chất của hắn vốn khá tốt, nhưng vì rất nhiều lý do nên không đạt đủ tiêu chuẩn, bị môn phái đào thải. Từ đó hắn chuyển sang làm tán tu, chu du khắp nơi. Gần một trăm năm sau, hắn đã là một tán tu Thông linh cảnh cửu cấp.<br class="kix-line-break"><br class="kix-line-break">Với tốc độ tấn cấp này, Vân Hoàng hoàn toàn có cơ hội trùng kích Ngưng niệm cảnh.<br class="kix-line-break"><br class="kix-line-break">Trong lúc đi tìm kiếm cơ duyên đột phá Chân đan cảnh, hắn vô tình vướng vào cuộc tranh đấu của hai tu sĩ Ngưng niệm cảnh, đối với một tu sĩ Thông linh cảnh như hắn chỉ cần một chút sức là có thể chụp chết. Thế là, hắn tử vong.<br><br>Ai ngờ, hắn lại có thêm cơ hội trọng sinh một lần nữa, mang theo một bí mật kinh thiên động địa về thân phận của mình. Giành lấy sức mạnh cường đại, từ đó vén màn tất thảy những bí mật còn đang ẩn giấu.<br class="kix-line-break"><br class="kix-line-break">”Hôm nay ta là sâu kiến bị ngươi hung hăng dẫm dưới đế giày, nhưng ta cho ngươi biết một điều, một ngày kia sâu kiến đó sẽ quật khởi, đem ngươi đánh ngã!”<br><br>', 1, 1, 41856)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (25, N'Ma Thần Hoàng Thiên', NULL, CAST(N'2018-12-21 07:27:52.127' AS DateTime), CAST(N'2018-12-21 07:27:52.127' AS DateTime), N'https://webtruyen.com/public/images/mathanhoangthieng5GEZE2DwM.jpg', N'Bạn đang đọc truyện <a href="https://webtruyen.com/ma-than-hoang-thien/">Ma Thần Hoàng Thiên</a> - một trong những tuyệt phẩm <a href="https://webtruyen.com/tien-hiep/">tiên hiệp hay nhất</a> của tác giả Đỉnh Kiên. <br><br>Những gì người khác có, hắn đều đã từng có.<br><br>Gia đình, Hạnh phúc, bạn bè, vui vẻ...<br><br>Nhưng giờ đây những thứ <a href="https://webtruyen.com/huyen-huyen/">huyền huyễn</a> ấy đã hoàn toàn không còn dấu vết trong cuộc đời hắn, hắn là người cô độc.<br><br>Một đứa trẻ ngày hôm qua có tất cả nhưng hôm nay chẳng còn gì. Hắn đã bước
chân lên con đường tu tiên, con đường muốn đến bước cuối cùng phải trả
giá bằng máu và nước mắt.<br><br>Nỗ lực - tranh đấu - tàn sát - làm nên con người hắn. <br><br>Tình yêu - tình bạn - lòng thù hận - làm nên cuộc đời hắn. <br><br>Có người từng hỏi "Đạo của ngươi là gì?" <br><br>Hắn cười lớn mà đáp rằng: <br><br>"Đạo của ta là Nghịch, Nghịch của ta không phải là nghịch thiên, không phải
nghịch thế, Nghịch của ta đơn thuần là Nghịch. Sinh tử là nghịch, thực
hư là nghịch, âm dương là nghịch, thiện ác là nghịch, yêu ghét là
nghịch, vui buồn là nghịch, tất cả mọi tồn tại trên thế gian này đều có
nghịch của nó. Đi tới tận cùng của Nghịch ta sẽ tìm ra chân đạo của
mình, đó là dung hợp cái đối nghịch, đưa chúng về đúng bản nguyên của nó – Nghịch bản nguyên” <br><br>Nghịch sinh - Nghịch tử - Nghịch luân hồi <br><br>Nghịch trời - Nghịch đất - Nghịch càn khôn <br><br>Nghịch thiện - Nghịch ác - tâm vô nghĩ <br><br>Vấn thiên - Vấn địa - Đạo vô nhai? Câu thơ trong <a href="https://webtruyen.com/">truyện online</a> này có nghĩa gì? Hãy cùng đón xem!', 1, 1, 618186)
GO
INSERT [dbo].[Story] ([StoryId], [Name], [AuthorId], [WriteDate], [EditDate], [Image], [Decription], [StatusId], [isPublic], [View]) VALUES (26, N'Lạc Thần', NULL, CAST(N'2018-12-21 07:27:57.603' AS DateTime), CAST(N'2018-12-21 07:27:57.603' AS DateTime), N'https://webtruyen.com/public/images/lacthanS3FLRjy83E.jpg', N'Lạc Thần - Đang tiến hành - Wingx<br><br>Giới thiệu <a href="https://webtruyen.com/tien-hiep/">truyện tiên hiệp</a> hấp dẫn này:<br><br>Thiên đại thế giới được bao bọc bởi hàng loạt những giới tuyến được định ra để ngăn cản những sinh vật sống xuyên qua và trú ngụ tại những thế giới khác. Nhưng mà giờ, liên tục hàng loạt những ngăn cách giới xuất hiện những lỗ hổng không gian. Tất cả là do một bóng dáng như tia chớp xuyên qua, nó bay với tốc độ cho dù là những vị Đại Năng ở những lục địa tu luyện cũng không thể hiểu rõ rốt cuộc là thứ gì mà có thể đơn giản đánh vỡ giới tuyến ngăn cách để từ đó đi qua một cách dễ dàng<br><br>Nhưng khi những vị Đại Năng muốn đuổi theo để xác nhận thì những giới tuyến đã tự phục hồi nhằm ngăn cản khiến cho dù là những vị Đại Năng cũng đành bỏ qua.... <br class="kix-line-break"><br class="kix-line-break">Bên rìa Trái Đất, tại đường chân trời bụng bỗng hiện ra luồng sáng lướt qua và hạ lạc tại đỉnh một tòa bệnh viện cao tầng. Sau đó, nó liền đi vào thân thể của một cậu nhóc 7 tuổi tên Trang Thiên Vũ - cháu ngoại Trang Tông Nhân. Cậu bé này trong khi đi học về đã bị ám sát nhưng nhờ trái tim vị trí ở giữa ngực nên không mất mạng tức thì, nhưng bị cầm chân nên thiếu máu trầm trọng, trái tim suy kiệt, vì vậy đang ở giai đoạn ngàn cân treo sợi tóc... <br class="kix-line-break"><br class="kix-line-break">Ánh sáng lóe lên, một thân hình con người đi vào đại não của đứa trẻ...<br class="kix-line-break"><br class="kix-line-break">Đứa trẻ này vận mệnh không đủ a...haiz....vậy thì ta giúp ngươi cũng như cho ta lấy một thân phận để xem thế giới này nhân sinh tư vị đi.<br><br>', 1, 1, 47126)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 1)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 2)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 3)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 4)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 5)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 6)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 7)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 8)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 9)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 10)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 11)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 12)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 13)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 14)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 15)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 16)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 17)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 18)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 19)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 20)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 21)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 22)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 23)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 24)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (1, 25)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (2, 1)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (2, 13)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (3, 3)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (3, 12)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (3, 16)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (3, 21)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (4, 3)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (4, 4)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (4, 5)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (4, 10)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (4, 14)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (5, 3)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (5, 10)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (5, 11)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (5, 13)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (6, 4)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (6, 9)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (6, 13)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (6, 16)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (6, 19)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (6, 21)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (6, 23)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (6, 25)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (7, 5)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (8, 8)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (9, 8)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (10, 15)
GO
INSERT [dbo].[Tag] ([CategoryId], [StoryId]) VALUES (11, 17)
GO
INSERT [dbo].[User] ([UserId], [Name], [Password], [Email], [Image], [FacebookId], [LastLogin], [Exp], [Token], [Money], [IsAdmin]) VALUES (1, N'admin', N'C4CA4238A0B923820DCC509A6F75849B', N'admin@gmail.com', NULL, NULL, 636810181559094017, NULL, N'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJVc2VySWQiOjEsIkVtYWlsIjoiYWRtaW5AZ21haWwuY29tIiwiSW1hZ2UiOm51bGwsIk5hbWUiOiJhZG1pbiIsIlBhc3N3b3JkIjoiQzRDQTQyMzhBMEI5MjM4MjBEQ0M1MDlBNkY3NTg0OUIiLCJGYWNlYm9va0lkIjpudWxsLCJMYXN0TG9naW4iOjYzNjgxMDE4MTU1OTA5NDAxNywiRXhwIjpudWxsLCJUb2tlbiI6ImV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUpWYzJWeVNXUWlPakVzSWtWdFlXbHNJam9pWVdSdGFXNUFaMjFoYVd3dVkyOXRJaXdpU1cxaFoyVWlPbTUxYkd3c0lrNWhiV1VpT2lKaFpHMXBiaUlzSWxCaGMzTjNiM0prSWpvaVF6UkRRVFF5TXpoQk1FSTVNak00TWpCRVEwTTFNRGxCTmtZM05UZzBPVUlpTENKR1lXTmxZbTl2YTBsa0lqcHVkV3hzTENKTVlYTjBURzluYVc0aU9qWXpOamd4TURFM01UZ3lPVFF3TlRrek1Dd2lSWGh3SWpwdWRXeHNMQ0pVYjJ0bGJpSTZJbVY1U2pCbFdFRnBUMmxLUzFZeFVXbE1RMHBvWWtkamFVOXBTa2xWZWtreFRtbEtPUzVsZVVwV1l6SldlVk5YVVdsUGFrVnpTV3RXZEZsWGJITkphbTlwV1ZkU2RHRlhOVUZhTWpGb1lWZDNkVmt5T1hSSmFYZHBVMWN4YUZveVZXbFBiVFV4WWtkM2MwbHJOV2hpVjFWcFQybEthRnBITVhCaWFVbHpTV3hDYUdNelRqTmlNMHByU1dwdmFWRjZVa1JSVkZGNVRYcG9RazFGU1RWTmFrMDBUV3BDUlZFd1RURk5SR3hDVG10Wk0wNVVaekJQVlVscFRFTktSMWxYVG14WmJUbDJZVEJzYTBscWNIVmtWM2h6VEVOS1RWbFlUakJVUnpsdVlWYzBhVTlxV1hwT2FtZDRUVVJGTWs1Nlp6Qk9la0Y0VFZSTk0wOVRkMmxTV0doM1NXcHdkV1JYZUhOTVEwcFZZakowYkdKcFNUWkpiVlkxVTJwQ2JGZEZSbkJVTW14TFV6RlplRlZYYkUxUk1IQnZXV3RrYW1GVk9YQlRhMnhXWld0cmVGUnRiRXRQVXpWc1pWVndWMWw2U2xkbFZrNVlWVmRzVUdGclZucFRWM1JYWkVac1dHSklUa3BoYlRsd1YxWmtVMlJIUmxoT1ZVWmhUV3BHYjFsV1pETmtWbXQ1VDFoU1NtRllaSEJWTVdONFlVWnZlVlpYYkZCaVZGVjRXV3RrTTJNd2JISk9WMmhwVmpGV2NGUXliRXRoUm5CSVRWaENhV0ZWYkhwVFYzaERZVWROZWxScVRtbE5NSEJ5VTFkd2RtRldSalpWYTFKU1ZrWkdOVlJZY0c5UmF6RkdVMVJXVG1Gck1EQlVWM0JEVWxaRmQxUlVSazVTUjNoRFZHMTBXazB3TlZWYWVrSlFWbFZzY0ZSRlRrdFNNV3hZVkcxNFdtSlViREpaVkVKellUQnNjV05JVm10V00yaDZWRVZPUzFSV2JGbFVha0pWVW5wc2RWbFdZekJoVlRseFYxaHdUMkZ0WkRSVVZWSkdUV3MxUlZOVVRrNWxiR3cyVkd0U1NrMUZNVFZrTW14VFYwZG9NMU5YY0hka1YxSllaVWhPVFZFd2NGWlpha293WWtkS2NGTlVXa3BpVmxreFZUSndRMkpHWkVaU2JrSlZUVzE0VEZWNlJscGxSbFpZWWtVeFVrMUlRblpYVjNScllXMUdWazlZUWxSaE1uaFhXbGQwY21WR1VuUmlSWFJRVlhwV2MxcFdWbmRXTVd3MlUyeGtiRlpyTlZsV1ZtUnpWVWRHY2xadWNGUldNMUpZV2tWYWMxZEhTa2xVYTNCb1lsUnNkMVl4V210Vk1sSklVbXhvVDFaVldtaFVWM0JIWWpGc1YxcEVUbXRXYlhRMVZERm9VMU50UmxsYVNFSldUVmRPTkZsVlduWmxWbHBZWWtaQ2FWWkdWalJYVjNSclRUSk5kMkpJU2s5V01taHdWbXBHVjJOR1VYbGlSWFJvVW01Q1NWUldhRU5oVjBaV1lraHdWRll6YUVSWlZXUk9aV3hTY1ZSdGJFNU5TRUo1VlRGa2QyUnRSbGRTYWxwV1lURktVMVpyV2tkT1ZsSlpZMGM1VW1GNlJrZFZNVkpYVkcxR2NrMUVRbFZXTTBKRVZXeGFSbVF4VWxWU2F6VlRVak5vUkZaSE1UQlhhekIzVGxaV1lXVnJTbEZXYkZaelkwWlNSbFJyZEZOTlYzaFpWa2N4TkZkdFNsVmlSRXBhVmtWS2VsbFVRbk5qVjA1SlZtMTBWMDB5YURaV1JWWlBVekZTVjJKR2JGVmhhMHBXVlc1d2MyUldiRmRaZWtKb1ZsUnNlRll4YUhkVU1rWjBXa1JTVlZaV1NrZFVWM040WTFaT1ZWRnJOVmRTYkZZMVZrY3hkMUZ0Vm5KTlZWSnJUVzE0VkZZd1pHOU5NVTVZWTBoa2ExWXhTbGxhVldoUFZGWkZkMk5HV2xwaGEyOTNXV3RrUzJOR1RsVlhhM0JwVm14cmVGWlVTbmRSTWtwSFdrVmFVMkpyU2xaVVZ6RTBWRVpXTmxKc2NHeFNiRnBaV1d0VmVGVnJNVWxSYmxwWVZqTlNjbGxYTVVkV2F6bFpVV3hTYUUxdWFGaFhiR1F3WTIxV1IxVnVVbWxTV0ZKUlZsaHdWMk14Y0ZkV2JtUlhUVmQzTWxVeWVHdGlSbHB5VGxac1YxWnRVbnBXVldSSFkyeGFkV05HVWxkTk1VcFpWMnRXWVdNeFpFaFRhMnhWWVROQ2IxbHNVbk5rTVZsNFYyMTBWazFzU2tsVmJYaHZWREZhVmxkdGFGVldNMEpJV1dwR2MxWXhjRVZVYlhSWFlsaFJNVlpFUm05Vk1VNTBVbXhzWVZORlNsZFVWbVJQVGtac1ZsZHVXbXhXYkhCWldXdGFRMkZXV2tkV2FsSllWak5TY2xSVVNrNWtNa3BKVTJzNVYwMXRhSGRXYlhCSFZqSk9SMVZZYkdsU1dGSnZWVzAxUTFOV1VsZGhSVTVvVmpCYVYxbHJhSGRXUmxsNllVVlNXbFpYVWs5YVYzaFRZMVpTZEdKRk5VNVRSVW8xVmxSR2EyUXlVblJTYkdSVFlXeHdWMWxVUmt0Vk1WcHlWMnRrVDFac1NscFpNR00xVlcxR05sSnJaRlpOVmtwWVZrY3hSMk5yTVVWUmJGWlhUVEJLUlZaWGVHRlNiVkY0Vld4V1UyRjZWbFJWYWs1dlVrWmFTRTFVUWxoaGVrSXpWR3hhVjFsWFZuSlRiRVpYWWtaYWVsa3dXbE5TYkZKeVpFWk9UbFl6YUZwV2EyTjRUa1prZEZOc1ZtbFNSWEJoVm10V1MyVnNiRlZSYms1cVZqQTFTbFp0TVRCV01EQjVZVVJhVjFKV1dsQlZla1pUVmpKS1IySkdWbWhoTUhCWFZsYzFkMk15VWxkaVJtUmFaV3RLYjFac1VuTmxSbGw0WVVoa1ZVMXJXakJYYTFKVFZsWmFWMU5yWkZWV2JGVXhWV3hrUm1WdFNrZFJiRTVUVFd4RmQxWnJXbXRrTVVaeVRWVmFUMVpzU25KVVZ6RTBWa1paZDFwSE9VNU5WVFZaV1RCb2EyRXhXWGhUYkd4aFZsZG9VRlpHV2taa01rNUhWMnh3YUdFeU9UTlhWM1JyVXpKT1IxUnNWbGhoTTBKd1ZtMTRjbVZHV2xWVGJtUlNUV3R3U0ZkclZtRlZNa3B5VTJ4YVZWWjZSVEJXUlZwWFRteEtjMk5IZUZOaVJuQmFWMWQwVm1WR1ZuSk5WV3hTWW14d1dWWnFUbE5qYkd4WVRWVmtWMkY2YkZwVlYzaFRZVVV4ZFdGR2FGaGlSMUYzV1RJeFYxSXhWblZWYld4VFYwWktVbFpzYUhkV01rMTRZMFprVjJKdFVsaFVWbVF6VFd4VmVXVkhkR2xTYkhCNVZHeGFjMVl4V25SVmJuQlhWbGRTU0ZreWVHRmtWMDVIVld4a1RrMVZjRnBXTW5SWFdWZE5lRnBGYUZSaE1uaFdXVlJPUTJJeGJITlZiazVyVFZac05GWXlNVEJXYXpGelUydHNWbUpZYUhaV1JFWmhWbXhrZEdGR1ZsZE5NRXBKVjFkd1IyTXhXWGhqUlZaVllsaFNXRmxzYUZKTlZscEZVbTA1VmsxVk5UQlZiWGh6V1ZaT1JsTnNaRlZXYlZKUVZHdGFjMVpzWkhWWGJYaFhZa2hDV2xkWGRHRlJNa1pYVjJ0a1YyRnNTbGxXYWs1VFkyeFNWVk5yTld0TmEzQktWVEp6TlZZd01YUmhTR1JYWWxoQ1NGWnFTazlTTVZaWllrZHNVMWRHU25aV1Z6QXhVVEZPVjFWc1pHaFNWVFZ2Vm1wQ1lWWXhiSEpoU0dSWFVteHNObGxWVmxOWGJGcFlWV3M1WVZZemFGUlpNVnBUWkVkS1JrNVZOVlJTVlc4eFZteFNSMkV5VVhsVmJsSlRZa2RTVkZsWGVIZFdNV3hWVW10MFZrMVdjSGxXTW5SclZERmFjMU5zY0ZwTlIwMHhWbGN4UjA1c1NuSmFSbHBPVm10d1dWWnJZM2hTTWs1eVRWVldVbUpHV2xoVVZFSkxVbFphV0dWSFJsTmlWa1kwVmxkNFYxVXlSalpXYkZKV1lXczFkbFZyV21GVFJURlZVV3hvYUdWclNYcFdSM2hoVmpGc1dGWnVTbFJpUlZwWVdXdGFZV1ZzYTNkWGJFNVRZa1pLZVZwRldrOVViRmw2WVVad1YyRXlUalJVYTFwclpFWk9jMVp0YkZOU1dFSm9WbTEwVjFNeVZuTmlSbFpTWW1zMWNWWnFRVEZUYkZwMFRWUkNWMDFFUWpWWlZWSmhWakZLVjFkc1FsWmxhMXBVVm1wS1MxSXlTa2RXYldob1RVaENXRlpzWXpGa01rMTVWV3hrYVZKdFVtRmFWM1JMWWpGYWMxVnVUbXhTYkd3MFdWVm9hMVpWTVhKWGFrSllZVEZLVkZac1dtRldNVTV5V2taV1YySkdXVEJXYlhoaFl6QTFjMVp1U2xCV00yaHdWakJhUm1WV1duSmFSRkpXVFZVMWVWUlZhR3RWUmxwelUyNUtWVlo2UlRCV2ExcGFaREZ3U0U5Vk5VNVdWRlphVjFSQ2IyRXlSWGhYV0doVVlrZDRhRlpzWkc5VlJscEhWMnRhYTAxck5VaFdNbmgzWVVkRmVVOVVUbGhXTTFKeVZYcEtUMUl4VW5OV2JHaHBWak5vZDFkWGRHRmtNRFZ6V2tab2ExSlViRTlVVjNSaFYwWmFXR1ZIT1ZaU2JWSklWakl4YjFZd01VaFZXR1JhVFVad1UxcFdWWGhTVmtweVRsWmtUbE5GU2t0V01uaFhWVEpPZEZWc2FGWmlSM2hZV1cxMFMxWXhXbkpXYm1SWFVtMTRNRlJzV210aGJGcHlWbXBTVlUxV1ZqUldNRnBoVWpKT1JWZHNXbGROTURRd1ZtcENZV1F4WkZoVWEyUnFVbTFTVkZZd1drcE5iRnBJVFZSU1ZVMVlRbmxVTVZaclYwZEtSbU5HVWxWV2VsWnlWR3hhYTJOc2NFWlBWbWhwVmxSRk1sZFVRbXRpTVZGM1RVaG9WR0pGY0ZsWmJURTBVekZzTmxGdVRtcGhla1phVmpJeGMyRldXbk5oTTJoV1RWZFNNMXBFU2xOWFJsWnpZVWQ0VkZKVVZqQldiRnBPVFZVMVIxcElVbGRoTTBKVVZtNXdSMDFXWkhOV2JHUldUVlphV2xrd2FFdFZiRnBXVjFSQ1YyRXhXbnBVYlhoTFpFWlNjazlXU2xoU1ZYQXpWbXhhYjFGck1IaFVia1poVW10d2NWVnJXbUZYUm10NFlVaE9XbFl4U2tkYVZWcERWa2RLVjJORmRGUldNbmQ2V1ZaYVUxZEZPVmxXYlVaWVVqTlNkMVpFU1hkTlZURllVMnRvYkZKSGRERlpiR2h2VWtkR1JsTnJhRTVoYkVsM1ZqQlZORTB5VFhwalJteFFWMFZKZWxWWGR6VlRSMUpKVW01YVZGSlVSa2RVV0hCTFlVWkplRkp1VGxSTlZscFNXbFpvUTFFeFJuTlJiVnBxWlZWc2VsTlhjM2hrYlVwMFZtcFdTbUZ1UWpGYVJtUTBZekphVWt4dWFHMWlSbEo1VG14c2JsWkdTazFQUlVwVllUQjNlRlpWYXpOV1YyeFJUMFJrYVZONlkzaGxWMUYzVkVWd2VsUlVXbFZYUkd4c1drYzRhVXhEU2s1aU1qVnNaVk5KTm1KdVZuTmlTREF1VGtaWU9ETm5RMkoxU0ROeU1rWktkbkp2T1c5dFQxbFViSGxuVlhNelJsZDBRVTltV0Zoa1NFSllRU0lzSWsxdmJtVjVJanB1ZFd4c2ZRLnN3S1lZa2F0d3dUWTZhVjFGcTM3V2NVS01QUXNZREJvdEFJd3JXTlBOcDgiLCJNb25leSI6bnVsbH0.NUgrbYwHmT9ixORpAqJZj6tKDa7QPw0Gp1w2hpikiXQ', NULL, NULL)
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetByName]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Category_GetByName]
@Name nvarchar(max)
as
begin
	
SELECT * FROM [Category] WHERE [Category].Name = @Name

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Category_Insert]
@CategoryId bigint out,
@Name nvarchar(max),
@Url varchar(max)
as
begin
	SELECT @CategoryId = isnull(MAX(CategoryId),0) + 1 from [Category];
INSERT INTO [dbo].[Category]
           ([CategoryId]
           ,[Name]
           ,[Url])
     VALUES
           (@CategoryId
           ,@Name
           ,@Url)

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Search]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_Search]
(
@Total int out,
@CurrentPage int = 1,
@PageSize int = 20,

@QuickSearch nvarchar(500)
)
As
Begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------


	
	DECLARE @where NVARCHAR(MAX);
	set @where = ' WHERE 1=1 ';
	
	
	if(@QuickSearch is not null)
	BEGIN
		SET @QuickSearch = '%' + @QuickSearch+'%'
		SET @where = @where + 'AND (';
		SET @where = @where + '[Category].Name like @QuickSearch'
		SET @where = @where + ')'
	END

	SET @CurrentPage = (@CurrentPage - 1)*@PageSize;
	
	DECLARE @selectSQL NVARCHAR(MAX)
	SET @selectSQL = N'
		SELECT * FROM Category
	'
	+ @where + '  ORDER BY [Category].CategoryId desc OFFSET @CurrentPage ROWS FETCH NEXT @PageSize ROWS ONLY '

	EXECUTE sp_executesql
	@selectSQL,
	N'
	  @CurrentPage INT,
	  @PageSize int  = 20,
	  
	  @QuickSearch nvarchar(500)',
	
	@CurrentPage, @PageSize,@QuickSearch

	declare @countSQL nvarchar(500)
	set @countSQL = N'SELECT @Total = COUNT(*) FROM [Category] with(NoLock, ReadUncommitted)' + @where

	execute sp_executesql
	@countSQL,
	N'@Total INT OUT,
	
	@QuickSearch nvarchar(500)',
	@Total OUT,@QuickSearch

	---------------------------------------------------
	SET NOCOUNT OFF;
End
GO
/****** Object:  StoredProcedure [dbo].[sp_Chapter_GetById]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Chapter_GetById]
	@StoryId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	SELECT * FROM Chapter WHERE [Chapter].StoryId = @StoryId

	---------------------------------------------------
	SET NOCOUNT OFF;
end

GO
/****** Object:  StoredProcedure [dbo].[sp_Chapter_Insert]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Chapter_Insert]
@ChapterId bigint out,
@StoryId bigint,
@Name nvarchar(max),
@WriteDate datetime,
@EditDate datetime
as
begin
	SELECT @ChapterId = isnull(MAX(ChapterId),0) + 1 from [Chapter] WHERE [Chapter].StoryId = @StoryId;
INSERT INTO [dbo].[Chapter]
           ([ChapterId]
           ,[StoryId]
           ,[Name]
           ,[WriterDate]
           ,[EditorDate])
     VALUES
           (@ChapterId
           ,@StoryId
           ,@Name
           ,@WriteDate
           ,@EditDate)

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Content_GetById]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Content_GetById]
	@StoryId bigint,
	@ChapterId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------
	
	SELECT Content.*,Story.Name as StoryName,Story.AuthorId,Story.StoryId,Chapter.ChapterId,Chapter.Name as ChapterName,[User].Name as AuthorName FROM Story 
	LEFT JOIN Content on Content.StoryId = Story.StoryId
	LEFT JOIN Chapter on Chapter.ChapterId = @ChapterId AND Chapter.StoryId = Story.StoryId
	LEFT JOIN [User] on [User].UserId = Story.AuthorId
	WHERE Story.StoryId = @StoryId

	---------------------------------------------------
	SET NOCOUNT OFF;
end

GO
/****** Object:  StoredProcedure [dbo].[sp_Content_Insert]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Content_Insert]
@ContentId bigint out,
@StoryId bigint,
@Content nvarchar(max)
as
begin
	SELECT @ContentId = isnull(MAX(ContentId),0) + 1 from [Content] WHERE [Content].StoryId = @StoryId;
INSERT INTO [dbo].[Content]
           ([ContentId]
           ,[StoryId]
           ,[Content])
     VALUES
           (@ContentId
           ,@StoryId
           ,@Content)

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Home_Search]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Home_Search]
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	SELECT TOP 20 Story.*,(
		SELECT COUNT(*) FROM Chapter WHERE Chapter.StoryId = Story.StoryId
	) as TotalChapter FROM Story
	
	ORDER BY Story.EditDate DESC

	---------------------------------------------------
	SET NOCOUNT OFF;
end

GO
/****** Object:  StoredProcedure [dbo].[sp_Home_View]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Home_View]
(
@Total int out,
@CurrentPage int = 1,
@PageSize int = 20
)
As
Begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------


	
	DECLARE @where NVARCHAR(MAX);
	set @where = ' WHERE 1=1 ';
	
	

	SET @CurrentPage = (@CurrentPage - 1)*@PageSize;
	
	DECLARE @selectSQL NVARCHAR(MAX)
	SET @selectSQL = N'
		SELECT Story.*,Status.Name as StatusName,(
			SELECT COUNT(*) FROM Chapter WHERE Chapter.StoryId = Story.StoryId
		) as TotalChapter FROM Story
		LEFT JOIN Status on Status.StatusId = Story.StatusId
	'
	+ @where + '  ORDER BY [Story].[View] desc OFFSET @CurrentPage ROWS FETCH NEXT @PageSize ROWS ONLY '

	EXECUTE sp_executesql
	@selectSQL,
	N'
	  @CurrentPage INT,
	  @PageSize int  = 20',
	
	@CurrentPage, @PageSize

	declare @countSQL nvarchar(500)
	set @countSQL = N'SELECT @Total = COUNT(*) FROM [Story] with(NoLock, ReadUncommitted)' + @where

	execute sp_executesql
	@countSQL,
	N'@Total INT OUT',
	@Total OUT

	---------------------------------------------------
	SET NOCOUNT OFF;
End
GO
/****** Object:  StoredProcedure [dbo].[sp_Status_GetById]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Status_GetById]
@StatusId bigint
as
begin
	SELECT @StatusId = isnull(MAX(StatusId),0) + 1 from [Status];
SELECT * FROM [Status] WHERE [Status].StatusId = @StatusId

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Status_GetByName]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Status_GetByName]
@Name nvarchar(max)
as
begin
	
SELECT * FROM [Status] WHERE [Status].Name = @Name

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Status_Insert]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Status_Insert]
@StatusId bigint out,
@Name nvarchar(max)
as
begin
	SELECT @StatusId = isnull(MAX(StatusId),0) + 1 from [Status];
INSERT INTO [dbo].[Status]
           ([StatusId]
           ,[Name])
     VALUES
           (@StatusId
           ,@Name)

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Story_DeleteById]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Story_DeleteById]
	@StoryId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	DELETE  FROM Story WHERE [Story].StoryId = @StoryId

	---------------------------------------------------
	SET NOCOUNT OFF;
end

GO
/****** Object:  StoredProcedure [dbo].[sp_Story_GetById]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Story_GetById]
	@StoryId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	SELECT [Story].*,Status.Name as StatusName,(
		SELECT COUNT(*) FROM Chapter WHERE Chapter.StoryId = Story.StoryId
	) as TotalChapter, [User].Name FROM Story 
	LEFT JOIN Status on Status.StatusId = Story.StatusId
	LEFT JOIN [User] On [User].UserId = Story.AuthorId
	WHERE [Story].StoryId = @StoryId

	---------------------------------------------------
	SET NOCOUNT OFF;
end

GO
/****** Object:  StoredProcedure [dbo].[sp_Story_GetByName]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Story_GetByName]
@Name nvarchar(max)
as
begin
SET @Name = '%' + @Name +'%';
SELECT * FROM [Story] WHERE Name like @Name

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Story_Insert]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Story_Insert]
@StoryId bigint out,
@Name nvarchar(max),
@AuthorId bigint,
@WriteDate datetime,
@EditDate datetime,
@Image varchar(max),
@isPublic bit,
@StatusId bigint,
@Decription nvarchar(max),
@View bigint
as
begin
	SELECT @StoryId = isnull(MAX(StoryId),0) + 1 from [Story];
INSERT INTO [dbo].[Story]
           ([StoryId]
           ,[Name]
           ,[AuthorId]
           ,[WriteDate]
           ,[EditDate]
           ,[Image]
           ,[Decription]
           ,[StatusId]
           ,[isPublic]
           ,[View])
     VALUES
           (@StoryId
           ,@Name
           ,@AuthorId
           ,@WriteDate
           ,@EditDate
           ,@Image
           ,@Decription
           ,@StatusId
           ,@isPublic
           ,@View)

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Story_Search]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Story_Search]
(
@Total int out,
@CurrentPage int = 1,
@PageSize int = 20,

@QuickSearch nvarchar(500)
)
As
Begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------


	
	DECLARE @where NVARCHAR(MAX);
	set @where = ' WHERE 1=1 ';
	
	
	if(@QuickSearch is not null)
	BEGIN
		SET @QuickSearch = '%' + @QuickSearch+'%'
		SET @where = @where + 'AND (';
		SET @where = @where + '[Story].Name like @QuickSearch'
		SET @where = @where + ')'
	END

	SET @CurrentPage = (@CurrentPage - 1)*@PageSize;
	
	DECLARE @selectSQL NVARCHAR(MAX)
	SET @selectSQL = N'
		SELECT [Story].*,[Status].Name as StatusName,[User].Name as AuthorName,(
			SELECT COUNT(*) FROM Chapter WHERE Chapter.StoryId = Story.StoryId
		) as TotalChapter FROM Story
		LEFT JOIN [Status] on [Status].StatusId = [Story].StatusId
		LEFT JOIN [User] on [User].UserId = Story.AuthorId
	'
	+ @where + '  ORDER BY [Story].WriteDate,[Story].[View] desc OFFSET @CurrentPage ROWS FETCH NEXT @PageSize ROWS ONLY '
	print @selectSQL;
	EXECUTE sp_executesql
	@selectSQL,
	N'
	  @CurrentPage INT,
	  @PageSize int  = 20,
	  
	  @QuickSearch nvarchar(500)',
	
	@CurrentPage, @PageSize,@QuickSearch

	declare @countSQL nvarchar(500)
	set @countSQL = N'SELECT @Total = COUNT(1) FROM [Story]' + @where
	execute sp_executesql
	@countSQL,
	N'@Total INT OUT,
	
	@QuickSearch nvarchar(500)',
	@Total OUT,@QuickSearch
	---------------------------------------------------
	SET NOCOUNT OFF;
End
GO
/****** Object:  StoredProcedure [dbo].[sp_Story_Update]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Story_Update]
@StoryId bigint out,
@Name nvarchar(max),
@AuthorId bigint,
@WriteDate datetime,
@EditDate datetime,
@Image varchar(max),
@isPublic bit,
@StatusId bigint,
@Decription nvarchar(max),
@View bigint
as
begin
UPDATE [dbo].[Story]
   SET [Name] = @Name
      ,[Image] = @Image
 WHERE [Story].StoryId = @StoryId

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Tag_GetById]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Tag_GetById]
	@StoryId bigint
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	SELECT Category.*,Tag.StoryId FROM Tag
	LEFT JOIN [Category] on Category.CategoryId = Tag.CategoryId
	WHERE [Tag].StoryId = @StoryId

	---------------------------------------------------
	SET NOCOUNT OFF;
end

GO
/****** Object:  StoredProcedure [dbo].[sp_Tag_Insert]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Tag_Insert]
@StoryId bigint,
@CategoryId bigint
as
begin
INSERT INTO [dbo].Tag
           ([StoryId],
		   [CategoryId])
     VALUES
           (@StoryId
           ,@CategoryId
           )

end

GO
/****** Object:  StoredProcedure [dbo].[sp_Type_Insert]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Type_Insert]
@TypeId bigint out,
@Name nvarchar(max),
@Url varchar(max)
as
begin
	SELECT @TypeId = isnull(MAX(TypeId),0) + 1 from [Type];
INSERT INTO [dbo].[Type]
           ([TypeId]
           ,[Name]
           ,[Url])
     VALUES
           (@TypeId
           ,@Name
           ,@Url)

end

GO
/****** Object:  StoredProcedure [dbo].[sp_User_GetById]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_User_GetById]
	@Email nvarchar(max),
	@Password nvarchar(max)
as
begin
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	---------------------------------------------------

	SELECT * FROM [User] WHERE [User].Email = @Email AND [User].Password = @Password

	---------------------------------------------------
	SET NOCOUNT OFF;
end

GO
/****** Object:  StoredProcedure [dbo].[sp_User_Update]    Script Date: 12/21/2018 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_User_Update]
@UserId bigint,
@Email nvarchar(max),
@Name nvarchar(max),
@Password nvarchar(max),
@Image nvarchar(max),
@FacebookId nvarchar(max),
@LastLogin bigint,
@Exp bigint,
@Token nvarchar(max),
@Money decimal(18,2)
as
begin
UPDATE [dbo].[User]
   SET [Email] = @Email
      ,[Image] = @Image
      ,[FacebookId] = @FacebookId
      ,[LastLogin] = @LastLogin
      ,[Exp] = @Exp
      ,[Token] = @Token
      ,[Money] = @Money
	  ,[Name] = @Name
	  ,[Password] = @Password
 WHERE [User].UserId = @UserId

end

GO
