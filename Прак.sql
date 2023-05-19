Create DATABASE Sanatorium

GO
use Sanatorium
GO

Drop DATABASE Sanatorium

CREATE TABLE [Visit] (
    [Id]   INT PRIMARY KEY IDENTITY NOT NULL,
    [Visit]  NVARCHAR (15)  NOT NULL,
   
);

CREATE TABLE [Gender] (
    [Id]   INT PRIMARY KEY IDENTITY NOT NULL,
    [Gender]  NVARCHAR (15)  NOT NULL,
   
);


	CREATE TABLE [Speciality] (
    [Id]   INT PRIMARY KEY IDENTITY NOT NULL,
    [Speciality]  NVARCHAR (30)  NOT NULL,
   
   
);

  
  CREATE TABLE [Patient] (
    [PatientId]     INT PRIMARY KEY IDENTITY NOT NULL,
    [PatientSurname]   NVARCHAR (20) NOT NULL,
	[PatientName]   NVARCHAR (20) NOT NULL,
	[PatientPatronymic]   NVARCHAR (20) NOT NULL,
    [ArrivalDate]   SMALLDATETIME  DEFAULT 2023-01-1 NOT NULL,
    [DepartureDate] SMALLDATETIME  DEFAULT 2023-01-1 NOT NULL,    
    [Phone]      NVARCHAR (30)  NOT NULL,
	[Passport]  NVARCHAR (10)  NOT NULL,
	[VisitId]      INT FOREIGN KEY REFERENCES [Visit](Id)   NOT NULL,
	[GenderId]  INT FOREIGN KEY REFERENCES [Gender](Id)   NOT NULL,
	
);
   
    CREATE TABLE [Doctor] (
    [DoctorId]   INT PRIMARY KEY IDENTITY NOT NULL,
    [DoctorSurname]   NVARCHAR (20) NOT NULL,
	[DoctorName]   NVARCHAR (20) NOT NULL,
	[DoctorPatronymic]   NVARCHAR (20) NOT NULL,
    [Phone]      NVARCHAR (30)  NOT NULL,
    [SpecialityId]  INT FOREIGN KEY REFERENCES [Speciality](Id)   NOT NULL,
	);


   CREATE TABLE [Procedur] (
    [ProcedureId]   INT PRIMARY KEY IDENTITY NOT NULL,
    [ProcedureName] NVARCHAR (50) NOT NULL,
    [ProcedureDate] SMALLDATETIME DEFAULT 2023-01-1 NOT NULL,
    [PatientId]   INT FOREIGN KEY REFERENCES [Patient](PatientId)   NOT NULL,
    [DoctorId]    INT FOREIGN KEY REFERENCES [Doctor](DoctorId)   NOT NULL,
	[CabinetNumber] INT NOT NULL,
    
);
CREATE TABLE [Admin] (
  Id INT PRIMARY KEY IDENTITY,
  Login NVARCHAR (20)  NOT NULL,
  Password NVARCHAR (20)  NOT NULL,
);
