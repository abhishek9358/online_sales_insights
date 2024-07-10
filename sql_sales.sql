use summer_training;
show tables;
select * from online_data;
-- 1. Total Revenue per Product Category

SELECT product_category, SUM(total_revenue) AS total_revenue
FROM online_data
GROUP BY product_category;

-- Average Unit Price per Product Category

SELECT product_category, AVG(unit_price) AS avg_unit_price
FROM online_data
GROUP BY product_category;

-- Top 5 Products by Units Sold

SELECT product_name, SUM(units_sold) AS total_units_sold
FROM online_data
GROUP BY product_name
ORDER BY total_units_sold DESC
LIMIT 5;

-- Total Revenue per Region

SELECT region, SUM(total_revenue) AS total_revenue
FROM online_data
GROUP BY region;

-- Number of Transactions per Payment Method

SELECT payment_method, COUNT(*) AS transaction_count
FROM online_data
GROUP BY payment_method;

-- Total Units Sold per Region

SELECT region, SUM(units_sold) AS total_units_sold
FROM online_data
GROUP BY region;

-- Monthly Sales Trend

SELECT DATE_FORMAT(date, '%Y-%m') AS month, SUM(total_revenue) AS total_revenue
FROM online_data
GROUP BY month
ORDER BY month;

--  Top 5 Customers by Revenue 

SELECT transaction_id, total_revenue
FROM online_data
ORDER BY total_revenue DESC
LIMIT 5;

--  Average Discount Percentage per Product Category

SELECT product_category, AVG(units_sold) AS avg_units_sold
FROM online_data
GROUP BY product_category;

-- Most Common Payment Method

SELECT payment_method, COUNT(*) AS usage_count
FROM online_data
GROUP BY payment_method
ORDER BY usage_count DESC
LIMIT 1;

-- Revenue per Product Name

SELECT product_name, SUM(total_revenue) AS total_revenue
FROM online_data
GROUP BY product_name
ORDER BY total_revenue DESC;

-- Units Sold by Date
SELECT date, SUM(units_sold) AS total_units_sold
FROM online_data
GROUP BY date
ORDER BY date;

-- Average Units Sold per Transaction

SELECT AVG(units_sold) AS avg_units_sold
FROM online_data;

--  Total Revenue by Payment Method

SELECT payment_method, SUM(total_revenue) AS total_revenue
FROM online_data
GROUP BY payment_method;
















