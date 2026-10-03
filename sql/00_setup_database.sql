CREATE DATABASE IF NOT EXISTS sql_project;
USE sql_project;

DROP TABLE IF EXISTS walmartsales;

CREATE TABLE walmartsales (
    Invoice_ID VARCHAR(30),
    Branch VARCHAR(10),
    City VARCHAR(50),
    Customer_type VARCHAR(30),
    Gender VARCHAR(20),
    Product_line VARCHAR(100),
    Unit_price DECIMAL(10,2),
    Quantity INT,
    Tax_5_percent DECIMAL(12,4),
    Total DECIMAL(12,4),
    Date_ DATE,
    Time_ TIME,
    Payment VARCHAR(30),
    cogs DECIMAL(12,2),
    gross_margin_percentage DECIMAL(12,9),
    gross_income DECIMAL(12,4),
    Rating DECIMAL(4,2),
    Customer_ID INT
);

-- Import data/walmart_sales.csv into sql_project.walmartsales
-- using MySQL Workbench's Table Data Import Wizard.
-- Map the CSV headers to the column names above.
