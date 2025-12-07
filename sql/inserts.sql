--- Project00008 inserts.sql

-- inserts.sql
-- Sample data for Project00008

-- Insert customers
INSERT INTO customers (customer_id, first_name, last_name, email, created_at)
VALUES
    (1, 'alice', 'johnson', 'alice.johnson@example.com', '2025-01-10'),
    (2, 'bob', 'smith', 'bob.smith@example.com', '2025-01-12'),
    (3, 'carol', 'williams', 'carol.williams@example.com', '2025-01-15');

-- Insert products
INSERT INTO products (product_id, product_name, category, price)
VALUES
    (1, 'wireless_mouse', 'electronics', 25.99),
    (2, 'mechanical_keyboard', 'electronics', 79.50),
    (3, 'coffee_mug', 'kitchen', 12.00);

-- Insert orders
INSERT INTO orders (order_id, customer_id, order_date, status)
VALUES
    (1, 1, '2025-02-01', 'shipped'),
    (2, 2, '2025-02-03', 'processing'),
    (3, 3, '2025-02-05', 'delivered');

-- Insert order_items
INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES
    (1, 1, 1, 2),
    (2, 1, 3, 1),
    (3, 2, 2, 1),
    (4, 3, 3, 4);
