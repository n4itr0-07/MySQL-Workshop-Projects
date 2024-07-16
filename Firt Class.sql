CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50)
);
SELECT * FROM student;

INSERT INTO student
(rollno, name)
VALUES
(01, "Salik"),
(02, "Atif"),
(03, "Faika");

INSERT INTO student
(rollno, name)
VALUES
(04, "Irtaqa");
INSERT INTO student VALUES (05, "Anees");

CREATE DATABASE xyz_company;
USE xyz_company;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(100),
salary INT
);

INSERT INTO employee
(id, name, salary)
VALUES
(1, "Adam", 20000),
(2, "Bob", 30000 ),
(3, "Casy", 40000);

SELECT * FROM employee;

CREATE TABLE temp1(
id INT UNIQUE
);

INSERT INTO temp1 VALUES (101);

SELECT * FROM temp1;

CREATE TABLE temp2(
id INT,
salary INT DEFAULT 25000);

INSERT INTO temp2 (id) VALUES (01);
SELECT * FROM temp2;

CREATE TABLE dept (
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO dept
VALUES
(101, "Math"),
(102, "IT");

SELECT * FROM dept;

CREATE TABLE teacher (
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY(dept_id) REFERENCES dept(id)
ON DELETE CASCADE
ON UPDATE CASCADE
);

INSERT INTO teacher
VALUES
(101, "Adam", 101),
(102, "Casy", 102);

SELECT * FROM teacher;