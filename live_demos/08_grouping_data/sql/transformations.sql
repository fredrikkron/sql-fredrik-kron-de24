SELECT * FROM main.food;

CREATE TABLE IF NOT EXISTS cleaned_food AS (
SELECT
	id AS food,
	week_id AS week,
	SUBSTRING(week, 1, 4) AS year,
	value AS number_searches
	-- week[:4] AS year ---alternative in duckdb
FROM
	main.food);

SELECT * FROM main.cleaned_food;
