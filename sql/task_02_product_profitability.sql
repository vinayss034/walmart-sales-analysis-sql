use sql_project;
SELECT
    Branch,
    Product_line,
    ROUND(SUM( gross_income ), 2) AS TotalProfit
FROM walmartsales
GROUP BY Branch, Product_line
ORDER BY Branch, TotalProfit DESC;
