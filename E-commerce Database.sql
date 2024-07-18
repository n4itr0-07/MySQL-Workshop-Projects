CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(15),
    address TEXT,
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code VARCHAR(10),
    country VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL UNIQUE,
    description TEXT
);

CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    total_amount DECIMAL(10, 2) NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE OrderItems (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE Reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    user_id INT,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    comment TEXT,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Users (username, email, password, first_name, last_name, phone_number, address, city, state, zip_code, country) VALUES
('john_doe', 'john@example.com', 'password123', 'John', 'Doe', '1234567890', '123 Main St', 'Anytown', 'Anystate', '12345', 'USA'),
('jane_doe', 'jane@example.com', 'password456', 'Jane', 'Doe', '0987654321', '456 Elm St', 'Anycity', 'Anystate', '67890', 'USA');

INSERT INTO Categories (category_name, description) VALUES
('Electronics', 'Devices and gadgets'),
('Books', 'Wide range of books'),
('Clothing', 'Apparel for men, women, and children');

INSERT INTO Products (product_name, description, price, stock_quantity, category_id) VALUES
('Smartphone', 'Latest model smartphone', 699.99, 100, 1),
('Laptop', 'High performance laptop', 999.99, 50, 1),
('Novel', 'Bestselling novel', 19.99, 200, 2),
('T-Shirt', 'Cotton t-shirt', 9.99, 300, 3);

INSERT INTO Orders (user_id, total_amount, status) VALUES
(1, 719.98, 'Pending'),
(2, 19.99, 'Completed');

INSERT INTO OrderItems (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 699.99),
(1, 4, 2, 19.99),
(2, 3, 1, 19.99);

INSERT INTO Reviews (product_id, user_id, rating, comment) VALUES
(1, 1, 5, 'Great product!'),
(2, 2, 4, 'Very satisfied with this laptop.'),
(3, 1, 3, 'Interesting read but not my favorite.');

ALTER TABLE Users MODIFY phone_number VARCHAR(50);
ALTER TABLE Users MODIFY country VARCHAR(100);

ALTER TABLE Users MODIFY username VARCHAR(50);
ALTER TABLE Users MODIFY email VARCHAR(100);
ALTER TABLE Users MODIFY password VARCHAR(50);
ALTER TABLE Users MODIFY first_name VARCHAR(50);
ALTER TABLE Users MODIFY last_name VARCHAR(50);
ALTER TABLE Users MODIFY phone_number VARCHAR(20);
ALTER TABLE Users MODIFY address VARCHAR(255);
ALTER TABLE Users MODIFY city VARCHAR(50);
ALTER TABLE Users MODIFY state VARCHAR(50);
ALTER TABLE Users MODIFY zip_code VARCHAR(20);
ALTER TABLE Users MODIFY country VARCHAR(50);

USE ecommerce;
SELECT * FROM Users LIMIT 100;
