CREATE DATABASE CustomersDetails;
USE CustomersDetails;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    PaymentMode VARCHAR(50),
    City VARCHAR(50)
);

INSERT INTO Customers (CustomerID, CustomerName, PaymentMode, City) VALUES
(1, 'John Doe', 'Credit Card', 'New York'),
(2, 'Jane Smith', 'PayPal', 'Los Angeles'),
(3, 'Michael Brown', 'Debit Card', 'Chicago'),
(4, 'Emily Davis', 'Credit Card', 'Houston'),
(5, 'William Johnson', 'Cash', 'Phoenix'),
(6, 'Olivia Wilson', 'PayPal', 'Philadelphia'),
(7, 'James Garcia', 'Credit Card', 'San Antonio'),
(8, 'Emma Martinez', 'Cash', 'San Diego'),
(9, 'Benjamin Hernandez', 'Debit Card', 'Dallas'),
(10, 'Sophia Lopez', 'Credit Card', 'San Jose');

SELECT distinct City FROM Customers;

SELECT PaymentMode, count(CustomerID)
FROM Customers
GROUP BY PaymentMode
ORDER BY PaymentMode;

SELECT City, count(CustomerID)
FROM Customers
GROUP BY City
HAVING max(PaymentMode) > 3;

SET SQL_SAFE_UPDATES = 0;

UPDATE Customers
SET CustomerName = "Salik"
WHERE CustomerName = "John Doe";

DELETE FROM Customers
WHERE CustomerID = 10;


SELECT * FROM Customers