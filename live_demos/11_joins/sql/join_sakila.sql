SELECT * FROM main.film;
SELECT * FROM main.film_actor fa ;
SELECT * FROM main.actor a ;

-- which actor played which film_id?
SELECT
	a.first_name,
	a.last_name,
	fa.film_id
FROM
	main.actor a
LEFT JOIN main.film_actor fa ON
	a.actor_id = fa.actor_id ;
	
-- which actor played which film title?
SELECT
	a.first_name,
	a.last_name,
	f.title 
FROM
	main.actor a
LEFT JOIN main.film_actor fa ON
	a.actor_id = fa.actor_id
LEFT JOIN main.film f ON f.film_id = fa.film_id ;

-- if doing LEFT JOIN get all films including those without a category --> the category becomes NULL
-- INNER JOIN - get all films with associated category
-- film and category
SELECT
	f.title,
	c.name AS 'genre'
FROM
	main.film_category fc
JOIN main.category c ON
	fc.category_id = c.category_id
JOIN main.film f ON
	fc.film_id = f.film_id;
	
DESC;

SELECT * FROM main.address a ;

SELECT * FROM main.city c ;

SELECT * FROM main.country c ;

-- staff, address, city, country
SELECT
	s.first_name,
	s.last_name,
	a.address,
	c.city,
	cty.country
FROM
	main.staff s
LEFT JOIN main.address a ON
	s.address_id = a.address_id
LEFT JOIN main.city c ON
	a.city_id = c.city_id
LEFT JOIN main.country cty ON
	cty.country_id = c.country_id ;




