USE [Sanatorium]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 18.05.2023 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 18.05.2023 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[DoctorId] [int] IDENTITY(1,1) NOT NULL,
	[DoctorSurname] [nvarchar](20) NOT NULL,
	[DoctorName] [nvarchar](20) NOT NULL,
	[DoctorPatronymic] [nvarchar](20) NOT NULL,
	[Phone] [nvarchar](30) NOT NULL,
	[SpecialityId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DoctorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 18.05.2023 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 18.05.2023 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[PatientId] [int] IDENTITY(1,1) NOT NULL,
	[PatientSurname] [nvarchar](20) NOT NULL,
	[PatientName] [nvarchar](20) NOT NULL,
	[PatientPatronymic] [nvarchar](20) NOT NULL,
	[ArrivalDate] [smalldatetime] NOT NULL,
	[DepartureDate] [smalldatetime] NOT NULL,
	[Phone] [nvarchar](30) NOT NULL,
	[Passport] [nvarchar](10) NOT NULL,
	[VisitId] [int] NOT NULL,
	[GenderId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Procedur]    Script Date: 18.05.2023 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Procedur](
	[ProcedureId] [int] IDENTITY(1,1) NOT NULL,
	[ProcedureName] [nvarchar](50) NOT NULL,
	[ProcedureDate] [smalldatetime] NOT NULL,
	[PatientId] [int] NOT NULL,
	[DoctorId] [int] NOT NULL,
	[CabinetNumber] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProcedureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Speciality]    Script Date: 18.05.2023 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speciality](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Speciality] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Visit]    Script Date: 18.05.2023 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Visit] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Id], [Login], [Password]) VALUES (1, N'Stepan', N'Stepan')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Doctor] ON 

INSERT [dbo].[Doctor] ([DoctorId], [DoctorSurname], [DoctorName], [DoctorPatronymic], [Phone], [SpecialityId]) VALUES (1, N'Торотько', N'Яков', N'Евгеньевич', N'89182251235', 3)
INSERT [dbo].[Doctor] ([DoctorId], [DoctorSurname], [DoctorName], [DoctorPatronymic], [Phone], [SpecialityId]) VALUES (2, N'Абрамченко', N'Никита', N'Владиславович', N'89010054038', 1)
INSERT [dbo].[Doctor] ([DoctorId], [DoctorSurname], [DoctorName], [DoctorPatronymic], [Phone], [SpecialityId]) VALUES (10, N'Дурманов', N'Сергей', N'Алексеевич', N'89184251269', 6)
INSERT [dbo].[Doctor] ([DoctorId], [DoctorSurname], [DoctorName], [DoctorPatronymic], [Phone], [SpecialityId]) VALUES (11, N'Ушакова', N'Ксения', N'Николаевна', N'89182251158', 9)
INSERT [dbo].[Doctor] ([DoctorId], [DoctorSurname], [DoctorName], [DoctorPatronymic], [Phone], [SpecialityId]) VALUES (12, N'Федорченко', N'Сергей', N'Владимирович', N'89184267810', 10)
INSERT [dbo].[Doctor] ([DoctorId], [DoctorSurname], [DoctorName], [DoctorPatronymic], [Phone], [SpecialityId]) VALUES (13, N'Лавинский', N'Лев', N'Алексеевич', N'89880823313', 8)
INSERT [dbo].[Doctor] ([DoctorId], [DoctorSurname], [DoctorName], [DoctorPatronymic], [Phone], [SpecialityId]) VALUES (14, N'Казакова', N'Наталья', N'Феликсовна', N'89880823454', 4)
SET IDENTITY_INSERT [dbo].[Doctor] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([Id], [Gender]) VALUES (1, N'Муж')
INSERT [dbo].[Gender] ([Id], [Gender]) VALUES (2, N'Жен')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Patient] ON 

INSERT [dbo].[Patient] ([PatientId], [PatientSurname], [PatientName], [PatientPatronymic], [ArrivalDate], [DepartureDate], [Phone], [Passport], [VisitId], [GenderId]) VALUES (3, N'Лавинский', N'Степан', N'Олегович', CAST(N'2023-01-01T00:00:00' AS SmallDateTime), CAST(N'2023-01-15T16:00:00' AS SmallDateTime), N'89880801358', N'8791337861', 1, 1)
INSERT [dbo].[Patient] ([PatientId], [PatientSurname], [PatientName], [PatientPatronymic], [ArrivalDate], [DepartureDate], [Phone], [Passport], [VisitId], [GenderId]) VALUES (5, N'Кульбед', N'Виталий', N'Юрьевич', CAST(N'2023-01-15T10:00:00' AS SmallDateTime), CAST(N'2023-02-01T00:00:00' AS SmallDateTime), N'89654506862', N'7917723080', 1, 1)
INSERT [dbo].[Patient] ([PatientId], [PatientSurname], [PatientName], [PatientPatronymic], [ArrivalDate], [DepartureDate], [Phone], [Passport], [VisitId], [GenderId]) VALUES (9, N'Плотников', N'Ростислав', N'Олегович', CAST(N'2023-01-01T08:00:00' AS SmallDateTime), CAST(N'2023-02-20T20:00:00' AS SmallDateTime), N'898881019778', N'8971562080', 2, 1)
INSERT [dbo].[Patient] ([PatientId], [PatientSurname], [PatientName], [PatientPatronymic], [ArrivalDate], [DepartureDate], [Phone], [Passport], [VisitId], [GenderId]) VALUES (34, N'Бугаев', N'Олег', N'Александрович', CAST(N'2023-01-01T00:00:00' AS SmallDateTime), CAST(N'2023-01-03T13:00:00' AS SmallDateTime), N'89880811164', N'7920234321', 2, 1)
INSERT [dbo].[Patient] ([PatientId], [PatientSurname], [PatientName], [PatientPatronymic], [ArrivalDate], [DepartureDate], [Phone], [Passport], [VisitId], [GenderId]) VALUES (35, N'Сашура', N'Сергей', N'Сергеевич', CAST(N'2024-03-10T08:00:00' AS SmallDateTime), CAST(N'2025-02-05T22:00:00' AS SmallDateTime), N'89189247409', N'7920187854', 1, 1)
INSERT [dbo].[Patient] ([PatientId], [PatientSurname], [PatientName], [PatientPatronymic], [ArrivalDate], [DepartureDate], [Phone], [Passport], [VisitId], [GenderId]) VALUES (36, N'Суздалева', N'Диана', N'Евгеньевна', CAST(N'2024-06-15T02:00:00' AS SmallDateTime), CAST(N'2024-06-16T10:00:00' AS SmallDateTime), N'89880829023', N'7919223864', 1, 2)
INSERT [dbo].[Patient] ([PatientId], [PatientSurname], [PatientName], [PatientPatronymic], [ArrivalDate], [DepartureDate], [Phone], [Passport], [VisitId], [GenderId]) VALUES (37, N'Леля', N'Дмитрий', N'Александрович', CAST(N'2023-01-01T00:00:00' AS SmallDateTime), CAST(N'2023-01-25T16:00:00' AS SmallDateTime), N'89528575777', N'7919234368', 1, 1)
SET IDENTITY_INSERT [dbo].[Patient] OFF
GO
SET IDENTITY_INSERT [dbo].[Procedur] ON 

INSERT [dbo].[Procedur] ([ProcedureId], [ProcedureName], [ProcedureDate], [PatientId], [DoctorId], [CabinetNumber]) VALUES (1, N'Лечебная физкультура', CAST(N'2023-01-03T10:00:00' AS SmallDateTime), 3, 2, 8)
INSERT [dbo].[Procedur] ([ProcedureId], [ProcedureName], [ProcedureDate], [PatientId], [DoctorId], [CabinetNumber]) VALUES (2, N'Лечение кариеса', CAST(N'2023-01-20T12:00:00' AS SmallDateTime), 37, 14, 12)
INSERT [dbo].[Procedur] ([ProcedureId], [ProcedureName], [ProcedureDate], [PatientId], [DoctorId], [CabinetNumber]) VALUES (10, N'Массаж поясничного отдела', CAST(N'2023-01-05T00:00:00' AS SmallDateTime), 3, 12, 4)
INSERT [dbo].[Procedur] ([ProcedureId], [ProcedureName], [ProcedureDate], [PatientId], [DoctorId], [CabinetNumber]) VALUES (11, N'Прописать сбалансированное питание', CAST(N'2023-02-01T10:00:00' AS SmallDateTime), 34, 13, 16)
SET IDENTITY_INSERT [dbo].[Procedur] OFF
GO
SET IDENTITY_INSERT [dbo].[Speciality] ON 

INSERT [dbo].[Speciality] ([Id], [Speciality]) VALUES (1, N'Невролог')
INSERT [dbo].[Speciality] ([Id], [Speciality]) VALUES (2, N'Эпидемиолог')
INSERT [dbo].[Speciality] ([Id], [Speciality]) VALUES (3, N'Терапевт')
INSERT [dbo].[Speciality] ([Id], [Speciality]) VALUES (4, N'Стоматолог')
INSERT [dbo].[Speciality] ([Id], [Speciality]) VALUES (5, N'Бактериолог')
INSERT [dbo].[Speciality] ([Id], [Speciality]) VALUES (6, N'Эндокринолог')
INSERT [dbo].[Speciality] ([Id], [Speciality]) VALUES (7, N'Гастроэнтеролог')
INSERT [dbo].[Speciality] ([Id], [Speciality]) VALUES (8, N'Педиатр')
INSERT [dbo].[Speciality] ([Id], [Speciality]) VALUES (9, N'Психолог')
INSERT [dbo].[Speciality] ([Id], [Speciality]) VALUES (10, N'Костоправ')
SET IDENTITY_INSERT [dbo].[Speciality] OFF
GO
SET IDENTITY_INSERT [dbo].[Visit] ON 

INSERT [dbo].[Visit] ([Id], [Visit]) VALUES (1, N'Первый')
INSERT [dbo].[Visit] ([Id], [Visit]) VALUES (2, N'Повторный')
SET IDENTITY_INSERT [dbo].[Visit] OFF
GO
ALTER TABLE [dbo].[Patient] ADD  DEFAULT (((2023)-(1))-(1)) FOR [ArrivalDate]
GO
ALTER TABLE [dbo].[Patient] ADD  DEFAULT (((2023)-(1))-(1)) FOR [DepartureDate]
GO
ALTER TABLE [dbo].[Procedur] ADD  DEFAULT (((2023)-(1))-(1)) FOR [ProcedureDate]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD FOREIGN KEY([SpecialityId])
REFERENCES [dbo].[Speciality] ([Id])
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD FOREIGN KEY([VisitId])
REFERENCES [dbo].[Visit] ([Id])
GO
ALTER TABLE [dbo].[Procedur]  WITH CHECK ADD FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctor] ([DoctorId])
GO
ALTER TABLE [dbo].[Procedur]  WITH CHECK ADD FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([PatientId])
GO
