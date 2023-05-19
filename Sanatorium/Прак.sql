Create DATABASE Sanatorium

GO
use Sanatorium
GO
CREATE TABLE [Patient] (
    [PatientId]     INT PRIMARY KEY IDENTITY NOT NULL,
    [PatientSurname]   NVARCHAR (20) NOT NULL,
	[PatientName]   NVARCHAR (20) NOT NULL,
	[PatientPatronymic]   NVARCHAR (20) NOT NULL,
    [ArrivalDate]   SMALLDATETIME  NOT NULL,
    [DepartureDate] SMALLDATETIME  NOT NULL,
    [Visit]       NVARCHAR (15)  NOT NULL,
    [Phone]      NVARCHAR (30)  NOT NULL,
	[Gender]  NVARCHAR (10)  NOT NULL,
	[Passport]  NVARCHAR (10)  NOT NULL

);



CREATE TABLE [Doctor] (
    [DoctorId]   INT PRIMARY KEY IDENTITY NOT NULL,
    [DoctorSurname]   NVARCHAR (20) NOT NULL,
	[DoctorName]   NVARCHAR (20) NOT NULL,
	[DoctorPatronymic]   NVARCHAR (20) NOT NULL,
    [Speciality] NVARCHAR (50) NOT NULL,
    [Phone]      NVARCHAR (30)  NOT NULL,
   
);

Drop table Admin


   CREATE TABLE [Procedur] (
    [ProcedureId]   INT PRIMARY KEY IDENTITY NOT NULL,
    [ProcedureName] NVARCHAR (50) NOT NULL,
    [ProcedureDate] NVARCHAR (50) NOT NULL,
    [PatientName]   NVARCHAR (50) NOT NULL,
    [DoctorName]    NVARCHAR (50) NOT NULL,
	[CabinetNumber] INT NOT NULL,
    
);
CREATE TABLE [Admin] (
  Id INT PRIMARY KEY IDENTITY,
  Login NVARCHAR (20)  NOT NULL,
  Password NVARCHAR (20)  NOT NULL,
);
