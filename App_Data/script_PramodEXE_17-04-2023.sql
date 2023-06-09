USE [Anupam]
GO
/****** Object:  Table [dbo].[Owl_CityMaster]    Script Date: 17-04-2023 17:21:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_CityMaster](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_CollegeMaster]    Script Date: 17-04-2023 17:21:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_CollegeMaster](
	[CollegeId] [int] IDENTITY(1,1) NOT NULL,
	[CollegeName] [varchar](255) NULL,
	[CollegeMedium] [int] NULL,
	[ReletedCity] [int] NULL,
	[IsDel] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CollegeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_CollegeMedium]    Script Date: 17-04-2023 17:21:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_CollegeMedium](
	[MediumId] [int] IDENTITY(1,1) NOT NULL,
	[MediumType] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MediumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_CourseCategoryMaster]    Script Date: 17-04-2023 17:21:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_CourseCategoryMaster](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CourseCategory] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_CourseMaster]    Script Date: 17-04-2023 17:21:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_CourseMaster](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](50) NULL,
	[RelatedCategory] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_Login]    Script Date: 17-04-2023 17:21:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_Login](
	[UserId] [varchar](100) NOT NULL,
	[Password] [varchar](50) NULL,
	[Log_Count] [int] NULL,
	[Log_Date] [datetime] NULL,
	[Log_IP] [nvarchar](100) NULL,
	[IsDel] [bit] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Owl_Login] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_Status]    Script Date: 17-04-2023 17:21:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_Status](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_StatusMaster]    Script Date: 17-04-2023 17:21:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_StatusMaster](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_StudentDetails]    Script Date: 17-04-2023 17:21:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_StudentDetails](
	[StudentId] [varchar](100) NOT NULL,
	[FatherName] [varchar](50) NULL,
	[ProfilePic] [varchar](50) NULL,
	[FolderName] [varchar](50) NULL,
	[Year_Of_Pass] [date] NULL,
	[MobileNo] [varchar](50) NULL,
 CONSTRAINT [PK_Owl_StudentDetails] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_StudentMaster]    Script Date: 17-04-2023 17:21:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_StudentMaster](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NULL,
	[Email] [varchar](100) NOT NULL,
	[MobileNo] [varchar](50) NULL,
	[AadharNo] [varchar](20) NULL,
	[DOB] [datetime] NULL,
	[StudentAddress] [nvarchar](255) NULL,
	[ReletedCity] [int] NULL,
	[CollegeName] [int] NULL,
	[Category] [int] NULL,
	[Course] [int] NULL,
	[RegDT] [datetime] NULL,
	[StudentStatus] [int] NULL,
	[Remark] [varchar](50) NULL,
	[IsDel] [bit] NULL,
	[Fee] [int] NULL,
	[Passwords] [varchar](50) NULL,
 CONSTRAINT [PK_Owl_StudentMaster] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_StudentPic]    Script Date: 17-04-2023 17:21:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_StudentPic](
	[StudentId] [varchar](100) NOT NULL,
	[PicName] [varchar](50) NULL,
	[FolderName] [varchar](50) NULL,
	[DocName] [varchar](50) NULL,
 CONSTRAINT [PK_Owl_StudentPic] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_TblStuentDoc]    Script Date: 17-04-2023 17:21:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_TblStuentDoc](
	[StudentId] [int] NULL,
	[FolderPath] [varchar](100) NULL,
	[DocName] [varchar](50) NULL,
	[UploadedDate] [date] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Owl_CityMaster] ON 

INSERT [dbo].[Owl_CityMaster] ([CityId], [CityName]) VALUES (1, N'Jhanshi')
INSERT [dbo].[Owl_CityMaster] ([CityId], [CityName]) VALUES (2, N'Sultanpur')
INSERT [dbo].[Owl_CityMaster] ([CityId], [CityName]) VALUES (3, N'Prayagraj')
INSERT [dbo].[Owl_CityMaster] ([CityId], [CityName]) VALUES (4, N'Mirzapur')
INSERT [dbo].[Owl_CityMaster] ([CityId], [CityName]) VALUES (5, N'Indore')
INSERT [dbo].[Owl_CityMaster] ([CityId], [CityName]) VALUES (6, N'Delhi')
INSERT [dbo].[Owl_CityMaster] ([CityId], [CityName]) VALUES (7, N'Kota')
SET IDENTITY_INSERT [dbo].[Owl_CityMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Owl_CollegeMaster] ON 

INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (1, N'MJPGP_Kaushambi', 2, 3, 0)
INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (2, N'ALU', 3, 3, 0)
INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (3, N'BU', 3, 1, 0)
INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (4, N'BHU', 3, 3, 0)
INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (5, N'MCU', 3, 5, 0)
INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (6, N'AKTU', 3, 3, 0)
INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (7, N'SVSU', 3, 1, 0)
INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (8, N'AKS', 3, 5, 0)
INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (9, N'AIM', 3, 6, 0)
SET IDENTITY_INSERT [dbo].[Owl_CollegeMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Owl_CollegeMedium] ON 

INSERT [dbo].[Owl_CollegeMedium] ([MediumId], [MediumType]) VALUES (1, N'Hindi')
INSERT [dbo].[Owl_CollegeMedium] ([MediumId], [MediumType]) VALUES (2, N'English')
INSERT [dbo].[Owl_CollegeMedium] ([MediumId], [MediumType]) VALUES (3, N'Both')
SET IDENTITY_INSERT [dbo].[Owl_CollegeMedium] OFF
GO
SET IDENTITY_INSERT [dbo].[Owl_CourseCategoryMaster] ON 

INSERT [dbo].[Owl_CourseCategoryMaster] ([CategoryId], [CourseCategory]) VALUES (1, N'Technical')
INSERT [dbo].[Owl_CourseCategoryMaster] ([CategoryId], [CourseCategory]) VALUES (2, N'Finance')
INSERT [dbo].[Owl_CourseCategoryMaster] ([CategoryId], [CourseCategory]) VALUES (3, N'Agriculture')
INSERT [dbo].[Owl_CourseCategoryMaster] ([CategoryId], [CourseCategory]) VALUES (4, N'NonTechnical')
INSERT [dbo].[Owl_CourseCategoryMaster] ([CategoryId], [CourseCategory]) VALUES (5, N'Politics')
INSERT [dbo].[Owl_CourseCategoryMaster] ([CategoryId], [CourseCategory]) VALUES (6, N'Social')
SET IDENTITY_INSERT [dbo].[Owl_CourseCategoryMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Owl_CourseMaster] ON 

INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (1, N'B.Tech', 1)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (2, N'MBA', 2)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (3, N'Polytechnic', 1)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (4, N'BCA', 1)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (5, N'MCA', 1)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (6, N'M.Tech', 1)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (7, N'B.Com', 2)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (8, N'BA', 4)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (9, N'MA', 5)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (10, N'B.Boc', 3)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (11, N'B.ed', 6)
SET IDENTITY_INSERT [dbo].[Owl_CourseMaster] OFF
GO
INSERT [dbo].[Owl_Login] ([UserId], [Password], [Log_Count], [Log_Date], [Log_IP], [IsDel], [Status]) VALUES (N'abp243@gmail.com', N'Anup@123', 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', 0, 1)
INSERT [dbo].[Owl_Login] ([UserId], [Password], [Log_Count], [Log_Date], [Log_IP], [IsDel], [Status]) VALUES (N'ajeetkumar739878@gmail.com', N'Ajeet@12', 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', 0, 1)
INSERT [dbo].[Owl_Login] ([UserId], [Password], [Log_Count], [Log_Date], [Log_IP], [IsDel], [Status]) VALUES (N'amitkumar6354@gmail.com', N'Amit@123', 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', 0, 1)
INSERT [dbo].[Owl_Login] ([UserId], [Password], [Log_Count], [Log_Date], [Log_IP], [IsDel], [Status]) VALUES (N'anupkumar734854@gmail.com', N'Anup@123', 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', 0, 1)
INSERT [dbo].[Owl_Login] ([UserId], [Password], [Log_Count], [Log_Date], [Log_IP], [IsDel], [Status]) VALUES (N'priyambaba45@gmail.com', N'Atul@123', 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', 0, 1)
INSERT [dbo].[Owl_Login] ([UserId], [Password], [Log_Count], [Log_Date], [Log_IP], [IsDel], [Status]) VALUES (N'prmod.growel@gmail.com', N'Prmo@123', 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', 0, 1)
INSERT [dbo].[Owl_Login] ([UserId], [Password], [Log_Count], [Log_Date], [Log_IP], [IsDel], [Status]) VALUES (N'shivamyadav5476@gmail.com', N'Shiv@123', 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Owl_Status] ON 

INSERT [dbo].[Owl_Status] ([StatusId], [Status]) VALUES (1, N'Active')
INSERT [dbo].[Owl_Status] ([StatusId], [Status]) VALUES (2, N'Draft')
INSERT [dbo].[Owl_Status] ([StatusId], [Status]) VALUES (3, N'Pending')
INSERT [dbo].[Owl_Status] ([StatusId], [Status]) VALUES (4, N'Hold')
INSERT [dbo].[Owl_Status] ([StatusId], [Status]) VALUES (5, N'Close')
SET IDENTITY_INSERT [dbo].[Owl_Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Owl_StatusMaster] ON 

INSERT [dbo].[Owl_StatusMaster] ([StatusId], [StatusType]) VALUES (1, N'Active')
INSERT [dbo].[Owl_StatusMaster] ([StatusId], [StatusType]) VALUES (2, N'De-Active')
SET IDENTITY_INSERT [dbo].[Owl_StatusMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Owl_StudentMaster] ON 

INSERT [dbo].[Owl_StudentMaster] ([StudentId], [StudentName], [Email], [MobileNo], [AadharNo], [DOB], [StudentAddress], [ReletedCity], [CollegeName], [Category], [Course], [RegDT], [StudentStatus], [Remark], [IsDel], [Fee], [Passwords]) VALUES (29, N'Anupam Kumar', N'abp243@gmail.com', N'7348547604', N'233133412570', CAST(N'2001-07-26T00:00:00.000' AS DateTime), N'Paliyadewapur', 3, 1, 3, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1, N'', 0, 4525, N'Anup@123')
INSERT [dbo].[Owl_StudentMaster] ([StudentId], [StudentName], [Email], [MobileNo], [AadharNo], [DOB], [StudentAddress], [ReletedCity], [CollegeName], [Category], [Course], [RegDT], [StudentStatus], [Remark], [IsDel], [Fee], [Passwords]) VALUES (26, N'Ajeet Kumar', N'ajeetkumar739878@gmail.com', N'7398780003', N'124578963832', CAST(N'2023-04-12T00:00:00.000' AS DateTime), N'Allahabaad', 3, 4, 1, 5, CAST(N'2023-04-12T11:04:09.007' AS DateTime), 1, N'', 0, 78000, N'Ajeet@12')
INSERT [dbo].[Owl_StudentMaster] ([StudentId], [StudentName], [Email], [MobileNo], [AadharNo], [DOB], [StudentAddress], [ReletedCity], [CollegeName], [Category], [Course], [RegDT], [StudentStatus], [Remark], [IsDel], [Fee], [Passwords]) VALUES (28, N'Amit', N'amitkumar6354@gmail.com', N'9628899332', N'124578963832', CAST(N'2023-04-15T00:00:00.000' AS DateTime), N'Paliyadewapur', 3, 1, 1, 5, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1, N'', 0, 45562, N'Amit@123')
INSERT [dbo].[Owl_StudentMaster] ([StudentId], [StudentName], [Email], [MobileNo], [AadharNo], [DOB], [StudentAddress], [ReletedCity], [CollegeName], [Category], [Course], [RegDT], [StudentStatus], [Remark], [IsDel], [Fee], [Passwords]) VALUES (25, N'Anupam Kumar', N'anupkumar734854@gmail.com', N'7348547604', N'233133412570', CAST(N'2023-04-10T00:00:00.000' AS DateTime), N'Paliyadewapur', 5, 5, 2, 2, CAST(N'2023-04-10T18:18:23.437' AS DateTime), 1, N'', 0, 4282, N'Anup@123')
INSERT [dbo].[Owl_StudentMaster] ([StudentId], [StudentName], [Email], [MobileNo], [AadharNo], [DOB], [StudentAddress], [ReletedCity], [CollegeName], [Category], [Course], [RegDT], [StudentStatus], [Remark], [IsDel], [Fee], [Passwords]) VALUES (21, N'Atul kumar', N'priyambaba45@gmail.com', N'7348547604', N'45124785236123', CAST(N'2023-04-08T00:00:00.000' AS DateTime), N'Muradabaad', 4, 9, 1, 6, CAST(N'2023-04-08T11:28:52.577' AS DateTime), 1, N'', 0, 7800, N'Atul@123')
INSERT [dbo].[Owl_StudentMaster] ([StudentId], [StudentName], [Email], [MobileNo], [AadharNo], [DOB], [StudentAddress], [ReletedCity], [CollegeName], [Category], [Course], [RegDT], [StudentStatus], [Remark], [IsDel], [Fee], [Passwords]) VALUES (22, N'Prmod sir', N'prmod.growel@gmail.com', N'9628899332', N'5554447788883', CAST(N'2023-04-09T00:00:00.000' AS DateTime), N'Paliyadewapur', 3, 6, 1, 6, CAST(N'2023-04-08T11:34:00.087' AS DateTime), 1, N'', 0, 452222, N'Prmo@123')
INSERT [dbo].[Owl_StudentMaster] ([StudentId], [StudentName], [Email], [MobileNo], [AadharNo], [DOB], [StudentAddress], [ReletedCity], [CollegeName], [Category], [Course], [RegDT], [StudentStatus], [Remark], [IsDel], [Fee], [Passwords]) VALUES (27, N'Shivam Yadav', N'shivamyadav5476@gmail.com', N'7398780003', N'124578963832', CAST(N'2023-04-13T00:00:00.000' AS DateTime), N'Chilbila', 4, 6, 2, 2, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1, N'', 0, 12004, N'Shiv@123')
SET IDENTITY_INSERT [dbo].[Owl_StudentMaster] OFF
GO
INSERT [dbo].[Owl_StudentPic] ([StudentId], [PicName], [FolderName], [DocName]) VALUES (N'abp243@gmail.com', N'29_Anupam.jpg', N'D:\AnupamKumar\pramodSourceSystem\images\29_Anupam', N'')
INSERT [dbo].[Owl_StudentPic] ([StudentId], [PicName], [FolderName], [DocName]) VALUES (N'ajeetkumar739878@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Owl_StudentPic] ([StudentId], [PicName], [FolderName], [DocName]) VALUES (N'amitkumar6354@gmail.com', N'28_Anupam.jpg', N'D:\AnupamKumar\pramodSourceSystem\images\28_Anupam', N'')
INSERT [dbo].[Owl_StudentPic] ([StudentId], [PicName], [FolderName], [DocName]) VALUES (N'anupkumar734854@gmail.com', N'25_Anupam.jpg', N'D:\AnupamKumar\pramodSourceSystem\images\25_Anupam', N'')
INSERT [dbo].[Owl_StudentPic] ([StudentId], [PicName], [FolderName], [DocName]) VALUES (N'priyambaba45@gmail.com', N'21_Atul.jpg', N'D:\AnupamKumar\pramodSourceSystem\images\21_Atul.j', N'')
INSERT [dbo].[Owl_StudentPic] ([StudentId], [PicName], [FolderName], [DocName]) VALUES (N'prmod.growel@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Owl_StudentPic] ([StudentId], [PicName], [FolderName], [DocName]) VALUES (N'shivamyadav5476@gmail.com', N'27_Atul.jpg', N'D:\AnupamKumar\pramodSourceSystem\images\27_Atul.j', N'')
GO
ALTER TABLE [dbo].[Owl_CollegeMaster]  WITH CHECK ADD FOREIGN KEY([CollegeMedium])
REFERENCES [dbo].[Owl_CollegeMedium] ([MediumId])
GO
ALTER TABLE [dbo].[Owl_CollegeMaster]  WITH CHECK ADD FOREIGN KEY([ReletedCity])
REFERENCES [dbo].[Owl_CityMaster] ([CityId])
GO
ALTER TABLE [dbo].[Owl_CourseMaster]  WITH CHECK ADD FOREIGN KEY([RelatedCategory])
REFERENCES [dbo].[Owl_CourseCategoryMaster] ([CategoryId])
GO
ALTER TABLE [dbo].[Owl_Login]  WITH CHECK ADD  CONSTRAINT [FK_Owl_Login_Owl_StatusMaster] FOREIGN KEY([Status])
REFERENCES [dbo].[Owl_StatusMaster] ([StatusId])
GO
ALTER TABLE [dbo].[Owl_Login] CHECK CONSTRAINT [FK_Owl_Login_Owl_StatusMaster]
GO
ALTER TABLE [dbo].[Owl_Login]  WITH CHECK ADD  CONSTRAINT [FK_Owl_Login_Owl_StudentMaster] FOREIGN KEY([UserId])
REFERENCES [dbo].[Owl_StudentMaster] ([Email])
GO
ALTER TABLE [dbo].[Owl_Login] CHECK CONSTRAINT [FK_Owl_Login_Owl_StudentMaster]
GO
ALTER TABLE [dbo].[Owl_StudentDetails]  WITH CHECK ADD  CONSTRAINT [FK_Owl_StudentDetails_Owl_StudentMaster] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Owl_StudentMaster] ([Email])
GO
ALTER TABLE [dbo].[Owl_StudentDetails] CHECK CONSTRAINT [FK_Owl_StudentDetails_Owl_StudentMaster]
GO
ALTER TABLE [dbo].[Owl_StudentMaster]  WITH CHECK ADD  CONSTRAINT [FK__Owl_Stude__Categ__114A936A] FOREIGN KEY([Category])
REFERENCES [dbo].[Owl_CourseCategoryMaster] ([CategoryId])
GO
ALTER TABLE [dbo].[Owl_StudentMaster] CHECK CONSTRAINT [FK__Owl_Stude__Categ__114A936A]
GO
ALTER TABLE [dbo].[Owl_StudentMaster]  WITH CHECK ADD  CONSTRAINT [FK__Owl_Stude__Colle__10566F31] FOREIGN KEY([CollegeName])
REFERENCES [dbo].[Owl_CollegeMaster] ([CollegeId])
GO
ALTER TABLE [dbo].[Owl_StudentMaster] CHECK CONSTRAINT [FK__Owl_Stude__Colle__10566F31]
GO
ALTER TABLE [dbo].[Owl_StudentMaster]  WITH CHECK ADD  CONSTRAINT [FK__Owl_Stude__Cours__123EB7A3] FOREIGN KEY([Course])
REFERENCES [dbo].[Owl_CourseMaster] ([CourseId])
GO
ALTER TABLE [dbo].[Owl_StudentMaster] CHECK CONSTRAINT [FK__Owl_Stude__Cours__123EB7A3]
GO
ALTER TABLE [dbo].[Owl_StudentMaster]  WITH CHECK ADD  CONSTRAINT [FK__Owl_Stude__Relet__0F624AF8] FOREIGN KEY([ReletedCity])
REFERENCES [dbo].[Owl_CityMaster] ([CityId])
GO
ALTER TABLE [dbo].[Owl_StudentMaster] CHECK CONSTRAINT [FK__Owl_Stude__Relet__0F624AF8]
GO
ALTER TABLE [dbo].[Owl_StudentPic]  WITH CHECK ADD  CONSTRAINT [FK_Owl_StudentPic_Owl_StudentMaster] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Owl_StudentMaster] ([Email])
GO
ALTER TABLE [dbo].[Owl_StudentPic] CHECK CONSTRAINT [FK_Owl_StudentPic_Owl_StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[StudentDataOperation]    Script Date: 17-04-2023 17:21:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[StudentDataOperation]
(
@Ind int=0,
@StudentId int=0,
@StudentName varchar(50)='',
@Email varchar(100)='',
@MobileNo varchar(50)='',
@Aadhar varchar(20)='',
@DOB datetime='1900/01/01',
@StudentAddress varchar(510)='',
@ReletedCity int='',
@CollegeName int='',
@Category int='',
@Course int='',
@RegDT datetime ='' ,
@StudentStatus int='',
@Remark varchar(50)='',
@IsDel bit=0,
@Fee int='',
@PIC varchar(50)='',
@FolderPath varchar(50)='',
@DocName varchar(50)='',
@Passwords varchar(50)='',
@Log_Count int='',
@Log_Date datetime='',
@Log_IP nvarchar(50)='',
@PicName varchar(50)='',
@FolderName varchar(50)=''
)
as
Begin
     --select '' StudentName,''Email,''MobileNo,''AadharNo,''StudentAddress,''DOB,''CityName,''CollegeName,''CourseName,''CourseCategory
  If(@Ind=1)
  Begin
       Select * From Owl_CollegeMaster order by CollegeName desc
	   Select * From Owl_CityMaster
	   Select * From Owl_CourseCategoryMaster
	   Select * From Owl_CourseMaster
	 
   End
   If(@ind=2)
   Begin	
	 Declare @DblCount TinyInt=0;
	 Select @DblCount=Count(*) From Owl_StudentMaster Where upper(Email)=upper(@Email);	
	 If(@DblCount=0)
	 Begin
		insert into Owl_StudentMaster values(@StudentName,@Email,@MobileNo,@Aadhar,@DOB,@StudentAddress,@ReletedCity,
		@CollegeName,@Category,@Course,@RegDT,@StudentStatus,@Remark,@IsDel,@Fee,@Passwords);
		insert into Owl_Login values (@Email,@Passwords,@Log_Count,@Log_Date,@Log_IP,@IsDel,@StudentStatus)
		insert into Owl_StudentPic(StudentId)values (@Email)
		Select '1' SuccessCode,'Data Saved successfully !!!' msg
	End
	Else
	Begin
		Select '0' SuccessCode,'Email id already exists !!!' msg
	End
   End
   if(@Ind=3)
   Begin
         Select s.StudentId,s.StudentName,s.Email,s.MobileNo,s.AadharNo,s.StudentAddress,cast(s.DOB as date)DOB,d.CityName,
		 b.CollegeName,c.CourseName,e.CourseCategory
		 from Owl_StudentMaster s
		 inner join Owl_CityMaster d on  s.ReletedCity=d.CityId
		 inner join Owl_CollegeMaster b on s.CollegeName=b.CollegeId
		 inner join Owl_CourseMaster c on s.Course=c.CourseId
		 inner join Owl_CourseCategoryMaster e on s.Category=e.CategoryId
		 
		 
   End
   If(@Ind=4)
   Begin
     Declare @IsTrue SmallInt;
       select @IsTrue =Count(UserId) from Owl_Login where UserId=@Email and Password=@Passwords	  
	   if(@IsTrue>0) 
	   Begin
	       select '1' Result,   Upper(MT.StudentName) StudentName,	MT.Email,MT.MobileNo,MT.AadharNo,
		   convert(varchar, MT.DOB, 105) DOB, MT.StudentAddress,MT.Fee,MT.StudentId,MT.CollegeName,
		   MT.ReletedCity as CityName,MT.Course as CourseName,MT.Category  CourseCategory,sp.PicName from  Owl_StudentMaster MT 
           inner join Owl_CollegeMaster CT on CT.CollegeId=MT.CollegeName
		   inner join Owl_CityMaster c on c.CityId=MT.ReletedCity
		   inner join Owl_CourseMaster d on d.CourseId=MT.Course
		   inner join Owl_CourseCategoryMaster e on e.CategoryId=MT.Category
		   inner join Owl_StudentPic sp on sp.StudentId =MT.Email
		   where MT.Email=@Email
		
	   END
	   Else
	   Begin
	    Select '0' Result,'User id or Password Not Match !!!' ResultMsg;
	   END
       
   End
    if(@Ind=5)
	 begin
	        Update Owl_StudentMaster set MobileNo=@MobileNo,DOB=@DOB,StudentAddress=@StudentAddress,ReletedCity=@ReletedCity,
			CollegeName=@CollegeName,Category=@Category,Course=@Course,Fee=@Fee where Email=@Email
            Update Owl_StudentPic set PicName=@PicName,FolderName=@FolderName,DocName=@DocName where StudentId=@Email
			
	 End	 
End 
GO
