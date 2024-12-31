CREATE OR REPLACE PROCEDURE LOAD_BRONZE_CUSTOMER_ORDERS()
RETURNS STRING
LANGUAGE JAVASCRIPT
AS
$$
try {
    var sql_command = `CREATE TABLE Bronze_Customer_Orders AS
                       SELECT c.customer_id,
                              c.name AS customer_name,
                              o.order_id,
                              o.product_id,
                              o.quantity
                       FROM Customer c
                       JOIN Orders o ON c.customer_id = o.customer_id`;

    var stmt = snowflake.createStatement({sqlText: sql_command});
    stmt.execute();
    
    return 'Bronze_Customer_Orders table created successfully.';
} catch (err) {
    return err.message;
}
$$;