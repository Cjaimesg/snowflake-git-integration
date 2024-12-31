CREATE OR ALTER TABLE {{ENV}}_DB.gold.Shipping (
    shipping_id INT PRIMARY KEY,
    order_id INT,
    status VARCHAR(50)
);