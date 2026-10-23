CREATE DATABASE shop;
USE shop;

CREATE TABLE products (
	product_id INT PRIMARY KEY,
    pname VARCHAR(50),
    price DECIMAL(10,2),
    category VARCHAR(30),
    stock INT
);

INSERT INTO products VALUES
(1, 'Rice Bag', 2200, 'Grocery', 50),
(2, 'Laptop', 85000, 'Electronics', 10),
(3, 'Mobile', 30000, 'Electronics', 25),
(4, 'Noodles' , 25 , 'Grocery', 500),
(5, 'Shampoo' , 350 , 'Beauty' , 80),
(6, 'TV' , 55000, 'Electronics', 8);

-- Inserting a new product
INSERT INTO products (product_id , pname , price, category, stock)
VALUES  (7, 'Pen', 20, 'Stationery' , 100)


-- showing product name and price 
SELECT * FROM products
SELECT pname, price FROM products

-- Showing product costing more than 1000
SELECT * FROM products WHERE price > 1000;;

-- Showing Electronics products with stock below 20
SELECT * FROM products WHERE category='Electronics' AND stock<20;

-- Showing Grocery or beauty products using IN
SELECT * FROM products WHERE category IN("Grocery","Beauty");

-- Showing products with price between 300 and 40000
SELECT * FROM products WHERE price BETWEEN 300 AND 40000;

-- Showing product names that start with M
SELECT * FROM products WHERE pname LIKE 'M%';

-- Showing the 2 most expensive products
SELECT * FROM products ORDER BY price DESC lIMIT 2;

-- Changing Laptop price to 79000 using product_id
UPDATE products SET price =79000 WHERE product_id =2;
SELECT * FROM products;

-- Reducing every Electronics product price by 10%
UPDATE products SET price = price*0.9 WHERE product_id IN (2,3,6);
SELECT pname , price FROM  products WHERE category = 'Electronics';

-- Decreasing Rice Bag stock by 10
UPDATE products SET stock = stock - 10 WHERE pname = "Rice Bag";
SELECT pname , stock FROM products WHERE pname = "Rice Bag";

-- Deleting the product Pen
DELETE FROM products WHERE pname = "Pen"
SELECT * FROM products;

-- Deleting all products with stock below 10
DELETE FORM products WHERE stock < 10;
SELECT * FROM products;