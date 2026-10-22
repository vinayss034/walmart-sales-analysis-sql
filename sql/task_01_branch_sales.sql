use sql_project;
SELECT
    Branch,
    YEAR(STR_TO_DATE(Date_, '%d-%m-%Y')) AS SalesYear,
    MONTHNAME(STR_TO_DATE(Date_, '%d-%m-%Y')) AS Month_Name,
    SUM(Total) AS Total_Sales
FROM walmartsales
GROUP BY Branch, SalesYear ,Month_Name
ORDER BY Branch, Total_Sales DESC;
