-- SQL Retail Sales Analysis

-- DATA ANALYSIS AND FINDINGS (ANSWERING SPECIFIC BUSINESS QUESTIONS)

SELECT * FROM retail_sales
limit 10;

-- 1. Daily Revenue
-- Write a SQL query to find the total revenue generated on each sale date. Display the results in chronological order.
SELECT SUM(total_sale) AS total_revenue, sale_date
FROM retail_sales
GROUP BY sale_date
ORDER BY sale_date;


--2. Highest Revenue Category
--Write a SQL query to determine which product category generated the highest total revenue during the entire period.
SELECT 
	SUM(total_sale) AS total_revenue,
	category
FROM retail_sales
GROUP BY category;

--3. Customer Spending Pattern
-- Write a SQL query to calculate the total amount spent by each customer and display the top 10 highest-spending customers.
SELECT 
	customer_id, 
	SUM(total_sale) AS total_revenue
FROM retail_sales
GROUP BY customer_id
ORDER BY total_revenue DESC
LIMIT 10;

--4. Average Purchase Value by Gender
--Write a SQL query to calculate the average purchase value for male and female customers.
SELECT 
	ROUND(AVG(total_sale):: NUMERIC ,2) AS avg_total_sale,
	gender
FROM retail_sales
GROUP BY gender;

--5. Most Popular Product Category
--Write a SQL query to find which product category sold the highest total quantity of products.
SELECT 
	category,
	SUM(quantity) AS highest_total_quantity
FROM retail_sales
GROUP BY category
ORDER BY highest_total_quantity DESC
LIMIT 1;

--6. Monthly Sales Performance
--Write a SQL query to calculate the total sales for each month and year, ordered from highest to lowest revenue.
SELECT 
	EXTRACT(MONTH FROM sale_date) AS month,
	EXTRACT (YEAR FROM sale_date) AS year,
	SUM(total_sale) AS total_revenue
FROM retail_sales
GROUP BY month, year
ORDER BY total_revenue DESC;

--7. High-Value Transactions
--Write a SQL query to retrieve all transactions where the total sale amount is above the overall average transaction value.
SELECT 
	*,
	(SELECT ROUND(AVG(total_sale) :: NUMERIC, 2) FROM retail_sales) AS avg_total_sale
FROM retail_sales
WHERE total_sale > (SELECT AVG(total_sale) FROM retail_sales);

--8. Customer Purchase Frequency
--Write a SQL query to find customers who made more than five purchases and display the number of transactions for each customer.

SELECT customer_id, COUNT(*) AS transaction_count
FROM retail_sales
GROUP BY customer_id
HAVING COUNT(8) > 5
ORDER BY transaction_count DESC;

--9. Peak Shopping Hours
--Write a SQL query to identify the hour of the day that recorded the highest number of sales transactions.
























