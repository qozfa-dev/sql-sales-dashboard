INSERT INTO customers (name, email, country, signup_date) 
VALUES 
  ('John Doe', 'john@example.com', 'USA', '2024-01-01'),
  ('Jane Smith', 'jane@example.com', 'UK', '2024-02-15'),
  ('Alice Johnson', 'alice@example.com', 'Canada', '2024-03-05');

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
	(3, '2024-03-05', 1400.99);