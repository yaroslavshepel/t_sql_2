CREATE TABLE [Departments_PR] (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    [Building] INT NOT NULL CHECK ([Building] BETWEEN 1 AND 5),
    [Financing] MONEY NOT NULL CHECK ([Financing] >= 0),
    [Name] NVARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE [Diseases_PR] (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(100) NOT NULL UNIQUE,
    [Severity] INT NOT NULL CHECK ([Severity] >= 1) DEFAULT 1
);

CREATE TABLE [Doctors_PR] (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(MAX) NOT NULL,
    [Phone] CHAR(10) NOT NULL,
    [Salary] MONEY NOT NULL CHECK ([Salary] > 0),
    [Surname] NVARCHAR(MAX) NOT NULL
);

CREATE TABLE [Examinations_PR] (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    [DayOfWeek] INT NOT NULL CHECK ([DayOfWeek] BETWEEN 1 AND 7),
    [StartTime] TIME NOT NULL CHECK ([StartTime] >= '08:00' AND [StartTime] <= '18:00'),
    [EndTime] TIME NOT NULL,
	CONSTRAINT CK_TIME_CHECK CHECK ([EndTime] > [StartTime]),
    [Name] NVARCHAR(100) NOT NULL UNIQUE
);
