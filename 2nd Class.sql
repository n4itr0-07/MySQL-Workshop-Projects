CREATE TABLE cse (
id INT PRIMARY KEY,
name VARCHAR(50),
rollno INT
);

INSERT INTO cse
VALUES
(01, "Salik Seraj", 38),
(02, "Zahid Mujtaba", 42);

SELECT * FROM computer_science;

ALTER TABLE computer_science
ADD COLUMN  ages INT NOT NULL DEFAULT 19;

ALTER TABLE cse
RENAME TO Computer_Science;

ALTER TABLE computer_science
DROP COLUMN age;