use sql_project;

SELECT
    Gender,
    MONTHNAME(STR_TO_DATE(Date_, '%d-%m-%Y'))AS Month_Name,
    ROUND(SUM(Total), 2) AS Total_Sales
FROM walmartsales
GROUP BY Gender, Month_Name
ORDER BY month_name ;


