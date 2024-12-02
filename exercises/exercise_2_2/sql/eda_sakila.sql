DESC;
-- b + c)
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

-- d)
SELECT * FROM main.film f ;

SELECT film_id, title, release_year, length AS length_in_minutes, rating FROM main.film f;

-- e)









