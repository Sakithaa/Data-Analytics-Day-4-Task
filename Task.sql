-- 1. Display all data from the main e-commerce table.
SELECT * FROM `online-ecommerce`;



-- 2. Display the first 20 rows from the table.
SELECT * FROM `online-ecommerce` LIMIT 20;



-- 3. Filter and display
SELECT * FROM `online-ecommerce` 
WHERE State_Code = 'AP' 
LIMIT 10;


-- 4. Use of orders by
SELECT * FROM `online-ecommerce`
ORDER BY Total_Sales DESC 
LIMIT 5;


-- 5. Use of  GROUP BY to aggregate sales data
SELECT 
    State_Code, 
    SUM(Total_Sales) AS Total_Sales_Per_State 
FROM `online-ecommerce` 
GROUP BY State_Code 
ORDER BY Total_Sales_Per_State DESC;


-- 6. Calculate the average sales 
SELECT 
    Brand, 
    AVG(Total_Sales) AS Avg_Sales_Per_Brand 
FROM `online-ecommerce` 
GROUP BY Brand 
ORDER BY Avg_Sales_Per_Brand DESC;


-- 7. Uses of subquery.

SELECT DISTINCT Customer_Name 
FROM `online-ecommerce` 
WHERE Customer_Name IN (
    SELECT Customer_Name 
    FROM `online-ecommerce` 
    GROUP BY Customer_Name 
    HAVING SUM(Total_Sales) > 1000
)  
LIMIT 10;


-- 8. Creating  a view for easy access
CREATE VIEW customer_sales AS 
SELECT 
    Customer_Name, 
    SUM(Total_Sales) AS Total_Sales 
FROM `online-ecommerce` 
GROUP BY Customer_Name; 

-- Query the newly created view 
SELECT * FROM customer_sales 
ORDER BY Total_Sales DESC 
LIMIT 5;


-- 9. Handle NULL values using COALESCE.
SELECT 
    Order_Number, 
    COALESCE('Assigned Supervisor', 'Not Assigned') AS Supervisor, 
    Total_Sales 
FROM `online-ecommerce` 
LIMIT 10;


-- 10. Create indexes to optimize query performance.
CREATE INDEX idx_state_code ON `online-ecommerce`(State_Code(50));
CREATE INDEX idx_customer_name ON `online-ecommerce`(Customer_Name(50));


-- 11. Table Creation and Joins:
-- Create a new 'Customers' table.

CREATE TABLE Customers(Customer_Name text, Customer_Email varchar(100));

-- Insert sample data into the new 'Customers' table.
INSERT INTO Customers (Customer_Name, Customer_Email) VALUES 
('John', 'john@gmail.com'),
('Peter', 'peter@gmail.com'),
('Sam','sam@gmail.com');

-- Display all records from the 'Customers' table.
SELECT * FROM Customers;

-- Inner Join:
-- This join returns only orders that have a matching customer in the Customers table.
SELECT 
    o.Order_Number, 
    o.Customer_Name, 
    c.Customer_Email, 
    o.Total_Sales
FROM `online-ecommerce` o
INNER JOIN Customers c ON o.Customer_Name = c.Customer_Name;

-- Left Join:
-- This join returns all orders, even if they don't have a matching customer.
-- For non-matching rows, Customer_Email will be NULL.
SELECT 
    o.Order_Number, 
    o.Customer_Name, 
    c.Customer_Email, 
    o.Total_Sales
FROM `online-ecommerce` o
LEFT JOIN customers c ON o.Customer_Name = c.Customer_Name
LIMIT 10;

-- Right Join:
-- This join returns all customers, even if they haven't placed an order.
-- For non-matching rows, Order_Number and Total_Sales will be NULL.
SELECT 
    o.Order_Number, 
    o.Customer_Name, 
    c.Customer_Email, 
    o.Total_Sales
FROM `online-ecommerce` o
RIGHT JOIN customers c ON o.Customer_Name = c.Customer_Name
LIMIT 10;