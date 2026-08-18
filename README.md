# SQL Retail Sales Analysis

## Project Overview

This project analyzes a retail sales dataset using PostgreSQL to explore
sales performance, customer purchasing behaviour, product categories, and
transaction patterns.

The project focuses on data cleaning, exploratory data analysis (EDA), and
answering practical business questions using SQL.

## Objectives

- Clean and prepare the retail sales dataset for analysis
- Analyse customer purchasing behaviour
- Evaluate sales and revenue performance
- Identify high-performing product categories
- Analyse customer purchase frequency and spending patterns
- Identify peak shopping hours and sales shifts
- Practise SQL concepts using a real-world retail dataset
- Generate actionable business insights from the analysis

## Dataset

The dataset contains 2,000 retail sales transactions with information about
customers, products, sales, and transaction timing.

### Key Columns

- `transactions_id` – Unique transaction identifier
- `sale_date` – Date of the transaction
- `sale_time` – Time of the transaction
- `customer_id` – Unique customer identifier
- `gender` – Customer gender
- `age` – Customer age
- `category` – Product category
- `quantity` – Number of products purchased
- `price_per_unit` – Price of each product
- `cogs` – Cost of goods sold
- `total_sale` – Total transaction value

## Data Cleaning

The dataset was inspected and cleaned before analysis.

The cleaning process included:

- Checking the dataset structure and data types
- Identifying missing values
- Handling missing customer age values
- Identifying transactions with missing sales-related values
- Removing incomplete transactions where quantity, price per unit,
  COGS, and total sale were missing
- Checking for duplicate records
- Correcting the `quantiy` column name to `quantity`

## Business Questions

The SQL analysis answers questions such as:

1. What is the total revenue generated on each sale date?
2. Which product category generates the highest revenue?
3. Who are the top 10 highest-spending customers?
4. What is the average transaction value by gender?
5. Which product category has the highest sales quantity?
6. Which months generate the highest revenue?
7. Which transactions have a value above the overall average?
8. Which customers make more than five purchases?
9. What is the busiest shopping hour?
10. Which sales shift generates the highest revenue?

## SQL Skills Demonstrated

- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`
- Aggregate Functions
- `HAVING`
- `CASE` Statements
- Subqueries
- Date and Time Functions
- Common Table Expressions (CTEs)
- Joins
- Data Cleaning

## Key Findings

Some of the main findings from the analysis include:

- Electronics generated the highest total revenue among the product
  categories.
- Clothing had the highest total quantity of products sold.
- The 45–54 age group represented the largest customer age segment,
  with 447 customers.
- The 35–44 age group generated the highest total revenue among the
  analysed age groups.
- The 19:00 hour recorded the highest number of transactions.
- The Evening shift generated the highest overall revenue.

Detailed findings and analysis are available in the `results/` directory.

## Python Exploratory Data Analysis

Python was also used to perform additional exploratory data analysis and
visualise patterns in the dataset.

The Python analysis included:

- Data inspection using Pandas
- Missing-value analysis
- Duplicate checking
- Data type conversion
- Customer age-group analysis
- Monthly revenue analysis
- Category-level analysis
- Data visualisation using Matplotlib

Visualisations were used to make customer and sales patterns easier to
interpret.

## Tools Used

- PostgreSQL – Data analysis and querying
- pgAdmin 4 – Database management and SQL execution
- Python – Exploratory data analysis
- Pandas – Data manipulation and analysis
- Matplotlib – Data visualisation
- VS Code – Development environment
- Git – Version control
- GitHub – Project repository and portfolio

## Project Structure

```text
SQL-Retail-Sales-Analysis/
│
├── data/
│   └── retail_sales.csv
│
├── sql/
│   └── retail_sales_analysis.sql
│
├── Python_folder/
│   └── retail_sales.ipynb
│
├── screenshots/
│
├── results/
│   ├── findings.md
│   └── python_findings.md
│
└── README.md
```
