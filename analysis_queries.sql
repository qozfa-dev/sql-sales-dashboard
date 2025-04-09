
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

/*
"Timothy Carpenter"	1127.99
"Susan Macallisater"	1100.00
"Dylan Mustafa"	460.00
"Michael Myers"	349.99
"Dom Smith"	230.00
"Patrick Star"	139.99
"Rachel Johnson"	62.50
"Musa Yusuf"	25.00
"Sally Naomi"	19.96
*/

-- Monthly sales trends
SELECT EXTRACT(MONTH FROM order_date) AS MONTH,
    EXTRACT(YEAR FROM order_date) AS YEAR,
    SUM(total_amount) AS total_sales
FROM orders
GROUP BY year, month
ORDER BY year DESC, month DESC;

/*
4	2025	460.00
3	2024	62.50
2	2024	230.00
1	2024	1127.99
1	2023	19.96
2	2022	25.00
9	2021	349.99
10	2020	139.99
12	2019	1100.00
*/

-- Top 5 products by total quantity sold
SELECT p.name AS product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_quantity_sold DESC
LIMIT 5;

/*
"Chocolate"	10
"Laptop"	4
"Washing detergent"	4
"Stationary"	3
"Doorbell"	2
*/











