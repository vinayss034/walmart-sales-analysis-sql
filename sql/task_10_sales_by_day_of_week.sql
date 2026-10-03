use sql_project;
SELECT DAYNAME(Date_) AS DayOfWeek, ROUND(SUM(Total),0) AS TotalSales FROM walmartsales
GROUP BY DayOfWeek
ORDER BY TotalSales DESC;
