CREATE OR ALTER TABLE {{ENV}}_DB.silver.Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT
);