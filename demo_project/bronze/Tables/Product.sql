CREATE OR ALTER TABLE {{ENV}}_DB.bronze.Product (
    product_id INT PRIMARY KEY,
    name VARCHAR(200),
    price DECIMAL(10, 2)
);