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
