use sql_project;

WITH SalesStats AS (
    SELECT 
        Product_line,
        AVG(Total) AS AvgSales,
        STDDEV(Total) AS SalesStdDev
    FROM walmartsales
    GROUP BY Product_line
)
SELECT s.*
FROM walmartsales s
JOIN SalesStats ss ON s.Product_line = ss.Product_line
WHERE ABS(s.Total - ss.AvgSales) > (2 * ss.SalesStdDev);
