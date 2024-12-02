DESC;

-- film table
SELECT * FROM main.film;

DESC TABLE main.film;

SELECT
	COUNT(*) AS number_movies,
	COUNT(DISTINCT title) AS unique_number_movies 
FROM
	main.film;

SELECT * FROM main.film;

SELECT DISTINCT rating FROM main.film;

-- film actor

SELECT * FROM main.film_actor;

DESC TABLE main.film_actor;

-- actor
SELECT * FROM main.actor;

-- category
SELECT * FROM main.category;
SELECT * FROM main.film_category;

SELECT
	'customer' AS type,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.first_name LIKE 'D%';


SELECT
	store_id,
	COUNT(*) AS number_customers
FROM
	main.customer c
GROUP BY
	store_id
ORDER BY
	store_id ASC;





