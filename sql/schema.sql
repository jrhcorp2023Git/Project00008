-- Project0008 schema.sql

-- Drop tables if they exist (clean slate)
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

-- Customers table
CREATE TABLE customers (
	customer_id INTEGER PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	email VARCHAR(255),
	created_at DATE
);

-- Products TABLE
CREATE TABLE products (
	product_id INTEGER PRIMARY KEY,
	product_name TEXT NOT NULL,
	category TEXT NOT NULL,
	price REAL
);

--Orders TABLE
CREATE TABLE orders (
	order_id INTEGER PRIMARY KEY,
	customer_id INTEGER,
	order_date DATE,
	status TEXT,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Order_detail table
CREATE TABLE order_items (
	order_item_id INTEGER PRIMARY KEY,
	order_id INTEGER,
	product_id INTEGER,
	quantity REAL,
	FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
	
