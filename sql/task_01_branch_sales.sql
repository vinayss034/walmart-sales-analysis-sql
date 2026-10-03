use sql_project;

SELECT Branch,SUM(ROUND(Total,0)) AS Total_Sales_Per_Branch,monthname(Date_) AS Month_Name
FROM WalmartSales
GROUP BY Branch,Month_Name
ORDER BY Total_Sales_Per_Branch DESC;