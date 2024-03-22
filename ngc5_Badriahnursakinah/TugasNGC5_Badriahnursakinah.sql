CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO customers (customers_name, city)
VALUES
    ('John Doe', 'New York'),
    ('Jane Smith', 'Los Angeles'),
    ('David Johnson', 'Chicago');
	
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    order_date DATE,
    total_amount FLOAT
);


INSERT INTO orders (customer_id, order_date, total_amount)
VALUES
        (1, '2022-01-10', 100.00),
        (1, '2022-02-15', 150.00),
        (2, '2022-03-20', 200.00),
        (3, '2022-04-25', 50.00);
		
SELECT a.customers_name, count(b.order_id) as total_orders
FROM customers as a
JOIN orders as b
ON a.customers_id = b.customer_id
GROUP BY 1

select * from customers
select * from orders

	