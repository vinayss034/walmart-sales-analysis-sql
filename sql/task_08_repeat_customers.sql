use sql_project;

select Customer_ID,monthname(Date_)As Month_Name,count(customer_ID) As No_Purchases from walmartsales
group by Month_Name,Customer_ID
Order by Month_Name asc;

