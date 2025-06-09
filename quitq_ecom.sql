-- Create Database
CREATE DATABASE quitq_ecom;
USE quitq_ecom;

-- User Table
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    contact_number VARCHAR(15),
    address VARCHAR(255),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100)
);

-- Seller Table
CREATE TABLE sellers (
    seller_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    contact_number VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    address VARCHAR(255)
);

-- Product Table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    seller_id INT,
    category_name VARCHAR(100),
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    stock_number INT,
    FOREIGN KEY (seller_id) REFERENCES sellers(seller_id)
);

-- Cart Table
CREATE TABLE cart (
    cart_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Orders Table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    shipping_address VARCHAR(255),
    total_amount DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Order Items Table
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
-- Users
INSERT INTO users (name, gender, contact_number, address, email, password) VALUES
('Alice', 'Female', '9876543210', 'Chennai', 'alice@example.com', 'pass123'),
('Bob', 'Male', '9123456780', 'Bangalore', 'bob@example.com', 'pass123'),
('Charlie', 'Male', '9345678901', 'Hyderabad', 'charlie@example.com', 'pass123'),
('Daisy', 'Female', '9456789012', 'Mumbai', 'daisy@example.com', 'pass123'),
('Eve', 'Female', '9567890123', 'Delhi', 'eve@example.com', 'pass123'),
('Frank', 'Male', '9678901234', 'Pune', 'frank@example.com', 'pass123'),
('Grace', 'Female', '9789012345', 'Kolkata', 'grace@example.com', 'pass123'),
('Hank', 'Male', '9890123456', 'Ahmedabad', 'hank@example.com', 'pass123'),
('Ivy', 'Female', '9901234567', 'Jaipur', 'ivy@example.com', 'pass123'),
('Jack', 'Male', '9012345678', 'Coimbatore', 'jack@example.com', 'pass123');

-- Sellers
INSERT INTO sellers (name, contact_number, email, password, address) VALUES
('SellerOne', '9876543211', 'seller1@example.com', 'sellerpass1', 'Chennai'),
('SellerTwo', '9876543212', 'seller2@example.com', 'sellerpass2', 'Mumbai'),
('SellerThree', '9876543213', 'seller3@example.com', 'sellerpass3', 'Delhi'),
('SellerFour', '9876543214', 'seller4@example.com', 'sellerpass4', 'Bangalore'),
('SellerFive', '9876543215', 'seller5@example.com', 'sellerpass5', 'Hyderabad'),
('SellerSix', '9876543216', 'seller6@example.com', 'sellerpass6', 'Pune'),
('SellerSeven', '9876543217', 'seller7@example.com', 'sellerpass7', 'Kolkata'),
('SellerEight', '9876543218', 'seller8@example.com', 'sellerpass8', 'Ahmedabad'),
('SellerNine', '9876543219', 'seller9@example.com', 'sellerpass9', 'Jaipur'),
('SellerTen', '9876543220', 'seller10@example.com', 'sellerpass10', 'Coimbatore');

-- Products
INSERT INTO products (seller_id, category_name, product_name, price, stock_number) VALUES
(1, 'Electronics', 'Smartphone A', 12000.00, 50),
(1, 'Electronics', 'Smartwatch B', 5000.00, 30),
(2, 'Fashion', 'T-Shirt X', 700.00, 100),
(2, 'Fashion', 'Jeans Y', 1200.00, 60),
(3, 'Home & Furniture', 'Sofa Set', 25000.00, 10),
(3, 'Home & Furniture', 'Dining Table', 18000.00, 8),
(4, 'Mobile', 'Mobile Z', 15000.00, 40),
(5, 'Fashion', 'Sneakers', 3500.00, 70),
(6, 'Electronics', 'Laptop L', 50000.00, 15),
(7, 'Fashion', 'Jacket', 4000.00, 50);

-- Cart
INSERT INTO cart (user_id, product_id, quantity) VALUES
(1, 1, 1),
(2, 3, 2),
(3, 5, 1),
(4, 7, 1),
(5, 2, 3),
(6, 6, 1),
(7, 4, 2),
(8, 9, 1),
(9, 10, 1),
(10, 8, 1);

-- Orders
INSERT INTO orders (user_id, shipping_address, total_amount) VALUES
(1, 'Chennai', 12000.00),
(2, 'Bangalore', 1400.00),
(3, 'Hyderabad', 25000.00),
(4, 'Mumbai', 15000.00),
(5, 'Delhi', 15000.00),
(6, 'Pune', 18000.00),
(7, 'Kolkata', 1400.00),
(8, 'Ahmedabad', 50000.00),
(9, 'Jaipur', 4000.00),
(10, 'Coimbatore', 3500.00);

-- Order Items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 12000.00),
(2, 3, 2, 700.00),
(3, 5, 1, 25000.00),
(4, 7, 1, 15000.00),
(5, 7, 1, 15000.00),
(6, 6, 1, 18000.00),
(7, 4, 2, 1200.00),
(8, 9, 1, 50000.00),
(9, 10, 1, 4000.00),
(10, 8, 1, 3500.00);
show tables;
select* from cart;
