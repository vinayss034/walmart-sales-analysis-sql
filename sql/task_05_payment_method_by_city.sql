use sql_project;

SELECT City, Payment,count(Payment) AS PaymentCount
FROM walmartsales
GROUP BY City, Payment
ORDER BY City, PaymentCount DESC;

