CREATE DATABASE online_sales;
USE online_sales;

CREATE TABLE online_sales (
    order_id VARCHAR(20),
    order_date DATE,
    product_id VARCHAR(20),
    amount DECIMAL(10, 2)
);

SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY order_year, order_month
ORDER BY total_revenue DESC
LIMIT 3;

