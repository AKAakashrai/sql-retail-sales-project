-- SQL Retail Sales Analysis

-- DATA CLEANING
-- Deleting 3 rows of missing Values
DELETE FROM retail_sales
WHERE quantiy IS NULL;

SELECT COUNT(*) --There are now only 1997 rows of 2000 rows 3 rows deleted
FROM retail_sales;


SELECT *
FROM retail_sales
LIMIT 10;

-- Filling in the NULL values in Age column
WITH retail_sales_ext AS (
SELECT 
	gender,
	ROUND(AVG(age) :: INT, 0) AS avg_age
FROM retail_sales
GROUP BY gender
)
UPDATE retail_sales
set age  = avg_age
FROM retail_sales_ext
WHERE
 retail_sales.gender = retail_sales_ext.gender
 AND 
 age IS NULL; -- NULL values in age is filled with the avg age based on the gender

 -- Renaming the column quantiy to quantity
 ALTER TABLE retail_sales
 RENAME COLUMN quantiy TO quantity;


--Re-checking for null values
SELECT * FROM retail_sales
WHERE 
	transactions_id IS NULL
	OR
	sale_date IS NULL
	OR 
	sale_time IS NULL
	OR
	customer_id IS NULL
	OR
	gender IS NULL
	OR
	age IS NULL
	OR
	category IS NULL
	OR
	quantity IS NULL
	OR
	price_per_unit IS NULL
	OR
	cogs IS NULL
	OR
	total_sale IS NULL;
	