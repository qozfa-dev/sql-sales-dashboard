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
	(1, '2024-01-01', 980.00),
	(2, '2024-02-15', 540.00),
	(3, '2024-03-05', 1400.99)
    (4, '2021-09-10', 29.00),
	(5, '2020-10-14', 345.99),
	(6, '2023-01-03', 789.99),
	(7, '2019-12-30', 1100.00),
	(8, '2025-04-07', 460.00),
	(9, '2022-02-02', 54.99);
    
