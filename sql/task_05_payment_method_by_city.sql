use sql_project;

SELECT City, Payment, COUNT(*) AS Total_Payments
FROM walmartsales
GROUP BY City, Payment
ORDER BY City, Total_Payments DESC;

