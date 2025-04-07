CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	email VARCHAR(100),
	country VARCHAR(50),
	signup_date DATE
);

CREATE TABLE products (
	product_id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	category VARCHAR(50),
	price NUMERIC(10, 2)
);

CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
	customer_id INT REFERENCES customers(customer_id),
	order_date DATE,
	total_amount NUMERIC(10,2)
);

CREATE TABLE order_items (
	order_item_id SERIAL PRIMARY KEY,
	order_id INT REFERENCES orders(order_id),
	product_id INT REFERENCES products(product_id),
	quantity INT,
	item_price NUMERIC(10,2)
);

CREATE TABLE payments (
	payment_id SERIAL PRIMARY KEY,
	order_id INT REFERENCES orders(order_id),
	payment_date DATE,
	payment_method VARCHAR(50),
	payment_status VARCHAR(50)
);

INSERT INTO order_items (order_id, product_id, quantity, item_price)
VALUES
	(1, 1, 2, 560.00),
	(2, 2, 1, 139.99),
	(3, 3, 4, 7.99),
	(4, 4, 1, 349.99),
	(5, 5, 2, 230.00),
	(6, 6, 1, 25.00),
	(7, 7, 1, 4.99),
	(8, 8, 1, 2.50),
	(9, 9, 2, 6.00);