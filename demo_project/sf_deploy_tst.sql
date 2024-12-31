-- TABLES
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/demo_project/bronze/Tables/Customer.sql USING (ENV => 'TST');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/demo_project/bronze/Tables/Orders.sql USING (ENV => 'TST');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/demo_project/bronze/Tables/Product.sql USING (ENV => 'TST');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/demo_project/silver/Tables/Customer.sql USING (ENV => 'TST');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/demo_project/silver/Tables/Orders.sql USING (ENV => 'TST');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/demo_project/silver/Tables/Product.sql USING (ENV => 'TST');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/demo_project/gold/Tables/Shipping.sql USING (ENV => 'TST');
 
-- VIEWS
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/demo_project/bronze/Views/Customer_Orders.sql USING (ENV => 'TST');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/demo_project/silver/Views/Customer_Orders.sql USING (ENV => 'TST');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/demo_project/silver/Views/Product_Inventory.sql USING (ENV => 'TST');

-- PROCEDURES
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/demo_project/bronze/Procedures/Load_Bronze_Customer_Orders.sql USING (ENV => 'TST');