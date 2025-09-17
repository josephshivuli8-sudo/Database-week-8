MySQL E-commerce Database

This project provides the SQL script for a simple relational database designed for an e-commerce store. The schema is built to demonstrate core database concepts, including normalized table design, primary and foreign key relationships, and data integrity constraints.

Database Design 🛠️

The database is named ecommerce and consists of four main tables:

    Customers: Stores unique customer information.

    Products: Holds details about all available items for sale.

    Orders: Records each transaction made by a customer.

    OrderItems: A crucial junction table that links Orders and Products. It handles the Many-to-Many relationship, allowing an order to contain multiple products and a product to be part of many different orders.

Features and Constraints ✨

The database design adheres to key principles of relational database management:

    Primary Keys: Each table has a primary key (CustomerID, ProductID, OrderID, OrderItemID) to uniquely identify each row. These keys are set to AUTO_INCREMENT for easy data entry.

    Foreign Keys: Foreign keys are used to enforce referential integrity, ensuring that relationships between tables are valid. For example, an order in the Orders table must be linked to an existing customer in the Customers table.

    NOT NULL Constraints: Essential columns like FirstName, Email, and ProductName are marked as NOT NULL to ensure that critical data is always present.

    UNIQUE Constraints: The Email column in the Customers table is set to UNIQUE to prevent multiple customers from registering with the same email address.

Usage 🚀

To use this database schema, simply run the provided ecommerce.sql file in a MySQL client (like MySQL Workbench, DBeaver, or the MySQL command-line interface).
SQL

-- Example of how to use the file in a MySQL client
SOURCE /path/to/your/ecommerce.sql;

This will create the ecommerce database and all four tables, ready for you to insert data and begin your own analysis or application development.
