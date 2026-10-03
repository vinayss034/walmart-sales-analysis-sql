use sql_project;

SELECT Branch, Product_line, ROUND(SUM(cogs-Gross_income),0) AS TotalProfit
FROM walmartsales
GROUP BY Branch, Product_line
ORDER BY Branch, TotalProfit DESC;
