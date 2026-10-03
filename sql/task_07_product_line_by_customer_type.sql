use sql_project;

select Customer_type,Product_Line,ROUND(SUM(Total),0) AS Total_Sales from walmartsales 
group by customer_type ,Product_Line
Order BY Total_Sales Desc;