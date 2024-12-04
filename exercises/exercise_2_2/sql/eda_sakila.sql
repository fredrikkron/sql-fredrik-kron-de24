DESC;
-- b) Select all data on all tables.
-- c) Find out how many rows there are in each table. (added COUNT())
SELECT COUNT(*) FROM main.actor a; -- 200
SELECT COUNT(*) FROM main.address a1; -- 603
SELECT COUNT(*) FROM main.category c;  -- 16
SELECT COUNT(*) FROM main.city ci; -- 600
SELECT COUNT(*) FROM main.country co; -- 109
SELECT COUNT(*) FROM main.customer cu; -- 599
SELECT COUNT(*) FROM main.customer_list cl; -- 599
SELECT COUNT(*) FROM main.film f; -- 1000
SELECT COUNT(*) FROM main.film_actor fa; -- 5462
SELECT COUNT(*) FROM main.film_category fc; -- 1000
SELECT COUNT(*) FROM main.film_list fl; -- 5462
SELECT COUNT(*) FROM main.film_text ft; --0
SELECT COUNT(*) FROM main.inventory i; -- 4581
SELECT COUNT(*) FROM main.language l; -- 6
SELECT COUNT(*) FROM main.payment p; -- 16049
SELECT COUNT(*) FROM main.rental r; -- 16044
SELECT COUNT(*) FROM main.sales_by_film_category sbfc; -- 16
SELECT COUNT(*) FROM main.sales_by_store sbs; -- 2
SELECT COUNT(*) FROM main.staff s; -- 2
SELECT COUNT(*) FROM main.staff_list sl; -- 2
SELECT COUNT(*) FROM main.store s; -- 2

-- d) Calculate descriptive statistics on film length.
SELECT * FROM main.film f ;
SELECT
	film_id,
	title,
	release_year,
	length AS length_in_minutes,
	rating
FROM
	main.film f;
SELECT
	COUNT(title) AS titles,
	AVG(length) AS mean_length
FROM
	main.film f; -- 1000 movies , avg length of movie is 115 minutes
SELECT
	COUNT(*) AS long_movies
FROM
	main.film f
WHERE
	length > 120; -- 457 movies that are longer than 2 hours

-- e)  What are the peak rental times?
DESC rental;
SELECT * from main.rental r ;
SELECT
	STRFTIME('%H',
	rental_date) AS time,
	COUNT(rental_date) AS amount
FROM
	main.rental r
GROUP BY
	time
ORDER BY
	amount DESC;

-- f) What is the distribution of film ratings?
DESC film;
SELECT
	rating,
	COUNT(rating) AS amount
FROM
	main.film f
GROUP BY
	rating
ORDER BY
	amount DESC;

-- g) Who are the top 10 customers by number of rentals?
DESC rental;
DESC customer;
SELECT * FROM main.rental r WHERE customer_id = 130;

SELECT * FROM main.customer c;

SELECT
	c.first_name,
	c.last_name,
	COUNT(r.customer_id) AS amount_of_rented_movies
FROM
	main.customer c
LEFT JOIN main.rental r ON
	c.customer_id = r.customer_id
GROUP BY
	c.first_name,
	c.last_name
ORDER BY
	amount_of_rented_movies DESC
LIMIT 10;

-- h) Retrieve a list of all customers and what films they have rented.
SELECT * FROM main.customer c;
SELECT * FROM main.rental r;
SELECT * FROM main.film f;
SELECT * FROM main.inventory i;

SELECT
	c.last_name,
	c.first_name,
	f.title
FROM
	main.customer c
INNER JOIN main.rental r ON
	r.customer_id = c.customer_id
INNER JOIN main.inventory i ON
	r.inventory_id = i.inventory_id
INNER JOIN main.film f ON
	i.film_id = f.film_id
ORDER BY
	c.last_name,
	c.first_name,
	f.title;


-- Add a WHERE clause to filter on a string, put it after the joins
-- In this case movies rented by person with last_name that start with the letter A - 525
SELECT
	c.last_name,
	c.first_name,
	f.title
FROM
	main.customer c
INNER JOIN main.rental r ON
	r.customer_id = c.customer_id
INNER JOIN main.inventory i ON
	r.inventory_id = i.inventory_id
INNER JOIN main.film f ON
	i.film_id = f.film_id
WHERE
	c.last_name LIKE 'A%'
GROUP BY
	c.last_name,
	c.first_name,
	f.title
ORDER BY
	c.last_name,
	c.first_name,
	f.title;








