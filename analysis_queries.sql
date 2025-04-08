
-- Calculate total sales from the orders table 
SELECT SUM(total_amount) AS total_sales
FROM orders;
-- £3515.43

-- Calculate average value of an order across all customers
SELECT AVG(total_amount) AS average_order_value
FROM orders;
-- 390.603(nearest 3dp)


