 DROP TABLE IF EXISTS BRANCHES;
CREATE TABLE branches (
    branchID INT PRIMARY KEY,
    branchName VARCHAR(50)
);
-- Insert sample data into branches
INSERT INTO branches (branchID, branchName) VALUES
(1, 'ECE'),
(2, 'CSE'),
(3, 'EEE'),
(4, 'CIVIL');
-- Create students table
DROP TABLE IF EXISTS STUDENTS;
CREATE TABLE students (
    studentID INT PRIMARY KEY,
    studentName VARCHAR(50),

);
-- Insert sample data into students
INSERT INTO students (studentID, studentName) VALUES
(19, 'chand'),
(44, 'manu'),
(18, 'kalyani'),
(51, 'amulya'),
(52, 'ramya');  -- Note: 5 is not in  branches

 --JOIN Queries
--INNER JOIN
SELECT studentName, branchName
FROM students
INNER JOIN branches ON students.studentID = branches.branchID;

 --LEFT JOIN
SELECT studentName, branchName
FROM students
LEFT JOIN branches ON students.studentID = branches.branchID;

 --RIGHT JOIN

SELECT studentName, branchName
FROM students
RIGHT JOIN branches ON students.studentID = branches.branchID;

  
--FULL OUTER JOIN

SELECT studentName, branchName
FROM students
FULL OUTER JOIN branches ON students.studentID = branches.branchID;

 --UNION

SELECT studentName, branchName
FROM students
RIGHT JOIN branches ON students.studentID = branches.branchID;
