use sql_project;

SELECT
    Customer_type,
    Product_line,
    ROUND(SUM(Total), 2) AS Total_Sales
FROM walmartsales
GROUP BY Customer_type,Product_line
ORDER BY Customer_type, Total_Sales DESC;
