-- union
SELECT
	'Customer' AS type,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.first_name LIKE 'A%'
UNION
SELECT
	'Actor',
	a.first_name,
	a.last_name AS type
FROM
	main.actor a
	WHERE a.first_name LIKE 'A%';
	
-- intersect
SELECT
	c.first_name,
	c.last_name
FROM
	main.customer c
INTERSECT
SELECT
	a.first_name,
	a.last_name AS type
FROM
	main.actor a;
	
-- union all (return all from both tables)
SELECT
	'Customer' AS type,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.first_name LIKE 'J%'
	AND c.last_name LIKE 'D%'
UNION ALL
SELECT
	'Actor' AS type,
	a.first_name,
	a.last_name
FROM
	main.actor a
WHERE
	a.first_name LIKE 'J%'
	AND a.last_name LIKE 'D%';

-- union (removes duplicates)
SELECT
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.first_name LIKE 'J%'
	AND c.last_name LIKE 'D%'
UNION
SELECT
	a.first_name,
	a.last_name
FROM
	main.actor a
WHERE
	a.first_name LIKE 'J%'
	AND a.last_name LIKE 'D%';
	

