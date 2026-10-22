use sql_project;
SELECT DAYNAME(str_to_date(Date_,'%d-%m-%y')) AS DayOfWeek, ROUND(SUM(Total),0) AS TotalSales FROM walmartsales
GROUP BY DayOfWeek
ORDER BY TotalSales DESC;
