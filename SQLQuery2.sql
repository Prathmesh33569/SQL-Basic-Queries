CREATE TABLE Students (
    StudentId INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50) NULL,
    Age INT,
    Gender VARCHAR(10) NULL
);

CREATE TABLE Courses (
    CourseId INT IDENTITY(1,1) PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT NULL
);

SET IDENTITY_INSERT Students ON;
INSERT INTO Students (StudentId, FirstName, LastName, Age, Gender)
VALUES
    (1, 'John', NULL, 20, 'Male'),
    (2, 'Alice', 'Smith', 19, 'Female'),
    (3, 'David', 'Brown', NULL, 'Male'),
    (4, 'Jessica', NULL, 21, NULL),
    (5, 'Michael', 'Johnson', 22, 'Male');
SET IDENTITY_INSERT Students OFF;

SET IDENTITY_INSERT Courses ON;
INSERT INTO Courses (CourseId, CourseName, Credits)
VALUES
    (1, 'Mathematics', 3),
    (2, 'History', NULL),
    (3, 'Science', 4),
    (4, 'Literature', NULL);
SET IDENTITY_INSERT Courses OFF;