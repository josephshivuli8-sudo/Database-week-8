-- 1. Create the Database
CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

-- 2. Create the Customers Table
-- Contains a PRIMARY KEY and a UNIQUE constraint for email
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(50),
    Country VARCHAR(50)
);

-- 3. Create the Products Table
-- Contains a PRIMARY KEY and a NOT NULL constraint for essential details
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100) NOT NULL,
    Description TEXT,
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL
);

-- 4. Create the Orders Table
-- This table has a FOREIGN KEY to the Customers table, enforcing a One-to-Many relationship
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT NOT NULL,
    OrderDate DATETIME NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- 5. Create the OrderItems Junction Table
-- This table resolves the Many-to-Many relationship between Orders and Products
-- The composite primary key ensures a unique record for each product within a specific order
CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    Subtotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);