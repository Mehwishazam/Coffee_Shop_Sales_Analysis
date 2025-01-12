CREATE DATABASE coffee_db;
GO
USE coffee_db;

SELECT TOP (1000) [transaction_id]
      ,[transaction_date]
      ,[transaction_time]
      ,[transaction_qty]
      ,[store_id]
      ,[store_location]
      ,[product_id]
      ,[unit_price]
      ,[product_category]
      ,[product_type]
      ,[product_detail]
  FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]


  USE coffee_db; -- Select your database
GO

EXEC sp_help '[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]'; -- Check the structure of your table


DATA CLRANING:
(1)

SELECT transaction_date
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
WHERE ISDATE(transaction_date) = 0;

UPDATE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
SET transaction_date = '2023-01-01' -- Replace with a valid default date
WHERE ISDATE(transaction_date) = 0;

UPDATE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
SET transaction_date = NULL
WHERE ISDATE(transaction_date) = 0;

SELECT transaction_date
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
WHERE ISDATE(transaction_date) = 0;

ALTER TABLE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
    ALTER COLUMN transaction_date DATE;

	SELECT TOP 10 transaction_date
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];

(2)


SELECT DISTINCT transaction_time 
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];

SELECT transaction_time 
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
WHERE TRY_CONVERT(TIME, transaction_time) IS NULL;

UPDATE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
SET transaction_time = '00:00:00'
WHERE TRY_CONVERT(TIME, transaction_time) IS NULL;

ALTER TABLE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
ALTER COLUMN transaction_time TIME;

SELECT DISTINCT transaction_time 
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];


(3)

-- Check distinct values in transaction_id
SELECT DISTINCT transaction_id 
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];

-- Identify invalid transaction_id entries (non-numeric or incorrect format)
SELECT transaction_id
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
WHERE ISNUMERIC(transaction_id) = 0;

-- Replace invalid transaction_id entries with a default value
UPDATE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
SET transaction_id = '0'  -- or use another suitable placeholder
WHERE ISNUMERIC(transaction_id) = 0;

-- Convert transaction_id to INT
UPDATE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
SET transaction_id = CAST(transaction_id AS INT);

-- Alter the transaction_id column to INT
ALTER TABLE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
ALTER COLUMN transaction_id INT;

-- Verify the changes in transaction_id
SELECT DISTINCT transaction_id 
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];

(4)

-- Check distinct values in transaction_qty
SELECT DISTINCT transaction_qty
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];

-- Identify invalid transaction_qty entries (non-numeric values)
SELECT transaction_qty
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
WHERE ISNUMERIC(transaction_qty) = 0;

-- Replace invalid transaction_qty entries with a default value (e.g., 0)
UPDATE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
SET transaction_qty = '0'  -- or any appropriate placeholder
WHERE ISNUMERIC(transaction_qty) = 0;

-- Convert transaction_qty to INT
UPDATE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
SET transaction_qty = CAST(transaction_qty AS INT);

-- Alter the transaction_qty column to INT
ALTER TABLE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
ALTER COLUMN transaction_qty INT;

-- Verify the changes in transaction_qty
SELECT DISTINCT transaction_qty
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];

(5)

-- Check distinct values in unit_price
SELECT DISTINCT unit_price
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];

-- Identify invalid unit_price entries (non-numeric values)
SELECT unit_price
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
WHERE ISNUMERIC(unit_price) = 0;

-- Replace invalid unit_price entries with a default value (e.g., 0.00)
UPDATE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
SET unit_price = '0.00'  -- or any appropriate placeholder
WHERE ISNUMERIC(unit_price) = 0;

-- Convert unit_price to DECIMAL(10, 2)
UPDATE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
SET unit_price = CAST(unit_price AS DECIMAL(10, 2));

-- Alter the unit_price column to DECIMAL(10, 2)
ALTER TABLE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
ALTER COLUMN unit_price DECIMAL(10, 2);

-- Verify the changes in unit_price
SELECT DISTINCT unit_price
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];

(6)

-- Check distinct values in store_id
SELECT DISTINCT store_id
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];

-- Identify invalid store_id entries (non-numeric)
SELECT store_id
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
WHERE ISNUMERIC(store_id) = 0;

-- Replace invalid store_id entries with default value (e.g., 0 or NULL)
UPDATE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
SET store_id = 0  -- Or NULL depending on your needs
WHERE ISNUMERIC(store_id) = 0;

-- Convert store_id to INT
UPDATE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
SET store_id = CAST(store_id AS INT);

-- Alter store_id column to INT
ALTER TABLE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
ALTER COLUMN store_id INT;

-- Verify changes in store_id
SELECT DISTINCT store_id
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];

(7)

-- Check distinct values in product_id
SELECT DISTINCT product_id
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];

-- Identify invalid product_id entries (non-numeric)
SELECT product_id
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
WHERE ISNUMERIC(product_id) = 0;

-- Replace invalid product_id entries with default value (e.g., 0 or NULL)
UPDATE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
SET product_id = 0  -- Or NULL depending on your needs
WHERE ISNUMERIC(product_id) = 0;

-- Convert product_id to INT
UPDATE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
SET product_id = CAST(product_id AS INT);

-- Alter product_id column to INT
ALTER TABLE [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)]
ALTER COLUMN product_id INT;

-- Verify changes in product_id
SELECT DISTINCT product_id
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];


Dimension/Fact Modeling;


CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,  -- Primary key
    store_location VARCHAR(255)  -- Store location
);


CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,  -- Primary key
    product_category VARCHAR(255),  -- Category of the product
    product_type VARCHAR(255),  -- Type of the product
    product_detail VARCHAR(255)  -- Details about the product
);

CREATE TABLE dim_date (
    transaction_date DATE PRIMARY KEY,  -- Primary key 
    year INT,                   -- Year
    month INT,                  -- Month
    day INT,                    -- Day
    quarter INT,                -- Quarter (1-4)
    day_of_week INT,            -- Day of the week (1-7)
    month_name VARCHAR(20),     -- Month name
    weekday_name VARCHAR(20)    -- Weekday name
);

CREATE TABLE fact_sales (
    transaction_id INT PRIMARY KEY,  -- Transaction ID (Primary Key)
    transaction_date DATE,           -- Transaction date (Foreign Key from dim_date)
    transaction_time TIME,           -- Time of the transaction
    transaction_qty INT,             -- Quantity of items in the transaction
    unit_price DECIMAL(10, 2),       -- Unit price of the product
    total_sales AS (transaction_qty * unit_price),  -- Computed column for total sales
    store_id INT,                    -- Store ID (Foreign Key from dim_store)
    product_id INT,                  -- Product ID (Foreign Key from dim_product)
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (transaction_date) REFERENCES dim_date(transaction_date)
);


Insert Data into Dimension Tables

Populate dim_store

INSERT INTO dim_store (store_id, store_location)
SELECT DISTINCT store_id, store_location
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];


 Populate dim_product

 INSERT INTO dim_product (product_id, product_category, product_type, product_detail)
SELECT DISTINCT product_id, product_category, product_type, product_detail
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];


 Populate dim_date

 INSERT INTO dim_date (transaction_date, year, month, day, quarter, day_of_week, month_name, weekday_name)
SELECT DISTINCT 
    transaction_date,
    YEAR(transaction_date) AS year,
    MONTH(transaction_date) AS month,
    DAY(transaction_date) AS day,
    DATEPART(QUARTER, transaction_date) AS quarter,
    DATEPART(WEEKDAY, transaction_date) AS day_of_week,
    DATENAME(MONTH, transaction_date) AS month_name,
    DATENAME(WEEKDAY, transaction_date) AS weekday_name
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];


Populate the Fact Table

INSERT INTO fact_sales (transaction_id, transaction_date, transaction_time, transaction_qty, unit_price, store_id, product_id)
SELECT 
    transaction_id,
    transaction_date,
    transaction_time,
    transaction_qty,
    unit_price,
    store_id,
    product_id
FROM [coffee_db].[dbo].[Coffee Shop Sales.xlsx - Transactions (3)];



Validate the Data

Check Dimensions:

SELECT * FROM dim_store;
SELECT * FROM dim_product;
SELECT * FROM dim_date;

Check the Fact Table:

SELECT * FROM fact_sales;



 PROBLEM STATEMENT

KPI'S REQUIREMENTS

Coffee

1. Total Sales Analysis:

• Calculate the total sales for each respective month.

• Determine the month-on-month increase or decrease in sales.

• Calculate the difference in sales between the selected month and the previous month.

1
SELECT 
    d.year,
    d.month_name,
    SUM(f.total_sales) AS Total_Sales
FROM fact_sales f
JOIN dim_date d ON f.transaction_date = d.transaction_date
GROUP BY d.year, d.month_name, d.month
ORDER BY d.year, d.month;

2
WITH MonthlySales AS (
    SELECT 
        d.year,
        d.month_name,
        d.month,
        SUM(f.total_sales) AS Total_Sales
    FROM fact_sales f
    JOIN dim_date d ON f.transaction_date = d.transaction_date
    GROUP BY d.year, d.month_name, d.month
)
SELECT 
    year,
    month_name,
    Total_Sales,
    Total_Sales - LAG(Total_Sales) OVER (ORDER BY year, month) AS MoM_Change
FROM MonthlySales
ORDER BY year, month;

3
WITH MonthlySales AS (
    SELECT 
        d.year,
        d.month_name,
        d.month,
        SUM(f.total_sales) AS Total_Sales
    FROM fact_sales f
    JOIN dim_date d ON f.transaction_date = d.transaction_date
    GROUP BY d.year, d.month_name, d.month
)
SELECT 
    year,
    month_name,
    Total_Sales,
    Total_Sales - LAG(Total_Sales) OVER (ORDER BY year, month) AS Difference_From_Previous_Month
FROM MonthlySales
WHERE year = 2023; -- Filtering data for the year 2023




2. Total Orders Analysis:

• Calculate the total number of orders for each respective month.

• Determine the month-on-month increase or decrease in the number of orders.

• Calculate the difference in the number of orders between the selected month and the previous month.

1
SELECT 
    d.year,
    d.month_name,
    COUNT(DISTINCT f.transaction_id) AS Total_Orders
FROM fact_sales f
JOIN dim_date d ON f.transaction_date = d.transaction_date
GROUP BY d.year, d.month_name, d.month
ORDER BY d.year, d.month;

2
WITH MonthlyOrders AS (
    SELECT 
        d.year,
        d.month_name,
        d.month,
        COUNT(DISTINCT f.transaction_id) AS Total_Orders
    FROM fact_sales f
    JOIN dim_date d ON f.transaction_date = d.transaction_date
    GROUP BY d.year, d.month_name, d.month
)
SELECT 
    year,
    month_name,
    Total_Orders,
    Total_Orders - LAG(Total_Orders) OVER (ORDER BY year, month) AS MoM_Change
FROM MonthlyOrders
ORDER BY year, month;

3
WITH MonthlyOrders AS (
    SELECT 
        d.year,
        d.month_name,
        d.month,
        COUNT(DISTINCT f.transaction_id) AS Total_Orders
    FROM fact_sales f
    JOIN dim_date d ON f.transaction_date = d.transaction_date
    GROUP BY d.year, d.month_name, d.month
)
SELECT 
    year,
    month_name,
    Total_Orders,
    Total_Orders - LAG(Total_Orders) OVER (ORDER BY year, month) AS Difference_From_Previous_Month
FROM MonthlyOrders
WHERE year = 2023; -- Filtering data for the year 2023


3. Total Quantity Sold Analysis:

• Calculate the total quantity sold for each respective month.

• Determine the month-on-month increase or decrease in the total quantity sold.

• Calculate the difference in the total quantity sold between the selected month and the previous month.

1
SELECT 
    d.year,
    d.month_name,
    d.month,
    SUM(f.transaction_qty) AS Total_Quantity_Sold
FROM fact_sales f
JOIN dim_date d ON f.transaction_date = d.transaction_date
GROUP BY d.year, d.month_name, d.month
ORDER BY d.year, d.month;

2
WITH MonthlyQuantitySold AS (
    SELECT 
        d.year,
        d.month_name,
        d.month,
        SUM(f.transaction_qty) AS Total_Quantity_Sold
    FROM fact_sales f
    JOIN dim_date d ON f.transaction_date = d.transaction_date
    GROUP BY d.year, d.month_name, d.month
)
SELECT 
    year,
    month_name,
    Total_Quantity_Sold,
    Total_Quantity_Sold - LAG(Total_Quantity_Sold) OVER (ORDER BY year, month) AS MoM_Change
FROM MonthlyQuantitySold
ORDER BY year, month;

3
WITH MonthlyQuantitySold AS (
    SELECT 
        d.year,
        d.month_name,
        d.month,
        SUM(f.transaction_qty) AS Total_Quantity_Sold
    FROM fact_sales f
    JOIN dim_date d ON f.transaction_date = d.transaction_date
    GROUP BY d.year, d.month_name, d.month
)
SELECT 
    year,
    month_name,
    Total_Quantity_Sold,
    -- Calculating the difference between current and previous month's sales
    Total_Quantity_Sold - LAG(Total_Quantity_Sold) OVER (ORDER BY year, month) AS Difference_From_Previous_Month
FROM MonthlyQuantitySold
WHERE year = 2023 -- Adjust this year and month as needed
ORDER BY year, month;



Sales Analysis by Weekdays and Weekends:

SELECT 
    CASE 
        WHEN DATEPART(WEEKDAY, transaction_date) IN (1, 7) THEN 'Weekend'
        ELSE 'Weekday'
    END AS day_type,
    SUM(transaction_qty * unit_price) AS total_sales,
    SUM(transaction_qty) AS total_quantity
FROM fact_sales
GROUP BY 
    CASE 
        WHEN DATEPART(WEEKDAY, transaction_date) IN (1, 7) THEN 'Weekend'
        ELSE 'Weekday'
    END;


Sales Analysis by Store Location:

SELECT 
    s.store_location, 
    SUM(f.total_sales) AS Total_Sales
FROM fact_sales f
JOIN dim_store s ON f.store_id = s.store_id
GROUP BY s.store_location
ORDER BY s.store_location;


Daily Sales Analysis with Average Line:

SELECT 
    transaction_date,
    SUM(transaction_qty * unit_price) AS daily_sales
FROM fact_sales
WHERE YEAR(transaction_date) = 2023 AND MONTH(transaction_date) = 1 -- Example for January 2023
GROUP BY transaction_date;

 Sales Analysis by Product Category:

SELECT 
    p.product_category,
    SUM(f.transaction_qty * f.unit_price) AS total_sales,
    SUM(f.transaction_qty) AS total_quantity
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
GROUP BY p.product_category;

Top 10 Products by Sales:

SELECT TOP 10 
    p.product_id,
    p.product_category,
    p.product_type,
    p.product_detail,
    SUM(f.total_sales) AS Total_Sales
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
GROUP BY p.product_id, p.product_category, p.product_type, p.product_detail
ORDER BY Total_Sales DESC;


Sales Analysis by Days and Hours:

SELECT 
    CAST(transaction_date AS DATE) AS day,
    DATEPART(HOUR, transaction_time) AS hour,
    SUM(transaction_qty * unit_price) AS total_sales,
    SUM(transaction_qty) AS total_quantity
FROM fact_sales
GROUP BY 
    CAST(transaction_date AS DATE), 
    DATEPART(HOUR, transaction_time)
ORDER BY day, hour;


all done,,,,,,




