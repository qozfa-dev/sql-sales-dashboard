
-- Calculate total sales from the orders table 
SELECT SUM(total_amount) AS total_sales
FROM orders;
-- £3515.43

-- Calculate average value of an order across all customers
SELECT AVG(total_amount) AS average_order_value
FROM orders;
-- 390.603(nearest 3dp)

-- Order products and sales by highest sales
SELECT p.name AS product_name,
SUM(oi.quantity * oi.item_price) AS total_sales
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id -- when this condition holds, match these values
GROUP BY p.name
ORDER BY total_sales DESC;

/* "Laptop"	2240.00
"Dishwasher"	349.99
"Phone"	230.00
"Doorbell"	147.98
"Chocolate"	60.00
"Dress"	25.00
"Washing detergent"	19.96
"Stationary"	7.50 */

-- Total sales by each customer in descending order
SELECT c.name AS customer_name,
SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC;




