use sql_project;
SELECT *
FROM walmartsales
WHERE Total > (
    SELECT AVG(Total) * 2
    FROM walmartsales
);
