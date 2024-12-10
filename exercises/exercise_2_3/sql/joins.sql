-- a) Retrieve a list of all customers and actors which last name starts with G.
SELECT * FROM main.customer c ;
SELECT * FROM main.actor a;

SELECT
	first_name,
	last_name
FROM
	main.actor WHERE last_name LIKE 'G%'
UNION
SELECT first_name, last_name FROM main.customer c WHERE last_name LIKE 'G%' ORDER BY last_name; -- if count, 55

-- b) How many customers and actors starts have the the letters 'ann' in there first names?

SELECT
	COUNT(*) AS name_start_with_ANN
FROM
	main.customer c
WHERE
	first_name LIKE 'ANN%'
UNION
SELECT COUNT(*) FROM main.actor a WHERE first_name LIKE 'ANN%'; -- 5 + 1 = 6

-- c) In which cities and countries do the customers live in? 
SELECT name, city, country FROM main.customer_list cl ORDER BY name;

-- d) In which cities and countries do the customers with initials JD live in?

SELECT * FROM main.city c; -- city_id, city, country_id
SELECT * FROM main.country c; -- country_id, country
SELECT * FROM main.customer_list cl; -- country, city 
SELECT * FROM main.customer c; -- first_name, last_name, adress_id, customer_id
SELECT * FROM main.address a; -- address_id, city_id
SELECT first_name, last_name FROM main.customer WHERE first_name LIKE 'J%' ORDER BY last_name; -- double check for initials

WITH initials_JD AS (
SELECT
	c3.first_name,
	c3.last_name,
	c2.city,
	c.country
FROM
	main.customer_list cl
INNER JOIN main.country c ON
	cl.country = c.country
INNER JOIN main.city c2 ON
	cl.city = c2.city
INNER JOIN main.address a ON
	c2.city_id = a.city_id
INNER JOIN main.customer c3 ON
	a.address_id = c3.address_id
WHERE
	first_name LIKE 'J%' AND last_name LIKE 'D%'
)
SELECT
	*
FROM
	initials_JD; -- JENNIFER DAVIS Laredo United States
	
-- e) Retrieve a list of all customers and what films they have rented.

SELECT * FROM main.customer c; -- customer_id, first_name, last_name
SELECT * FROM main.film f; -- film_id,title
SELECT * FROM main.rental; -- customer_id, inventory_id
SELECT * FROM main.inventory i ; -- inventory_id, film_id
SELECT COUNT(customer_id) FROM main.rental r; -- 16044

WITH rented_movies_by_each_customer AS (
SELECT
	r.customer_id,
	c.first_name,
	c.last_name,
	i.film_id,
	f.title
FROM
	main.customer c
INNER JOIN main.rental r ON
	c.customer_id = r.customer_id
INNER JOIN main.inventory i ON
	r.inventory_id = i.inventory_id
INNER JOIN main.film f ON
	i.film_id = f.film_id
ORDER BY
	r.customer_id,
	title
)
SELECT
	*
FROM
	rented_movies_by_each_customer;
