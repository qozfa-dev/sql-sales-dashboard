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