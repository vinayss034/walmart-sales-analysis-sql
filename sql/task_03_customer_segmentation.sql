use sql_project;

select Customer_ID,Branch,Customer_type,Gender,Total,
CASE
WHEN Total BETWEEN 0 AND 300 Then 'Low'
WHEN Total BETWEEN 300 AND 700 Then 'Medium'
Else 'High'
END AS Spending_Behaviour
from walmartsales;