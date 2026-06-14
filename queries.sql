CREATE TABLE employee (
    emp_id INTEGER PRIMARY KEY,
    emp_name TEXT,
    gender TEXT,
    age INTEGER,
    department TEXT,
    designation TEXT,
    salary REAL,
    phone TEXT,
    email TEXT,
    city TEXT
);
INSERT INTO employee VALUES
(1,'Kathyayani','Female',21,'CSE','Developer',45000,'6300141146','kathyayani@gmail.com','Kottapeta');

INSERT INTO employee VALUES
(2,'Ravi','Male',25,'IT','Analyst',50000,'9876543210','ravi@gmail.com','Hyderabad');

INSERT INTO employee VALUES
(3,'Priya','Female',23,'HR','Executive',40000,'9123456780','priya@gmail.com','Vijayawada');
SELECT * FROM employee;

SELECT * FROM employee
WHERE department = 'CSE';

SELECT * FROM employee
WHERE gender = 'Female';

SELECT COUNT(*) FROM employee


WHERE salary > 40000;


SELECT * FROM employee
ORDER BY emp_name;

SELECT department, COUNT(*)
FROM employee
GROUP BY department;

SELECT department, COUNT(*) AS total_employees
FROM employee
GROUP BY department
ORDER BY total_employees DESC;

CREATE TABLE employee (
    emp_id INTEGER PRIMARY KEY,
    emp_name TEXT,
    gender TEXT,
    age INTEGER,
    department TEXT,
    designation TEXT,
    salary REAL,
    phone TEXT,
    email TEXT,
    city TEXT
);
INSERT INTO employee VALUES
(1,'Kathyayani','Female',21,'CSE','Developer',45000,'6300141146','kathyayani@gmail.com','Kottapeta');

INSERT INTO employee VALUES
(2,'Ravi','Male',25,'IT','Analyst',50000,'9876543210','ravi@gmail.com','Hyderabad');

INSERT INTO employee VALUES
(3,'Priya','Female',23,'HR','Executive',40000,'9123456780','priya@gmail.com','Vijayawada');
SELECT * FROM employee;

SELECT * FROM employee
WHERE department = 'CSE';

SELECT * FROM employee
WHERE gender = 'Female';

SELECT COUNT(*) FROM employee


WHERE salary > 40000;


SELECT * FROM employee
ORDER BY emp_name;

SELECT department, COUNT(*)
FROM employee
GROUP BY department;

SELECT department, COUNT(*) AS total_employees
FROM employee
GROUP BY department
ORDER BY total_employees DESC;


CREATE TABLE EmployeeDetails (
    emp_no INTEGER PRIMARY KEY,
    name TEXT,
    sal REAL,
    age INTEGER
);

INSERT INTO EmployeeDetails VALUES (1, 'Liam', 50000, 25);
INSERT INTO EmployeeDetails VALUES (2, 'Emma', 60000.5, 30);
INSERT INTO EmployeeDetails VALUES (3, 'Noah', 75000.75, 35);
INSERT INTO EmployeeDetails VALUES (4, 'Olivia', 45000.25, 28);
INSERT INTO EmployeeDetails VALUES (5, 'Ethan', 80000, 32);
INSERT INTO EmployeeDetails VALUES (6, 'Sophia', 65000, 27);
INSERT INTO EmployeeDetails VALUES (7, 'Mason', 55000.5, 29);


SELECT age, SUM(sal)
FROM EmployeeDetails
GROUP BY age
HAVING SUM(sal) > 50000;

SELECT age, AVG(sal) AS Average_Salary
FROM EmployeeDetails
GROUP BY age
HAVING AVG(sal) > 60000;

CREATE TABLE Learner (
    ROLL_NO INTEGER PRIMARY KEY,
    Name TEXT,
    Address TEXT,
    Age INTEGER
);


INSERT INTO Learner VALUES (1, 'Liam', 'London', 18);
INSERT INTO Learner VALUES (2, 'Sofia', 'Berlin', 19);
INSERT INTO Learner VALUES (3, 'Mateo', 'Madrid', 20);
INSERT INTO Learner VALUES (4, 'Emma', 'Paris', 21);
INSERT INTO Learner VALUES (5, 'Noah', 'Rome', 24);



CREATE TABLE LearnerCourse (
    COURSE_ID INTEGER,
    ROLL_NO INTEGER
);

INSERT INTO LearnerCourse VALUES (1, 1);
INSERT INTO LearnerCourse VALUES (2, 2);
INSERT INTO LearnerCourse VALUES (3, 3);
INSERT INTO LearnerCourse VALUES (6, 7);

SELECT LearnerCourse.COURSE_ID,
       Learner.NAME,
       Learner.AGE
FROM Learner
INNER JOIN LearnerCourse
ON Learner.ROLL_NO = LearnerCourse.ROLL_NO;


SELECT Learner.NAME,
       LearnerCourse.COURSE_ID
FROM Learner
LEFT JOIN LearnerCourse
ON LearnerCourse.ROLL_NO = Learner.ROLL_NO;


SELECT Learner.NAME,
       LearnerCourse.COURSE_ID
FROM Learner
RIGHT JOIN LearnerCourse
ON LearnerCourse.ROLL_NO = Learner.ROLL_NO;


SELECT Learner.NAME,
       LearnerCourse.COURSE_ID
FROM Learner
FULL JOIN LearnerCourse
ON LearnerCourse.ROLL_NO = Learner.ROLL_NO;


SELECT NAME,
       COURSE_ID
FROM Learner
NATURAL JOIN LearnerCourse;

