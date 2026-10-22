use sql_project;
SELECT
    Customer_ID,
    SUM(Total) AS TotalSpending,
    CASE
        WHEN SUM(Total) < 500 THEN 'Low'
        WHEN SUM(Total) <= 1500 THEN 'Medium'
        ELSE 'High'
    END AS SpendingTier
FROM walmartsales
GROUP BY Customer_ID;
