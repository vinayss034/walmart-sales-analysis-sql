use sql_project;

SELECT DISTINCT a.Customer_ID
FROM walmartsales a, walmartsales b
WHERE a.Customer_ID = b.Customer_ID
AND DATEDIFF(
    STR_TO_DATE(b.Date_, '%d-%m-%Y'),
    STR_TO_DATE(a.Date_, '%d-%m-%Y')
) BETWEEN 1 AND 30;

