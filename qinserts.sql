-- Project00008 qinserts.sql

-- Query 1 list all customers
SELECT c.customer AS customer_id,
	c.first_name AS first_name,
	c.last_name AS last_name,
	c.email AS email,
	c.created_at AS created_at
	FROM customers c;
	
-- Query 2 Products TABLE
SELECT p.product_id AS product_id,
	p.product_name AS product_name,
	p.category AS categroy,
	p.price AS price
	FROM products p;
	
--Query 3 Orders TABLE
SELECT o.order_id AS order_id,
	o.customer_id AS customer_id,
	o.order_date AS order_date,
	o.status AS status
	FROM orders o
	ON o.customer_id = c.customer_id;
	
-- Query 4 Order_detail table
SELECT d.order_item_id AS order_item_id,
	d.order_id AS order_id,
	d.product_id AS product_id,
	d.quantity AS quantity
	FROM order_items D
	ON d.order_id = o.order_id
	JOIN products p
	ON d.product_id = p.product_id;


