CREATE TABLE [Groups_HW] (
    Id INT IDENTITY(1, 1) PRIMARY KEY,
    [Name] NVARCHAR(10) NOT NULL UNIQUE,
    [Rating] INT NOT NULL CHECK ([Rating] >= 0 AND [Rating] <= 5),
    [Year] INT NOT NULL CHECK ([Year] >= 1 AND [Year] <= 5)
);

CREATE TABLE [Departments_HW] (
    Id INT IDENTITY(1, 1) PRIMARY KEY,
    [Financing] MONEY NOT NULL DEFAULT 0 CHECK ([Financing] >= 0),
    [Name] NVARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE [Faculties_HW] (
    Id INT IDENTITY(1, 1) PRIMARY KEY,
    [Name] NVARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE [Teachers_HW] (
    Id INT IDENTITY(1, 1) PRIMARY KEY,
    [EmploymentDate] DATE NOT NULL CHECK ([EmploymentDate] >= '1990-01-01'),
    [Name] NVARCHAR(MAX) NOT NULL,
    [Surname] NVARCHAR(MAX) NOT NULL,
    [Premium] MONEY NOT NULL DEFAULT 0 CHECK ([Premium] >= 0),
    [Salary] MONEY NOT NULL CHECK ([Salary] > 0)
);
