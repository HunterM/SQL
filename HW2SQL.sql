USE hwsql2;

CREATE TABLE sales(
	id SERIAL PRIMARY KEY,
    order_date DATE NOT NULL,
    count_product INT
);
    

INSERT INTO sales(order_date, count_product)
VALUES
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

SELECT * FROM sales;

SELECT id AS 'id заказа',
	CASE
		WHEN count_product < 100 THEN "Маленький заказ"
		WHEN count_product BETWEEN 100 AND 300 THEN "Средний заказ"
		WHEN count_product > 300 THEN "Большой заказ"
	END AS "Тип заказа"
FROM sales;

CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
    employee_id VARCHAR(3),
    amount DECIMAL(5, 2),
    order_status VARCHAR(10)
);
    
insert into orders(employee_id, amount, order_status) VALUES
	('e03', 15.00, 'OPEN'), ('e01', 25.50, 'OPEN'),
    ('e05', 100.70, 'CLOSED'), ('e02', 22.18, 'OPEN'),
    ('e04', 9.50, 'CANCELLED');
    
SELECT * FROM orders;

SELECT id, employee_id, 
	CASE order_status
		WHEN 'OPEN' THEN 'Order is in open state'
        WHEN 'CLOSED' THEN 'Order is closed'
        WHEN 'CANCELLED' THEN 'Order is cancelled'
	END AS 'full_order_status'
FROM orders;