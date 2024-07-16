CREATE DATABASE college2;
USE college2;

CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(70),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, 'Salik Seraj Naik', 99, 'A', 'J&K'),
(102, 'Faika Firdius Naik', 92, 'A', 'Rajouri'),
(103, 'Atif Ather Naik', 85, 'B', 'Thanamandi'),
(104, 'Irtaqa Firdous Naik', 98, 'A', 'Mumbai'),
(105, 'Farah Firdous Naik', 78, 'C', 'J&K'),
(106, 'Hooriya Naik', 66, 'D', 'J&K'),
(107, 'Aqsa Naik', 99, 'A', 'J&K');

SELECT * FROM student;

SELECT * FROM student WHERE marks > 82 AND city = "J&K";

SELECT *
FROM student
ORDER BY marks DESC
LIMIT 3;

SELECT MAX(marks)
FROM student;

SELECT AVG(marks)
FROM student;

SELECT city, count(rollno)
FROM student
GROUP BY city;