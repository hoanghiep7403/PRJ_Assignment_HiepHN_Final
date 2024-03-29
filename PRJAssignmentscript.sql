USE [PRJ_Assignment]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/20/2023 9:06:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountID] [int] IDENTITY(1,1) NOT NULL,
	[accountName] [varchar](30) NOT NULL,
	[username] [varchar](30) NOT NULL,
	[password] [varchar](30) NOT NULL,
	[role] [bit] NOT NULL,
	[campusid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[accountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 3/20/2023 9:06:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[sid] [int] NOT NULL,
	[sessionid] [int] NOT NULL,
	[astatus] [bit] NOT NULL,
	[description] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Campus]    Script Date: 3/20/2023 9:06:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campus](
	[campusid] [int] IDENTITY(1,1) NOT NULL,
	[campusname] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[campusid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 3/20/2023 9:06:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[ccode] [varchar](30) NOT NULL,
	[cname] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 3/20/2023 9:06:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] IDENTITY(1,1) NOT NULL,
	[gname] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Course]    Script Date: 3/20/2023 9:06:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Course](
	[cid] [int] NOT NULL,
	[gid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 3/20/2023 9:06:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[lid] [int] IDENTITY(1,1) NOT NULL,
	[lcode] [varchar](30) NOT NULL,
	[lname] [varchar](30) NOT NULL,
	[Img] [text] NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[accountID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 3/20/2023 9:06:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[rname] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 3/20/2023 9:06:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sessionid] [int] IDENTITY(1,1) NOT NULL,
	[gid] [int] NOT NULL,
	[cid] [int] NOT NULL,
	[tid] [int] NOT NULL,
	[rid] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sessionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 3/20/2023 9:06:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[scode] [varchar](30) NOT NULL,
	[sname] [varchar](30) NOT NULL,
	[Img] [text] NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[Contact] [int] NOT NULL,
	[Gender] [bit] NOT NULL,
	[Dob] [date] NOT NULL,
	[accountID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Group]    Script Date: 3/20/2023 9:06:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Group](
	[sid] [int] NOT NULL,
	[gid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 3/20/2023 9:06:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[tid] [int] NOT NULL,
	[description] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([accountID], [accountName], [username], [password], [role], [campusid]) VALUES (1, N'hiephn', N'hiephn', N'12345678', 1, 1)
INSERT [dbo].[Account] ([accountID], [accountName], [username], [password], [role], [campusid]) VALUES (2, N'sonnt5', N'sonnt5', N'12345', 0, 1)
INSERT [dbo].[Account] ([accountID], [accountName], [username], [password], [role], [campusid]) VALUES (3, N'hangtm', N'hangtm', N'12345', 1, 1)
INSERT [dbo].[Account] ([accountID], [accountName], [username], [password], [role], [campusid]) VALUES (4, N'anhnh88', N'anhnh88', N'12345', 0, 1)
INSERT [dbo].[Account] ([accountID], [accountName], [username], [password], [role], [campusid]) VALUES (5, N'longdq', N'longdq', N'12345', 0, 1)
INSERT [dbo].[Account] ([accountID], [accountName], [username], [password], [role], [campusid]) VALUES (6, N'canhdd', N'canhdd', N'123', 1, 1)
INSERT [dbo].[Account] ([accountID], [accountName], [username], [password], [role], [campusid]) VALUES (7, N'hieunm', N'hieunm', N'123', 1, 1)
INSERT [dbo].[Account] ([accountID], [accountName], [username], [password], [role], [campusid]) VALUES (8, N'thuyenhg', N'thuyenhg', N'123', 1, 2)
INSERT [dbo].[Account] ([accountID], [accountName], [username], [password], [role], [campusid]) VALUES (9, N'ngannb', N'ngannb', N'123', 1, 5)
INSERT [dbo].[Account] ([accountID], [accountName], [username], [password], [role], [campusid]) VALUES (10, N'hoanghh', N'hoanghh', N'12345', 0, 2)
INSERT [dbo].[Account] ([accountID], [accountName], [username], [password], [role], [campusid]) VALUES (11, N'nguyentt', N'nguyentt', N'12345', 0, 5)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Attendance] ON 

INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [astatus], [description]) VALUES (1, 1, 6, 1, N'Good job!')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [astatus], [description]) VALUES (2, 2, 6, 0, N'1st recored absent time')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [astatus], [description]) VALUES (3, 3, 6, 1, N'Keep working!')
SET IDENTITY_INSERT [dbo].[Attendance] OFF
GO
SET IDENTITY_INSERT [dbo].[Campus] ON 

INSERT [dbo].[Campus] ([campusid], [campusname]) VALUES (1, N'FU-Hoa Lac')
INSERT [dbo].[Campus] ([campusid], [campusname]) VALUES (2, N'FU-Ho Chi Minh')
INSERT [dbo].[Campus] ([campusid], [campusname]) VALUES (3, N'FU-Ða Nang')
INSERT [dbo].[Campus] ([campusid], [campusname]) VALUES (4, N'FU-Can Tho')
INSERT [dbo].[Campus] ([campusid], [campusname]) VALUES (5, N'FU-Quy Nhon')
SET IDENTITY_INSERT [dbo].[Campus] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([cid], [ccode], [cname]) VALUES (1, N'MAS291', N'Statistics and Probability')
INSERT [dbo].[Course] ([cid], [ccode], [cname]) VALUES (2, N'JPD123', N'Elementary Japanese 1-A1.2')
INSERT [dbo].[Course] ([cid], [ccode], [cname]) VALUES (3, N'PRJ301', N'Java Web Application Development')
INSERT [dbo].[Course] ([cid], [ccode], [cname]) VALUES (4, N'CEA201', N'Computer Organization and Architecture')
INSERT [dbo].[Course] ([cid], [ccode], [cname]) VALUES (5, N'IOT102', N'Internet of Things')
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([gid], [gname]) VALUES (6, N'BA1711')
INSERT [dbo].[Group] ([gid], [gname]) VALUES (5, N'MC1707')
INSERT [dbo].[Group] ([gid], [gname]) VALUES (1, N'SE1722')
INSERT [dbo].[Group] ([gid], [gname]) VALUES (2, N'SE1723')
INSERT [dbo].[Group] ([gid], [gname]) VALUES (3, N'SE1724')
INSERT [dbo].[Group] ([gid], [gname]) VALUES (4, N'SE1725')
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
INSERT [dbo].[Group_Course] ([cid], [gid]) VALUES (1, 1)
INSERT [dbo].[Group_Course] ([cid], [gid]) VALUES (2, 1)
INSERT [dbo].[Group_Course] ([cid], [gid]) VALUES (2, 5)
INSERT [dbo].[Group_Course] ([cid], [gid]) VALUES (3, 1)
INSERT [dbo].[Group_Course] ([cid], [gid]) VALUES (4, 2)
INSERT [dbo].[Group_Course] ([cid], [gid]) VALUES (4, 4)
INSERT [dbo].[Group_Course] ([cid], [gid]) VALUES (5, 3)
INSERT [dbo].[Group_Course] ([cid], [gid]) VALUES (5, 6)
GO
SET IDENTITY_INSERT [dbo].[Lecturer] ON 

INSERT [dbo].[Lecturer] ([lid], [lcode], [lname], [Img], [Email], [accountID]) VALUES (1, N'SonNT5', N'Ngo Tung Son', N'https://fap.fpt.edu.vn/ImageHandler.ashx?rollNumber=re4SGIoAAjDwj4TVOXthhQ==&Campus=3', N'SonNT@fpt.edu.vn', 2)
INSERT [dbo].[Lecturer] ([lid], [lcode], [lname], [Img], [Email], [accountID]) VALUES (2, N'AnhNH88', N'Nguyen Hoang Anh', N'https://fap.fpt.edu.vn/ImageHandler.ashx?rollNumber=re4SGIoAAjDwj4TVOXthhQ==&Campus=3', N'AnhNH@fpt.edu.vn', 4)
INSERT [dbo].[Lecturer] ([lid], [lcode], [lname], [Img], [Email], [accountID]) VALUES (3, N'LongDQ', N'Dang Quang Long', N'https://fap.fpt.edu.vn/ImageHandler.ashx?rollNumber=re4SGIoAAjDwj4TVOXthhQ==&Campus=3', N'LongDQ@fpt.edu.vn', 5)
INSERT [dbo].[Lecturer] ([lid], [lcode], [lname], [Img], [Email], [accountID]) VALUES (7, N'HoangHH', N'Hua Hoang Hai', N'https://fap.fpt.edu.vn/ImageHandler.ashx?rollNumber=re4SGIoAAjDwj4TVOXthhQ==&Campus=3', N'HoangHH@fpt.edu.vn', 10)
INSERT [dbo].[Lecturer] ([lid], [lcode], [lname], [Img], [Email], [accountID]) VALUES (8, N'NguyenTT', N'Tran Thao Nguyen', N'https://fap.fpt.edu.vn/ImageHandler.ashx?rollNumber=re4SGIoAAjDwj4TVOXthhQ==&Campus=3', N'NguyenTT@fpt.edu.vn', 11)
SET IDENTITY_INSERT [dbo].[Lecturer] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([rid], [rname]) VALUES (1, N'BE-206')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (2, N'DE-430')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (3, N'AL-603')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (4, N'GA-104')
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[Session] ON 

INSERT [dbo].[Session] ([sessionid], [gid], [cid], [tid], [rid], [lid], [date], [status]) VALUES (1, 1, 3, 2, 1, 1, CAST(N'2023-03-13' AS Date), 0)
INSERT [dbo].[Session] ([sessionid], [gid], [cid], [tid], [rid], [lid], [date], [status]) VALUES (2, 1, 1, 1, 1, 3, CAST(N'2023-03-15' AS Date), 0)
INSERT [dbo].[Session] ([sessionid], [gid], [cid], [tid], [rid], [lid], [date], [status]) VALUES (3, 1, 2, 2, 1, 2, CAST(N'2023-03-15' AS Date), 0)
INSERT [dbo].[Session] ([sessionid], [gid], [cid], [tid], [rid], [lid], [date], [status]) VALUES (4, 1, 3, 2, 1, 1, CAST(N'2023-03-16' AS Date), 0)
INSERT [dbo].[Session] ([sessionid], [gid], [cid], [tid], [rid], [lid], [date], [status]) VALUES (5, 1, 2, 2, 1, 2, CAST(N'2023-03-17' AS Date), 0)
INSERT [dbo].[Session] ([sessionid], [gid], [cid], [tid], [rid], [lid], [date], [status]) VALUES (6, 1, 1, 1, 1, 3, CAST(N'2023-03-17' AS Date), 1)
INSERT [dbo].[Session] ([sessionid], [gid], [cid], [tid], [rid], [lid], [date], [status]) VALUES (8, 5, 2, 3, 4, 7, CAST(N'2023-03-14' AS Date), 0)
INSERT [dbo].[Session] ([sessionid], [gid], [cid], [tid], [rid], [lid], [date], [status]) VALUES (9, 3, 5, 4, 3, 8, CAST(N'2023-03-20' AS Date), 0)
INSERT [dbo].[Session] ([sessionid], [gid], [cid], [tid], [rid], [lid], [date], [status]) VALUES (10, 2, 4, 3, 2, 1, CAST(N'2023-03-19' AS Date), 0)
INSERT [dbo].[Session] ([sessionid], [gid], [cid], [tid], [rid], [lid], [date], [status]) VALUES (11, 4, 5, 1, 3, 8, CAST(N'2023-03-18' AS Date), 0)
INSERT [dbo].[Session] ([sessionid], [gid], [cid], [tid], [rid], [lid], [date], [status]) VALUES (12, 6, 2, 4, 2, 2, CAST(N'2023-03-16' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Session] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([sid], [scode], [sname], [Img], [Email], [Contact], [Gender], [Dob], [accountID]) VALUES (1, N'HE170317', N'Hoang Nghia Hiep', N'https://fap.fpt.edu.vn/ImageHandler.ashx?rollNumber=re4SGIoAAjDwj4TVOXthhQ==&Campus=3', N'hiephnhe170317@fpt.edu.vn', 944417403, 1, CAST(N'2003-04-07' AS Date), 1)
INSERT [dbo].[Student] ([sid], [scode], [sname], [Img], [Email], [Contact], [Gender], [Dob], [accountID]) VALUES (2, N'HE170595', N'Tran Minh Hang', N'https://fap.fpt.edu.vn/ImageHandler.ashx?rollNumber=re4SGIoAAjDwj4TVOXthhQ==&Campus=3', N'hangtmhs170595@fpt.edu.vn', 931273934, 0, CAST(N'2003-11-24' AS Date), 3)
INSERT [dbo].[Student] ([sid], [scode], [sname], [Img], [Email], [Contact], [Gender], [Dob], [accountID]) VALUES (3, N'HE170593', N'Dinh Dang Canh', N'https://fap.fpt.edu.vn/ImageHandler.ashx?rollNumber=re4SGIoAAjDwj4TVOXthhQ==&Campus=3', N'canhddhe170593@fpt.edu.vn', 847284826, 1, CAST(N'2003-02-13' AS Date), 6)
INSERT [dbo].[Student] ([sid], [scode], [sname], [Img], [Email], [Contact], [Gender], [Dob], [accountID]) VALUES (4, N'HE170294', N'Nguyen Minh Hieu', N'https://fap.fpt.edu.vn/ImageHandler.ashx?rollNumber=re4SGIoAAjDwj4TVOXthhQ==&Campus=3', N'hieunmhe170294@fpt.edu.vn', 942348941, 1, CAST(N'2003-05-04' AS Date), 5)
INSERT [dbo].[Student] ([sid], [scode], [sname], [Img], [Email], [Contact], [Gender], [Dob], [accountID]) VALUES (7, N'SS170313', N'Hoang Gia Thuyen', N'https://fap.fpt.edu.vn/ImageHandler.ashx?rollNumber=re4SGIoAAjDwj4TVOXthhQ==&Campus=3', N'thuyenhgss170303@fpt.edu.vn', 234875235, 0, CAST(N'2003-09-30' AS Date), 8)
INSERT [dbo].[Student] ([sid], [scode], [sname], [Img], [Email], [Contact], [Gender], [Dob], [accountID]) VALUES (8, N'QS170432', N'Nguyen Bao Ngan', N'https://fap.fpt.edu.vn/ImageHandler.ashx?rollNumber=re4SGIoAAjDwj4TVOXthhQ==&Campus=3', N'ngannbqs170432@fpt.edu.vn', 387134344, 0, CAST(N'2003-12-23' AS Date), 9)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
INSERT [dbo].[Student_Group] ([sid], [gid]) VALUES (1, 1)
INSERT [dbo].[Student_Group] ([sid], [gid]) VALUES (2, 4)
INSERT [dbo].[Student_Group] ([sid], [gid]) VALUES (3, 1)
INSERT [dbo].[Student_Group] ([sid], [gid]) VALUES (4, 1)
INSERT [dbo].[Student_Group] ([sid], [gid]) VALUES (7, 5)
INSERT [dbo].[Student_Group] ([sid], [gid]) VALUES (8, 6)
GO
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (1, N'(7:30-9:50)')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (2, N'(10:00-12:20)')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (3, N'(12:50-15:10)')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (4, N'(15:20-17:40)')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Course__32D72498F44D2108]    Script Date: 3/20/2023 9:06:47 AM ******/
ALTER TABLE [dbo].[Course] ADD UNIQUE NONCLUSTERED 
(
	[ccode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Group__41FC4D5DA560A593]    Script Date: 3/20/2023 9:06:47 AM ******/
ALTER TABLE [dbo].[Group] ADD UNIQUE NONCLUSTERED 
(
	[gname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Student__F710AA7AD88199BC]    Script Date: 3/20/2023 9:06:47 AM ******/
ALTER TABLE [dbo].[Student] ADD UNIQUE NONCLUSTERED 
(
	[scode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([campusid])
REFERENCES [dbo].[Campus] ([campusid])
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD FOREIGN KEY([sessionid])
REFERENCES [dbo].[Session] ([sessionid])
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Group_Course]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Course] ([cid])
GO
ALTER TABLE [dbo].[Group_Course]  WITH CHECK ADD FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Lecturer]  WITH CHECK ADD FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Course] ([cid])
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD FOREIGN KEY([rid])
REFERENCES [dbo].[Room] ([rid])
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD FOREIGN KEY([tid])
REFERENCES [dbo].[TimeSlot] ([tid])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
