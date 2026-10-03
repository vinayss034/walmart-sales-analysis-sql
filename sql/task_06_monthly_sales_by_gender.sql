use sql_project;

select Gender,monthname(Date_) AS Month_Name,ROUND(SUM(Total),0) AS Total_Sales from walmartsales
group by Gender,Month_Name
Order BY Total_Sales desc;


