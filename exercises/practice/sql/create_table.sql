CREATE TABLE
	IF NOT EXISTS products (
		product_id INTEGER,
		product_name VARCHAR,
		category VARCHAR,
		supplier VARCHAR,
		price FLOAT
	);

CREATE TABLE
	IF NOT EXISTS sales (
		sale_id INTEGER,
		product_id INTEGER,
		sale_date DATE,
		quantity INTEGER,
		total_amount FLOAT
	);
	
ALTER TABLE main.sales
ALTER COLUMN sale_date SET DATA TYPE VARCHAR;

ALTER TABLE main.products ALTER COLUMN price SET DATA TYPE VARCHAR;
ALTER TABLE main.products ADD COLUMN price DECIMAL;

DESC;

SELECT * FROM main.products p ;
SELECT * FROM main.sales s ;

INSERT
	INTO
	main.products
VALUES (1,
'Monitor',
'Electronics',
'TechCorp',
300.00),
(2,
'Keyboard',
'Accessories',
'InputMasters',
100.00),
(3,
'Mouse',
'Accessories',
'InputMasters',
50.00),
(4,
'Laptop',
'Electronics',
'GigaTech',
1000.00),
(5,
'Headphones',
'Audio',
'SoundPro',
150.00);

INSERT
	INTO
	main.sales
VALUES (2,
2,
'2024-02-11',
5,
500.00),
(4,
4,
'2024-02-20',
1,
1000.00),
(5,
5,
'2024-02-21',
4,
600.00);














