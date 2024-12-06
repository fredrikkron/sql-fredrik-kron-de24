-- a)
SELECT * FROM main.customer c ;
SELECT * FROM main.actor a;

SELECT
	first_name,
	last_name
FROM
	main.actor WHERE last_name LIKE 'G%'
UNION
SELECT first_name, last_name FROM main.customer c WHERE last_name LIKE 'G%' ORDER BY last_name; -- if count, 55

-- b)

SELECT
	COUNT(*) AS name_start_with_ANN
FROM
	main.customer c
WHERE
	first_name LIKE 'ANN%'
UNION
SELECT COUNT(*) FROM main.actor a WHERE first_name LIKE 'ANN%'; -- 5 + 1 = 6

-- c)
SELECT name, city, country FROM main.customer_list cl ORDER BY name;

-- d)




