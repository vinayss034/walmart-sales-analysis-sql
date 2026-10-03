use sql_project;
select Customer_ID,round(SUM(Total),0) AS Sales_Volumne from walmartsales 
Group by Customer_ID
ORDER by Sales_Volumne desc LIMIT 5;

