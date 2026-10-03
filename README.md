# Walmart Sales Performance Analysis — MySQL

## Project Overview
This project analyzes 1,000 Walmart sales transactions using MySQL to study branch/monthly sales, product profitability, customer spending behavior, sales anomalies, payment methods, gender/monthly sales, customer purchase frequency, top customers, and day-of-week sales.

## Dataset
The repository contains the project dataset in `data/walmart_sales.csv` with 1,000 rows and 18 columns covering branch, city, customer type, gender, product line, pricing, quantity, tax, total sales, date/time, payment, cost, gross income, rating, and customer ID.

## Tools & SQL Skills
- MySQL / MySQL Workbench
- SELECT, GROUP BY, ORDER BY
- SUM, COUNT, AVG
- CASE statements
- Date functions
- Common Table Expressions (CTEs)
- JOIN
- STDDEV-based anomaly detection
- Customer segmentation
- Business-oriented SQL analysis

## Business Questions
1. Which branch/month combinations have the highest sales?
2. Which product lines are most profitable by branch?
3. How can transactions be segmented by spending?
4. Which transactions are statistical sales anomalies?
5. Which payment methods are most popular by city?
6. How do monthly sales differ by gender?
7. Which product lines perform best for Member vs Normal customers?
8. How frequently do customers purchase each month?
9. Who are the top 5 customers by sales volume?
10. Which days of the week generate the most sales?

## Key Results From the Project
- Branch C recorded the highest January branch/month sales in the project output: about 40,432.
- Home and lifestyle was the highest-profit product line for Branch A in the project output.
- The segmentation query uses Low, Medium, and High spending categories.
- The anomaly query uses a 2-standard-deviation threshold within each product line.
- Ewallet was the most frequent payment method in Mandalay and Yangon in the displayed output; Cash led in Naypyitaw.
- January had the highest displayed monthly sales for both female and male customers.
- Customer ID 8 had the highest sales volume among the top five customers, about 26,634.
- Saturday had the highest total sales among the days shown in the project output.

## Repository Structure
```text
walmart-sales-analysis-mysql/
├── README.md
├── data/
│   └── walmart_sales.csv
├── sql/
│   ├── 00_setup_database.sql
│   ├── task_01_branch_sales.sql
│   ├── task_02_product_profitability.sql
│   ├── task_03_customer_segmentation.sql
│   ├── task_04_sales_anomaly_detection.sql
│   ├── task_05_payment_method_by_city.sql
│   ├── task_06_monthly_sales_by_gender.sql
│   ├── task_07_product_line_by_customer_type.sql
│   ├── task_08_repeat_customers.sql
│   ├── task_09_top_customers.sql
│   └── task_10_sales_by_day_of_week.sql
├── documentation/
│   ├── walmart_analysis_presentation.pptx
│   └── project_brief.pdf
└── screenshots/
```

## How to Run
1. Open MySQL Workbench.
2. Run `sql/00_setup_database.sql`.
3. Import `data/walmart_sales.csv` into `sql_project.walmartsales` using MySQL Workbench's Table Data Import Wizard.
4. Run the Task 1–10 SQL files.

Example:
```sql
USE sql_project;

SELECT Customer_ID,
       ROUND(SUM(Total),0) AS Sales_Volume
FROM walmartsales
GROUP BY Customer_ID
ORDER BY Sales_Volume DESC
LIMIT 5;
```

## Screenshots
Add 5–7 MySQL Workbench screenshots to the `screenshots/` folder. Recommended:
- Branch sales
- Product profitability
- Customer segmentation
- Sales anomaly detection
- Payment method by city
- Top 5 customers
- Sales by day of week

## Author
**Vinay Soni**  
Aspiring Data Analyst  
Skills: MySQL | SQL | Excel | Power BI | Data Analysis
