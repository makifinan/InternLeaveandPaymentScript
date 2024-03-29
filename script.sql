USE [InterneeLeaveandPaymentDB]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 5.03.2024 16:49:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Day]    Script Date: 5.03.2024 16:49:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Day](
	[DayID] [int] IDENTITY(1,1) NOT NULL,
	[DayName] [varchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Day] PRIMARY KEY CLUSTERED 
(
	[DayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 5.03.2024 16:49:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](100) NULL,
	[DepartmentManagerID] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DutyStation]    Script Date: 5.03.2024 16:49:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DutyStation](
	[DutyStationID] [int] IDENTITY(1,1) NOT NULL,
	[DutyStationName] [varchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_DutyStation] PRIMARY KEY CLUSTERED 
(
	[DutyStationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 5.03.2024 16:49:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[EmployeeSurname] [nvarchar](100) NULL,
	[EmployeeDepartmentID] [int] NULL,
	[Email] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeScreen]    Script Date: 5.03.2024 16:49:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeScreen](
	[EmployeeScreenID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NULL,
	[ScreenID] [int] NULL,
 CONSTRAINT [PK_EmployeeScreen] PRIMARY KEY CLUSTERED 
(
	[EmployeeScreenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intern]    Script Date: 5.03.2024 16:49:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intern](
	[InternID] [int] IDENTITY(1,1) NOT NULL,
	[InternName] [nvarchar](100) NULL,
	[InternSurname] [nvarchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[InternCompanyID] [int] NULL,
	[InternSchool] [nvarchar](100) NULL,
	[InternSchoolDepartment] [nvarchar](100) NULL,
	[InternManagerID] [int] NULL,
	[InternDepartmentID] [int] NULL,
	[InternDutyStationID] [int] NULL,
	[InternIntershipTypeID] [int] NULL,
	[InternPhoneNumber] [varchar](50) NULL,
	[InternResponsibleTeacher] [nvarchar](100) NULL,
	[InternTeacherPhone] [varchar](50) NULL,
	[InternContactPerson] [varchar](100) NULL,
	[InternContactPersonPhone] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[City] [varchar](100) NULL,
 CONSTRAINT [PK_Intern] PRIMARY KEY CLUSTERED 
(
	[InternID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InternDay]    Script Date: 5.03.2024 16:49:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternDay](
	[InternDaysID] [int] IDENTITY(1,1) NOT NULL,
	[InternID] [int] NULL,
	[DayID] [int] NULL,
 CONSTRAINT [PK_InternDay] PRIMARY KEY CLUSTERED 
(
	[InternDaysID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InternLeave]    Script Date: 5.03.2024 16:49:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternLeave](
	[InternLeaveID] [int] IDENTITY(1,1) NOT NULL,
	[InternID] [int] NULL,
	[PermissionTypeID] [int] NULL,
	[StatuID] [int] NULL,
	[ResponsibleID] [int] NULL,
	[LeaveStartDate] [datetime] NULL,
	[LeaveEndDate] [datetime] NULL,
	[LeaveDescription] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_InternLeave] PRIMARY KEY CLUSTERED 
(
	[InternLeaveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InternLeaveDetail]    Script Date: 5.03.2024 16:49:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternLeaveDetail](
	[InternLeaveDetailID] [int] IDENTITY(1,1) NOT NULL,
	[InternLeaveID] [int] NULL,
	[StatuID] [int] NULL,
	[ApprovalPerson] [int] NULL,
 CONSTRAINT [PK_InternLeaveDetail] PRIMARY KEY CLUSTERED 
(
	[InternLeaveDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InternshipType]    Script Date: 5.03.2024 16:49:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternshipType](
	[InternshipTypeID] [int] IDENTITY(1,1) NOT NULL,
	[InternshipTypeName] [varchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_InternshipType] PRIMARY KEY CLUSTERED 
(
	[InternshipTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionType]    Script Date: 5.03.2024 16:49:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionType](
	[PermissionTypeID] [int] IDENTITY(1,1) NOT NULL,
	[PermissionTypeName] [varchar](100) NULL,
	[IsActive] [nchar](10) NULL,
 CONSTRAINT [PK_PermissionType] PRIMARY KEY CLUSTERED 
(
	[PermissionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screeen]    Script Date: 5.03.2024 16:49:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screeen](
	[ScreenID] [int] IDENTITY(1,1) NOT NULL,
	[ScreenName] [varchar](100) NULL,
 CONSTRAINT [PK_Screeen] PRIMARY KEY CLUSTERED 
(
	[ScreenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statu]    Script Date: 5.03.2024 16:49:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statu](
	[StatuID] [int] IDENTITY(1,1) NOT NULL,
	[StatuName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Statu] PRIMARY KEY CLUSTERED 
(
	[StatuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([CompanyID], [CompanyName], [IsActive]) VALUES (1, N'MEDAŞ', 1)
INSERT [dbo].[Company] ([CompanyID], [CompanyName], [IsActive]) VALUES (2, N'MEPAŞ', 1)
INSERT [dbo].[Company] ([CompanyID], [CompanyName], [IsActive]) VALUES (3, N'Alarko', 1)
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[Day] ON 

INSERT [dbo].[Day] ([DayID], [DayName], [IsActive]) VALUES (1, N'Pazartesi', 1)
INSERT [dbo].[Day] ([DayID], [DayName], [IsActive]) VALUES (2, N'Salı', 1)
INSERT [dbo].[Day] ([DayID], [DayName], [IsActive]) VALUES (3, N'Çarşamba', 1)
INSERT [dbo].[Day] ([DayID], [DayName], [IsActive]) VALUES (4, N'Perşembe', 1)
INSERT [dbo].[Day] ([DayID], [DayName], [IsActive]) VALUES (5, N'Cuma', 1)
INSERT [dbo].[Day] ([DayID], [DayName], [IsActive]) VALUES (6, N'Cumartesi', 1)
INSERT [dbo].[Day] ([DayID], [DayName], [IsActive]) VALUES (7, N'Pazar', 1)
SET IDENTITY_INSERT [dbo].[Day] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentID], [DepartmentName], [DepartmentManagerID], [IsActive]) VALUES (1, N'Bilgi İşlem', 1, 1)
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName], [DepartmentManagerID], [IsActive]) VALUES (2, N'İnsan Kaynakları ve Organizasyon Metot Müdürlüğü', 2, 1)
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[DutyStation] ON 

INSERT [dbo].[DutyStation] ([DutyStationID], [DutyStationName], [IsActive]) VALUES (1, N'Genel Müdürlük', 1)
INSERT [dbo].[DutyStation] ([DutyStationID], [DutyStationName], [IsActive]) VALUES (2, N'İşletme', 1)
SET IDENTITY_INSERT [dbo].[DutyStation] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeSurname], [EmployeeDepartmentID], [Email], [Password], [CreatedDate], [IsActive]) VALUES (1, N'Mehmet Ali', N'Çolak', 1, N'MehmetAli.Kocak@meramedas.com.tr', N'123', CAST(N'2024-03-01T15:37:05.233' AS DateTime), 1)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeSurname], [EmployeeDepartmentID], [Email], [Password], [CreatedDate], [IsActive]) VALUES (2, N'Gamze ', N'Tosun', 2, N'Gamze.Tosun@meramedas.com.tr', N'123', CAST(N'2024-03-01T15:38:06.457' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeScreen] ON 

INSERT [dbo].[EmployeeScreen] ([EmployeeScreenID], [EmployeeID], [ScreenID]) VALUES (1, 1, 1)
INSERT [dbo].[EmployeeScreen] ([EmployeeScreenID], [EmployeeID], [ScreenID]) VALUES (2, 1, 2)
INSERT [dbo].[EmployeeScreen] ([EmployeeScreenID], [EmployeeID], [ScreenID]) VALUES (3, 1, 3)
INSERT [dbo].[EmployeeScreen] ([EmployeeScreenID], [EmployeeID], [ScreenID]) VALUES (4, 2, 1)
INSERT [dbo].[EmployeeScreen] ([EmployeeScreenID], [EmployeeID], [ScreenID]) VALUES (5, 2, 2)
INSERT [dbo].[EmployeeScreen] ([EmployeeScreenID], [EmployeeID], [ScreenID]) VALUES (6, 2, 3)
SET IDENTITY_INSERT [dbo].[EmployeeScreen] OFF
GO
SET IDENTITY_INSERT [dbo].[Intern] ON 

INSERT [dbo].[Intern] ([InternID], [InternName], [InternSurname], [Email], [Password], [InternCompanyID], [InternSchool], [InternSchoolDepartment], [InternManagerID], [InternDepartmentID], [InternDutyStationID], [InternIntershipTypeID], [InternPhoneNumber], [InternResponsibleTeacher], [InternTeacherPhone], [InternContactPerson], [InternContactPersonPhone], [CreatedDate], [IsActive], [City]) VALUES (1, N'Hatice', N'Bakıcı', N'hbakirci@outlook.com', N'123', 1, N'Hekimoğlu ML', N'Bilişim', 2, 2, 1, 1, N'5554446688', N'Celal ŞENGÖR', N'5056666666', N'Ramazan BAKICI', N'5055555555', CAST(N'2024-03-01T15:48:31.870' AS DateTime), 1, NULL)
INSERT [dbo].[Intern] ([InternID], [InternName], [InternSurname], [Email], [Password], [InternCompanyID], [InternSchool], [InternSchoolDepartment], [InternManagerID], [InternDepartmentID], [InternDutyStationID], [InternIntershipTypeID], [InternPhoneNumber], [InternResponsibleTeacher], [InternTeacherPhone], [InternContactPerson], [InternContactPersonPhone], [CreatedDate], [IsActive], [City]) VALUES (2, N'Akif', N'İNAN', N'm.akifinan@outlook.com.tr', N'123', 1, N'ISPARTA UYGULAMALI BİLİMLER ÜNİVERSİTESİ', N'ELEKTRİK ELEKTRONİK MÜHENDİSLİĞİ', 1, 1, 1, 1, N'543421422', N'OKAN BİNGÖL', N'546787987544', N'AHMET İNAN', N'5432535355', CAST(N'2024-03-01T18:44:13.880' AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[Intern] OFF
GO
SET IDENTITY_INSERT [dbo].[InternDay] ON 

INSERT [dbo].[InternDay] ([InternDaysID], [InternID], [DayID]) VALUES (1, 1, 1)
INSERT [dbo].[InternDay] ([InternDaysID], [InternID], [DayID]) VALUES (2, 1, 2)
INSERT [dbo].[InternDay] ([InternDaysID], [InternID], [DayID]) VALUES (3, 1, 3)
INSERT [dbo].[InternDay] ([InternDaysID], [InternID], [DayID]) VALUES (4, 2, 1)
INSERT [dbo].[InternDay] ([InternDaysID], [InternID], [DayID]) VALUES (5, 2, 2)
INSERT [dbo].[InternDay] ([InternDaysID], [InternID], [DayID]) VALUES (6, 2, 3)
INSERT [dbo].[InternDay] ([InternDaysID], [InternID], [DayID]) VALUES (7, 2, 4)
INSERT [dbo].[InternDay] ([InternDaysID], [InternID], [DayID]) VALUES (8, 2, 5)
INSERT [dbo].[InternDay] ([InternDaysID], [InternID], [DayID]) VALUES (9, 2, 6)
SET IDENTITY_INSERT [dbo].[InternDay] OFF
GO
SET IDENTITY_INSERT [dbo].[InternLeave] ON 

INSERT [dbo].[InternLeave] ([InternLeaveID], [InternID], [PermissionTypeID], [StatuID], [ResponsibleID], [LeaveStartDate], [LeaveEndDate], [LeaveDescription], [CreatedDate], [IsActive]) VALUES (1, 1, 1, 1, 1, CAST(N'2024-03-02T20:50:23.977' AS DateTime), CAST(N'2024-03-02T20:50:23.977' AS DateTime), N'deneme', CAST(N'2024-03-02T23:51:08.120' AS DateTime), NULL)
INSERT [dbo].[InternLeave] ([InternLeaveID], [InternID], [PermissionTypeID], [StatuID], [ResponsibleID], [LeaveStartDate], [LeaveEndDate], [LeaveDescription], [CreatedDate], [IsActive]) VALUES (2, 1, 1, 1, 1, CAST(N'2024-03-02T20:56:02.173' AS DateTime), CAST(N'2024-03-02T20:56:02.173' AS DateTime), N'deneme', CAST(N'2024-03-02T23:56:55.273' AS DateTime), NULL)
INSERT [dbo].[InternLeave] ([InternLeaveID], [InternID], [PermissionTypeID], [StatuID], [ResponsibleID], [LeaveStartDate], [LeaveEndDate], [LeaveDescription], [CreatedDate], [IsActive]) VALUES (3, 1, 1, 1, 1, CAST(N'2024-03-02T20:56:02.173' AS DateTime), CAST(N'2024-03-02T20:56:02.173' AS DateTime), N'deneme', CAST(N'2024-03-02T23:58:30.060' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[InternLeave] OFF
GO
SET IDENTITY_INSERT [dbo].[InternLeaveDetail] ON 

INSERT [dbo].[InternLeaveDetail] ([InternLeaveDetailID], [InternLeaveID], [StatuID], [ApprovalPerson]) VALUES (2, 2, 1, 1)
INSERT [dbo].[InternLeaveDetail] ([InternLeaveDetailID], [InternLeaveID], [StatuID], [ApprovalPerson]) VALUES (3, 3, 1, 1)
SET IDENTITY_INSERT [dbo].[InternLeaveDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[InternshipType] ON 

INSERT [dbo].[InternshipType] ([InternshipTypeID], [InternshipTypeName], [IsActive]) VALUES (1, N'Yaz Dönemi Stajı', 1)
INSERT [dbo].[InternshipType] ([InternshipTypeID], [InternshipTypeName], [IsActive]) VALUES (2, N'Talentern', 1)
INSERT [dbo].[InternshipType] ([InternshipTypeID], [InternshipTypeName], [IsActive]) VALUES (3, N'Koza Projesi', 1)
INSERT [dbo].[InternshipType] ([InternshipTypeID], [InternshipTypeName], [IsActive]) VALUES (4, N'Lise Stajı', 1)
SET IDENTITY_INSERT [dbo].[InternshipType] OFF
GO
SET IDENTITY_INSERT [dbo].[PermissionType] ON 

INSERT [dbo].[PermissionType] ([PermissionTypeID], [PermissionTypeName], [IsActive]) VALUES (1, N'Özel İzin', N'1         ')
INSERT [dbo].[PermissionType] ([PermissionTypeID], [PermissionTypeName], [IsActive]) VALUES (2, N'Sınav İzni', N'1         ')
SET IDENTITY_INSERT [dbo].[PermissionType] OFF
GO
SET IDENTITY_INSERT [dbo].[Screeen] ON 

INSERT [dbo].[Screeen] ([ScreenID], [ScreenName]) VALUES (1, N'İzin Kaydı')
INSERT [dbo].[Screeen] ([ScreenID], [ScreenName]) VALUES (2, N'Stajyer Listesi')
INSERT [dbo].[Screeen] ([ScreenID], [ScreenName]) VALUES (3, N'Stajyer Kaydı')
SET IDENTITY_INSERT [dbo].[Screeen] OFF
GO
SET IDENTITY_INSERT [dbo].[Statu] ON 

INSERT [dbo].[Statu] ([StatuID], [StatuName], [IsActive]) VALUES (1, N'Onay Bekliyor', 1)
INSERT [dbo].[Statu] ([StatuID], [StatuName], [IsActive]) VALUES (2, N'Onaylandı', 1)
INSERT [dbo].[Statu] ([StatuID], [StatuName], [IsActive]) VALUES (3, N'Onaylanmadı', 1)
INSERT [dbo].[Statu] ([StatuID], [StatuName], [IsActive]) VALUES (4, N'Sorumlu Onayında', 1)
SET IDENTITY_INSERT [dbo].[Statu] OFF
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Intern] ADD  CONSTRAINT [DF_Intern_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Intern] ADD  CONSTRAINT [DF_Intern_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[InternLeave] ADD  CONSTRAINT [DF_InternLeave_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[InternLeave] ADD  CONSTRAINT [DF_InternLeave_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[EmployeeScreen]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeScreen_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[EmployeeScreen] CHECK CONSTRAINT [FK_EmployeeScreen_Employee]
GO
ALTER TABLE [dbo].[EmployeeScreen]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeScreen_Screeen] FOREIGN KEY([ScreenID])
REFERENCES [dbo].[Screeen] ([ScreenID])
GO
ALTER TABLE [dbo].[EmployeeScreen] CHECK CONSTRAINT [FK_EmployeeScreen_Screeen]
GO
ALTER TABLE [dbo].[Intern]  WITH CHECK ADD  CONSTRAINT [FK_Intern_Company] FOREIGN KEY([InternCompanyID])
REFERENCES [dbo].[Company] ([CompanyID])
GO
ALTER TABLE [dbo].[Intern] CHECK CONSTRAINT [FK_Intern_Company]
GO
ALTER TABLE [dbo].[Intern]  WITH CHECK ADD  CONSTRAINT [FK_Intern_Department] FOREIGN KEY([InternDepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Intern] CHECK CONSTRAINT [FK_Intern_Department]
GO
ALTER TABLE [dbo].[Intern]  WITH CHECK ADD  CONSTRAINT [FK_Intern_DutyStation] FOREIGN KEY([InternDutyStationID])
REFERENCES [dbo].[DutyStation] ([DutyStationID])
GO
ALTER TABLE [dbo].[Intern] CHECK CONSTRAINT [FK_Intern_DutyStation]
GO
ALTER TABLE [dbo].[Intern]  WITH CHECK ADD  CONSTRAINT [FK_Intern_Employee] FOREIGN KEY([InternManagerID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Intern] CHECK CONSTRAINT [FK_Intern_Employee]
GO
ALTER TABLE [dbo].[Intern]  WITH CHECK ADD  CONSTRAINT [FK_Intern_InternshipType] FOREIGN KEY([InternIntershipTypeID])
REFERENCES [dbo].[InternshipType] ([InternshipTypeID])
GO
ALTER TABLE [dbo].[Intern] CHECK CONSTRAINT [FK_Intern_InternshipType]
GO
ALTER TABLE [dbo].[InternDay]  WITH CHECK ADD  CONSTRAINT [FK_InternDay_Day] FOREIGN KEY([DayID])
REFERENCES [dbo].[Day] ([DayID])
GO
ALTER TABLE [dbo].[InternDay] CHECK CONSTRAINT [FK_InternDay_Day]
GO
ALTER TABLE [dbo].[InternDay]  WITH CHECK ADD  CONSTRAINT [FK_InternDay_Intern] FOREIGN KEY([InternID])
REFERENCES [dbo].[Intern] ([InternID])
GO
ALTER TABLE [dbo].[InternDay] CHECK CONSTRAINT [FK_InternDay_Intern]
GO
ALTER TABLE [dbo].[InternLeave]  WITH CHECK ADD  CONSTRAINT [FK_InternLeave_Employee] FOREIGN KEY([ResponsibleID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[InternLeave] CHECK CONSTRAINT [FK_InternLeave_Employee]
GO
ALTER TABLE [dbo].[InternLeave]  WITH CHECK ADD  CONSTRAINT [FK_InternLeave_Intern] FOREIGN KEY([InternID])
REFERENCES [dbo].[Intern] ([InternID])
GO
ALTER TABLE [dbo].[InternLeave] CHECK CONSTRAINT [FK_InternLeave_Intern]
GO
ALTER TABLE [dbo].[InternLeave]  WITH CHECK ADD  CONSTRAINT [FK_InternLeave_PermissionType] FOREIGN KEY([PermissionTypeID])
REFERENCES [dbo].[PermissionType] ([PermissionTypeID])
GO
ALTER TABLE [dbo].[InternLeave] CHECK CONSTRAINT [FK_InternLeave_PermissionType]
GO
ALTER TABLE [dbo].[InternLeave]  WITH CHECK ADD  CONSTRAINT [FK_InternLeave_Statu] FOREIGN KEY([StatuID])
REFERENCES [dbo].[Statu] ([StatuID])
GO
ALTER TABLE [dbo].[InternLeave] CHECK CONSTRAINT [FK_InternLeave_Statu]
GO
ALTER TABLE [dbo].[InternLeaveDetail]  WITH CHECK ADD  CONSTRAINT [FK_InternLeaveDetail_Employee] FOREIGN KEY([ApprovalPerson])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[InternLeaveDetail] CHECK CONSTRAINT [FK_InternLeaveDetail_Employee]
GO
ALTER TABLE [dbo].[InternLeaveDetail]  WITH CHECK ADD  CONSTRAINT [FK_InternLeaveDetail_InternLeave] FOREIGN KEY([InternLeaveID])
REFERENCES [dbo].[InternLeave] ([InternLeaveID])
GO
ALTER TABLE [dbo].[InternLeaveDetail] CHECK CONSTRAINT [FK_InternLeaveDetail_InternLeave]
GO
ALTER TABLE [dbo].[InternLeaveDetail]  WITH CHECK ADD  CONSTRAINT [FK_InternLeaveDetail_Statu] FOREIGN KEY([StatuID])
REFERENCES [dbo].[Statu] ([StatuID])
GO
ALTER TABLE [dbo].[InternLeaveDetail] CHECK CONSTRAINT [FK_InternLeaveDetail_Statu]
GO
