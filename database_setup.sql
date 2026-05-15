-- STEP 3 — Create Database
CREATE DATABASE sales_analysis;
USE sales_analysis;

-- STEP 4 — Create Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

-- STEP 5 — Create Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price FLOAT
);

-- STEP 6 — Create Sales Table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    sale_date DATE,
    total_amount FLOAT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- STEP 7 — Insert Data
INSERT INTO customers VALUES
(1, 'Rahul', 'Hyderabad'),
(2, 'Anjali', 'Chennai'),
(3, 'Kiran', 'Bangalore');

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 50000),
(102, 'Phone', 'Electronics', 20000),
(103, 'Headphones', 'Accessories', 2000);

INSERT INTO sales VALUES
(1, 1, 101, 1, '2026-05-01', 50000),
(2, 2, 102, 2, '2026-05-02', 40000),
(3, 3, 103, 3, '2026-05-03', 6000);

-- STEP 8 — View Data
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM sales;

-- STEP 9 — Run Analysis Queries
-- Total Sales
SELECT SUM(total_amount) AS total_sales
FROM sales;

-- Top Selling Product
SELECT p.product_name,
       SUM(s.quantity) AS total_quantity
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC;
