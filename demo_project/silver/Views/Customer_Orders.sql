CREATE OR REPLACE VIEW {{ENV}}_DB.silver.Customer_Orders AS
SELECT
    c.customer_id,
    c.name AS customer_name,
    o.order_id,
    o.product_id,
    o.quantity
FROM
    Customer c
JOIN
    Orders o ON c.customer_id = o.customer_id;