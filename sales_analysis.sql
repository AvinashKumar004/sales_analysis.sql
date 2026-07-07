USE sales_project;
SHOW TABLES;
DESC orders;
SELECT 
    YEAR(`Order Date`) AS year,
    MONTH(`Order Date`) AS month,
    COUNT(DISTINCT `Order ID`) AS total_orders
FROM orders
GROUP BY year, month
ORDER BY year, month;
SELECT 
    YEAR(o.`Order Date`) AS year,
    MONTH(o.`Order Date`) AS month,
    SUM(d.amount) AS total_revenue,
    COUNT(DISTINCT o.`Order ID`) AS total_orders
FROM orders o
JOIN details d 
ON o.`Order ID` = d.`Order ID`
GROUP BY year, month
ORDER BY year, month;
CREATE DATABASE IF NOT EXISTS sales_project;
USE sales_project;
