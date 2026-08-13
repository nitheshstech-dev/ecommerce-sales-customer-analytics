-- E-commerce Sales & Customer Analytics
SELECT region, SUM(revenue) AS revenue, SUM(profit) AS profit
FROM sales_clean GROUP BY region ORDER BY revenue DESC;

SELECT category, SUM(revenue) AS revenue, SUM(profit) AS profit
FROM sales_clean GROUP BY category ORDER BY revenue DESC;

SELECT product, SUM(revenue) AS revenue, SUM(quantity) AS units
FROM sales_clean GROUP BY product ORDER BY revenue DESC LIMIT 10;

SELECT month, SUM(revenue) AS revenue, SUM(profit) AS profit
FROM sales_clean GROUP BY month ORDER BY month;

SELECT segment, COUNT(DISTINCT customer_id) AS customers, SUM(revenue) AS revenue
FROM sales_clean GROUP BY segment ORDER BY revenue DESC;
