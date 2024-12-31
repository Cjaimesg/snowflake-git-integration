CREATE OR REPLACE VIEW {{ENV}}_DB.silver.Product_Inventory AS
SELECT
    p.product_id,
    p.name AS product_name,
    SUM(o.quantity) AS total_quantity
FROM
    Product p
LEFT JOIN
    Orders o ON p.product_id = o.product_id
GROUP BY
    p.product_id,
    p.name;