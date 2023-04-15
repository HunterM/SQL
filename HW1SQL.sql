USE hwsql1;

CREATE TABLE mobile_phones(
	id SERIAL PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    product_count INT,
    price INT NOT NULL
    );
    

INSERT INTO mobile_phones(product_name, manufacturer, product_count, price)
VALUES
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 PRO', 'Huawei', 5, 36000);

SELECT * FROM mobile_phones;

SELECT manufacturer, price FROM mobile_phones WHERE product_count >2;

SELECT product_name FROM mobile_phones WHERE manufacturer = 'Samsung';


SELECT * FROM mobile_phones
WHERE product_name LIKE 'iPh%';

SELECT * FROM mobile_phones
WHERE manufacturer LIKE 'Sams%';

SELECT * FROM mobile_phones
WHERE product_name LIKE '%8%';

SELECT * FROM mobile_phones
WHERE product_name LIKE '%[0-9]%'; -- Не понимаю что нужно поставить, по разному крутил - вертел


