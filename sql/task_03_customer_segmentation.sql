use sql_project;
SELECT
    Customer_ID,
    SUM(Total) AS TotalSpending,
    CASE
        WHEN SUM(Total) < 5000 THEN 'Low'
        WHEN SUM(Total) <= 10000 THEN 'Medium'
        ELSE 'High'
    END AS SpendingTier
FROM walmartsales
GROUP BY Customer_ID;
