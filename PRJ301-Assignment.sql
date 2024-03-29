USE [PRJ_diemdanh]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 19/03/2023 9:19:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[sid] [int] NOT NULL,
	[sessionID] [int] NOT NULL,
	[status] [bit] NOT NULL,
	[comment] [varchar](200) NULL,
	[aid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 19/03/2023 9:19:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 19/03/2023 9:19:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[groupID] [int] IDENTITY(1,1) NOT NULL,
	[groupName] [varchar](100) NOT NULL,
	[cid] [int] NOT NULL,
	[tid] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[groupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 19/03/2023 9:19:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[tid] [int] IDENTITY(1,1) NOT NULL,
	[tname] [nvarchar](150) NOT NULL,
	[tgender] [bit] NOT NULL,
	[tdob] [date] NULL,
	[tgmail] [nvarchar](150) NULL,
	[tphone] [varchar](50) NULL,
	[username] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 19/03/2023 9:19:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[roomID] [int] IDENTITY(1,1) NOT NULL,
	[roomName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[roomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 19/03/2023 9:19:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sessionID] [int] IDENTITY(1,1) NOT NULL,
	[tid] [int] NOT NULL,
	[groupID] [int] NOT NULL,
	[slotID] [int] NOT NULL,
	[roomID] [int] NOT NULL,
	[date] [date] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Sesson] PRIMARY KEY CLUSTERED 
(
	[sessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 19/03/2023 9:19:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[sname] [varchar](50) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
	[sgmail] [nvarchar](50) NOT NULL,
	[sphone] [varchar](50) NOT NULL,
	[username] [varchar](150) NULL,
	[groupID] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 19/03/2023 9:19:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[slotID] [int] NOT NULL,
	[slotTime] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[slotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 19/03/2023 9:19:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NULL,
	[displayname] [varchar](150) NULL,
	[role] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Attendance] ON 

INSERT [dbo].[Attendance] ([sid], [sessionID], [status], [comment], [aid]) VALUES (2, 3, 1, NULL, 2)
INSERT [dbo].[Attendance] ([sid], [sessionID], [status], [comment], [aid]) VALUES (4, 3, 1, N'', 3)
INSERT [dbo].[Attendance] ([sid], [sessionID], [status], [comment], [aid]) VALUES (6, 3, 1, N'', 4)
INSERT [dbo].[Attendance] ([sid], [sessionID], [status], [comment], [aid]) VALUES (9, 3, 1, N'', 5)
INSERT [dbo].[Attendance] ([sid], [sessionID], [status], [comment], [aid]) VALUES (2, 5, 1, N'', 6)
INSERT [dbo].[Attendance] ([sid], [sessionID], [status], [comment], [aid]) VALUES (5, 5, 1, N'', 7)
INSERT [dbo].[Attendance] ([sid], [sessionID], [status], [comment], [aid]) VALUES (2, 10, 1, N'', 8)
INSERT [dbo].[Attendance] ([sid], [sessionID], [status], [comment], [aid]) VALUES (5, 10, 1, N'', 9)
SET IDENTITY_INSERT [dbo].[Attendance] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([cid], [cname]) VALUES (1, N'PRJ301')
INSERT [dbo].[Course] ([cid], [cname]) VALUES (2, N'MAS291')
INSERT [dbo].[Course] ([cid], [cname]) VALUES (3, N'PRO192')
INSERT [dbo].[Course] ([cid], [cname]) VALUES (4, N'JPD123')
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([groupID], [groupName], [cid], [tid]) VALUES (2, N'SE1722', 1, 1)
INSERT [dbo].[Group] ([groupID], [groupName], [cid], [tid]) VALUES (3, N'SE1721', 1, 1)
INSERT [dbo].[Group] ([groupID], [groupName], [cid], [tid]) VALUES (4, N'SE1619', 2, 3)
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([tid], [tname], [tgender], [tdob], [tgmail], [tphone], [username]) VALUES (1, N'SonNT', 1, CAST(N'1997-11-23' AS Date), N'sonnt@gmail.com', N'0987654321', N'sonnt')
INSERT [dbo].[Instructor] ([tid], [tname], [tgender], [tdob], [tgmail], [tphone], [username]) VALUES (2, N'AnhNH', 0, CAST(N'1993-01-01' AS Date), N'anhnh@gmail.com', N'0987654321', N'anhnh')
INSERT [dbo].[Instructor] ([tid], [tname], [tgender], [tdob], [tgmail], [tphone], [username]) VALUES (3, N'LongLT', 1, CAST(N'1989-11-12' AS Date), N'longlt@gmail.com', N'0987654213', N'longlt')
SET IDENTITY_INSERT [dbo].[Instructor] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([roomID], [roomName]) VALUES (1, N'DE221')
INSERT [dbo].[Room] ([roomID], [roomName]) VALUES (2, N'BE304')
INSERT [dbo].[Room] ([roomID], [roomName]) VALUES (3, N'DE219')
INSERT [dbo].[Room] ([roomID], [roomName]) VALUES (4, N'BE303')
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[Session] ON 

INSERT [dbo].[Session] ([sessionID], [tid], [groupID], [slotID], [roomID], [date], [status]) VALUES (1, 1, 2, 1, 2, CAST(N'2023-03-16' AS Date), 1)
INSERT [dbo].[Session] ([sessionID], [tid], [groupID], [slotID], [roomID], [date], [status]) VALUES (3, 3, 2, 2, 3, CAST(N'2023-03-17' AS Date), 1)
INSERT [dbo].[Session] ([sessionID], [tid], [groupID], [slotID], [roomID], [date], [status]) VALUES (4, 2, 3, 2, 3, CAST(N'2023-03-16' AS Date), 1)
INSERT [dbo].[Session] ([sessionID], [tid], [groupID], [slotID], [roomID], [date], [status]) VALUES (5, 3, 3, 4, 1, CAST(N'2023-03-16' AS Date), 1)
INSERT [dbo].[Session] ([sessionID], [tid], [groupID], [slotID], [roomID], [date], [status]) VALUES (6, 1, 2, 1, 2, CAST(N'2023-03-20' AS Date), 1)
INSERT [dbo].[Session] ([sessionID], [tid], [groupID], [slotID], [roomID], [date], [status]) VALUES (7, 3, 2, 2, 3, CAST(N'2023-03-21' AS Date), 0)
INSERT [dbo].[Session] ([sessionID], [tid], [groupID], [slotID], [roomID], [date], [status]) VALUES (9, 2, 4, 3, 2, CAST(N'2023-03-17' AS Date), 0)
INSERT [dbo].[Session] ([sessionID], [tid], [groupID], [slotID], [roomID], [date], [status]) VALUES (10, 3, 3, 4, 2, CAST(N'2023-03-17' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Session] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [sgmail], [sphone], [username], [groupID]) VALUES (2, N'Hoang Mai Phuong', 0, CAST(N'2003-01-29' AS Date), N'hmp2@gmail.com', N'0987654321', N'phuong', 3)
INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [sgmail], [sphone], [username], [groupID]) VALUES (3, N'Nguyen Thi Cam Tu', 0, CAST(N'2003-01-02' AS Date), N'ntct3@gmail.com', N'0987654321', N'tu', 4)
INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [sgmail], [sphone], [username], [groupID]) VALUES (4, N'Doan Ngoc Vu', 1, CAST(N'2003-10-25' AS Date), N'doanngocvu@gmail.com', N'0837251003', N'vu', 2)
INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [sgmail], [sphone], [username], [groupID]) VALUES (5, N'Nguyen Van A', 1, CAST(N'2003-01-01' AS Date), N'nva5@gmail.com', N'0987654321', N'mra', 3)
INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [sgmail], [sphone], [username], [groupID]) VALUES (6, N'Hoang Phan Quoc Dat', 1, CAST(N'2003-08-22' AS Date), N'hpqd6@gmail.com', N'0987654321', N'dat', 2)
INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [sgmail], [sphone], [username], [groupID]) VALUES (9, N'Nguyen Hong Hai', 1, CAST(N'2003-01-17' AS Date), N'nhh7@gmail.com', N'0987654321', N'hai', 2)
INSERT [dbo].[Student] ([sid], [sname], [gender], [dob], [sgmail], [sphone], [username], [groupID]) VALUES (10, N'Nguyen Phuong Anh', 0, CAST(N'2003-05-25' AS Date), N'npa8@gmail.com', N'0987654321', N'anh', 4)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
INSERT [dbo].[TimeSlot] ([slotID], [slotTime]) VALUES (1, N'07:30-09:50')
INSERT [dbo].[TimeSlot] ([slotID], [slotTime]) VALUES (2, N'10:00-12:20')
INSERT [dbo].[TimeSlot] ([slotID], [slotTime]) VALUES (3, N'12:50-15:10')
INSERT [dbo].[TimeSlot] ([slotID], [slotTime]) VALUES (4, N'15:20-17:40')
GO
INSERT [dbo].[User] ([username], [password], [displayname], [role]) VALUES (N'anh', N'anh', N'Ms Anh', 0)
INSERT [dbo].[User] ([username], [password], [displayname], [role]) VALUES (N'anhnh', N'anhnh', N'Ms Anh', 1)
INSERT [dbo].[User] ([username], [password], [displayname], [role]) VALUES (N'dat', N'dat', N'Mr Dat', 0)
INSERT [dbo].[User] ([username], [password], [displayname], [role]) VALUES (N'hai', N'hai', N'Mr Hai', 0)
INSERT [dbo].[User] ([username], [password], [displayname], [role]) VALUES (N'longlt', N'longlt', N'Mr Long', 1)
INSERT [dbo].[User] ([username], [password], [displayname], [role]) VALUES (N'mra', N'mra', N'Mr A', 0)
INSERT [dbo].[User] ([username], [password], [displayname], [role]) VALUES (N'phuong', N'phuong', N'Ms Phuong', 0)
INSERT [dbo].[User] ([username], [password], [displayname], [role]) VALUES (N'sonnt', N'sonnt', N'Mr Superman', 1)
INSERT [dbo].[User] ([username], [password], [displayname], [role]) VALUES (N'tu', N'tu', N'Ms Tu', 0)
INSERT [dbo].[User] ([username], [password], [displayname], [role]) VALUES (N'vu', N'25102003', N'Mr Vu', 0)
GO
ALTER TABLE [dbo].[Instructor] ADD  CONSTRAINT [DF_Teacher_tgmail]  DEFAULT (N'abc@gmail.com') FOR [tgmail]
GO
ALTER TABLE [dbo].[Instructor] ADD  CONSTRAINT [DF_Teacher_tphone]  DEFAULT ((987654321)) FOR [tphone]
GO
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_dob]  DEFAULT (getdate()) FOR [dob]
GO
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_sgmail]  DEFAULT (N'abc@gmail.com') FOR [sgmail]
GO
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_sphone]  DEFAULT ((987654321)) FOR [sphone]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Session] FOREIGN KEY([sessionID])
REFERENCES [dbo].[Session] ([sessionID])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Session]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Course] FOREIGN KEY([cid])
REFERENCES [dbo].[Course] ([cid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Course]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Teacher] FOREIGN KEY([tid])
REFERENCES [dbo].[Instructor] ([tid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Teacher]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_User] FOREIGN KEY([username])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [FK_Teacher_User]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Sesson_Group] FOREIGN KEY([groupID])
REFERENCES [dbo].[Group] ([groupID])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Sesson_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Sesson_Room] FOREIGN KEY([roomID])
REFERENCES [dbo].[Room] ([roomID])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Sesson_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Sesson_Teacher] FOREIGN KEY([tid])
REFERENCES [dbo].[Instructor] ([tid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Sesson_Teacher]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Sesson_Time] FOREIGN KEY([slotID])
REFERENCES [dbo].[TimeSlot] ([slotID])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Sesson_Time]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group] FOREIGN KEY([groupID])
REFERENCES [dbo].[Group] ([groupID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Group]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_User_pw] FOREIGN KEY([username])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_User_pw]
GO
