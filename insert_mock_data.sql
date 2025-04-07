INSERT INTO customers (name, email, country, signup_date) 
VALUES 
  ('John Doe', 'john@example.com', 'USA', '2024-01-01'),
  ('Jane Smith', 'jane@example.com', 'UK', '2024-02-15'),
  ('Alice Johnson', 'alice@example.com', 'Canada', '2024-03-05'),
  ('Michael Myers', 'michaelmyers789@gmail.com', 'Poland', '2025-04-07'),
  ('Patrick Star', 'patrick@underarock.com', 'America', '2019-08-09'),
  ('Sally Naomi', 'sallyn365@hotmal.com', 'Canada', '2019-08-09'),
  ('Susan Macallisater', 'suziemac@mack.com', 'France', '2020-01-03'),
  ('Dylan Mustafa', 'dylanmustafa5@gmail.com', 'Spain', '2024-04-04'),
  ('Musa Yusuf', 'musayusuf@outlook.com', 'Saudi Arabia', '2022-06-15');

INSERT INTO products (name, category, price)
VALUES
	('Laptop', 'Electronics', 560.00),
	('Doorbell', 'Home', 139.99),
	('Phone case', 'Accessories', 7.99),
	('Dishwasher', 'Home', 349.99),
	('Phone', 'Electronics', 230.00),
	('Dress', 'Clothing', 25.00),
	('Washing detergent', 'Cleaning', 4.99),
	('Stationary', 'Office', 2.50),
	('Chocolate', 'Food', 6.00);  

INSERT INTO orders (customer_id, order_date, total_amount)
VALUES
	(1, '2024-01-01', 1127.99),
	(2, '2024-02-15', 230.00),
	(3, '2024-03-05', 62.50),
    (4, '2021-09-10', 349.99),
	(5, '2020-10-14', 139.99),
	(6, '2023-01-03', 19.96),
	(7, '2019-12-30', 1100.00),
	(8, '2025-04-07', 460.00),
	(9, '2022-02-02', 25.00);
    
INSERT INTO order_items (order_id, product_id, quantity, item_price)
VALUES
    (1, 1, 2, 560.00),  -- 2 Laptops in Order 1
    (1, 2, 1, 7.99),    -- 1 Phone case in Order 1
    -- In total, order 1 has 2 laptops and 1 phone case
    (2, 5, 1, 230.00),   -- 1 phone in Order 2
    (3, 9, 10, 6.00),   -- 10 chocolates in Order 3
    (3, 8, 1, 2.50),     -- 1 stationary in Order 3
    (4, 4, 1, 349.99),   -- 1 dishwasher in Order 4
    (5, 2, 1, 139.99),
	(6, 7, 4, 4.99),
	(8, 8, 2, 2.50),
	(7, 1, 2, 560.00),
	(9, 6, 1, 25.00);

INSERT INTO payments (order_id, payment_date, payment_method, payment_status)
VALUES 
    (1, '2024-01-01', 'Credit card', 'Completed'),
    (2, '2024-02-15', 'Credit card', 'Completed'),
    (3, '2024-03-07', 'Paypal', 'Completed'),
    (4, '2021-09-13', 'Debit card', 'Completed'),
    (5, '2020-10-14', 'Apple pay', 'Completed'),
    (6, '2023-01-03', 'Paypal', 'Completed'),
    (7, '2020-01-02', 'Google pay', 'Completed'),
    (8, '2025-04-07', 'Apple pay', 'Pending'),
    (9, '2022-02-02', 'Apple pay', 'Completed');

