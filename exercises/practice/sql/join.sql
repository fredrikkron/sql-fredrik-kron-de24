SELECT * FROM main.products p ;
SELECT * FROM main.sales s ;

SELECT
	*
FROM
	main.sales s
LEFT JOIN main.products p ON
	s.product_id = p.product_id; 

SELECT
	product_name,
	category,
	supplier,
	total_amount
FROM
	main.products p
INNER JOIN main.sales s ON p.product_id = s.product_id;