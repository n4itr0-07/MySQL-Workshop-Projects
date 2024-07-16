CREATE DATABASE Student_Data;
USE Student_Data;

CREATE TABLE KashmiriStudents (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Grade CHAR(1),
    City VARCHAR(50),
    Marks INT
);

INSERT INTO KashmiriStudents (RollNo, Name, Grade, City, Marks) VALUES
(1, 'Ali Mir', 'A', 'Srinagar', 92),
(2, 'Zara Khan', 'B', 'Anantnag', 88),
(3, 'Imran Bhat', 'A', 'Baramulla', 95),
(4, 'Sana Ahmed', 'B', 'Pulwama', 85),
(5, 'Yusuf Shah', 'C', 'Kupwara', 78),
(6, 'Ayesha Malik', 'B', 'Shopian', 82),
(7, 'Rizwan Khan', 'A', 'Ganderbal', 91),
(8, 'Farah Lone', 'B', 'Bandipora', 84),
(9, 'Arif Hussain', 'C', 'Kulgam', 79),
(10, 'Saba Mirza', 'A', 'Doda', 93),
(11, 'Asad Malik', 'B', 'Rajouri', 87);


SELECT * FROM KashmiriStudents;

SELECT AVG(Marks)
FROM KashmiriStudents;

SELECT name, Marks
FROM KashmiriStudents
WHERE Marks > (SELECT AVG(Marks)FROM KashmiriStudents);


/*
TABLE NUMBER TWO BELOW
*/





CREATE TABLE JK_Students (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(10),
    Grade CHAR(1),
    City VARCHAR(50),
    Marks INT
);


INSERT INTO JK_Students (RollNo, Name, Gender, Grade, City, Marks) VALUES
(1, 'Ali Mir', 'M', 'A', 'Srinagar', 92),
(2, 'Zara Khan', 'F', 'B', 'Anantnag', 88),
(3, 'Imran Bhat', 'M', 'A', 'Baramulla', 95),
(4, 'Sana Ahmed', 'F', 'B', 'Pulwama', 85),
(5, 'Yusuf Shah', 'M', 'C', 'Kupwara', 78),
(6, 'Ayesha Malik', 'F', 'B', 'Shopian', 82),
(7, 'Rizwan Khan', 'M', 'A', 'Ganderbal', 91),
(8, 'Farah Lone', 'F', 'B', 'Bandipora', 84),
(9, 'Arif Hussain', 'M', 'C', 'Kulgam', 79),
(10, 'Saba Mirza', 'F', 'A', 'Doda', 93),
(11, 'Asad Malik', 'M', 'B', 'Rajouri', 87),
(12, 'Amina', 'F', 'A', 'Jammu', 90),
(13, 'Bilal', 'M', 'B', 'Poonch', 85),
(14, 'Nadia', 'F', 'C', 'Kathua', 80),
(15, 'Rahul', 'M', 'A', 'Ramban', 92),
(16, 'Fiza', 'F', 'B', 'Udhampur', 88),
(17, 'Naseem', 'F', 'A', 'Reasi', 95),
(18, 'Mubarak', 'M', 'B', 'Kishtwar', 85),
(19, 'Saqib', 'M', 'C', 'Samba', 78),
(20, 'Aneeqa', 'F', 'B', 'Ganderbal', 82);

SELECT * FROM JK_Students;

SELECT RollNo, Name 
FROM JK_Students
WHERE RollNo % 2 = 0;