Create database Simple1;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT,
    Email VARCHAR(100) DEFAULT 'not_provided@example.com'
);

INSERT INTO Students (StudentID, FirstName, LastName, Age, Email)
VALUES (1, 'Alice', 'Smith', 20, 'alice.smith@example.com');


INSERT INTO Students (StudentID, FirstName, LastName, Age, Email)
VALUES (2, 'Bob', 'Johnson', NULL, 'bob.johnson@example.com');


INSERT INTO Students (StudentID, FirstName, LastName, Age)
VALUES (3, 'Charlie', 'Brown', 22);


INSERT INTO Students (StudentID, FirstName, LastName)
VALUES (4, 'Diana', 'Prince');

UPDATE Students
SET Age = 21
WHERE StudentID = 2;

UPDATE Students
SET Email = 'unknown@example.com'
WHERE Email IS NULL;

DELETE FROM Students
WHERE StudentID = 4;

DELETE FROM Students
WHERE Age < 21;

SELECT * FROM Students;