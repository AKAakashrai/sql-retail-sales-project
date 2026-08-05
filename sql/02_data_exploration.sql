-- SQL Retial Sales Analysis

-- EXPLORE THE DATA

-- HOW MANY RECORDS ARE THERE?
SELECT COUNT(*)
FROM retail_sales;

-- What does data look like?
SELECT * FROM retail_sales
LIMIT 10;

-- Are there any missing values?
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
	quantiy IS NULL
	OR
	price_per_unit IS NULL
	OR
	cogs IS NULL
	OR
	total_sale IS NULL;

-- Are there any duplicate records?
SELECT transactions_id, COUNT(*)
FROM retail_sales
GROUP BY transactions_id
HAVING COUNT(*) > 1;



	