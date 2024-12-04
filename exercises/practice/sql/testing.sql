SELECT * FROM main.products p ORDER BY product_id ;
SELECT product_id ,product_name ,price FROM main.products p WHERE product_id = 1; 
SELECT * FROM main.products p WHERE product_id = 1

UPDATE main.products SET price = 500.00 WHERE product_id = 4;
UPDATE main.products SET price = 500.00 WHERE product_id = 4;

DELETE FROM main.products WHERE product_id = 1;

summarize TABLE main.products;

DESC;

SELECT * FROM main.sales s ORDER BY product_id;
SELECT * FROM main.sales s WHERE sale_id = 7;

UPDATE main.sales SET total_amount = 650 WHERE sale_id = 2;
UPDATE main.sales SET sale_date = '2024-02-15' WHERE sale_id = 4;
UPDATE main.sales SET total_amount = NULL WHERE sale_id = 4;
UPDATE main.sales SET total_amount = 1200 WHERE sale_id = 4;

INSERT INTO main.sales VALUES (7,7,'2024-02-24',8,1850);

DELETE FROM main.sales s WHERE sale_id = 7;