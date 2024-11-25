SELECT * FROM main.food;

-- 10 most searched foods
SELECT
	food,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	food
ORDER BY
	total_searches DESC
LIMIT 10;

-- total searches by year
SELECT
	year,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	year
ORDER BY
	total_searches DESC
LIMIT 10;

-- Which different years that is in the data
SELECT DISTINCT year FROM main.cleaned_food;

-- Years with over 300000 searches
SELECT
	year,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	year
HAVING
	total_searches > 300000
ORDER BY
	total_searches DESC;

-- Grouping 2 columns
SELECT
	year,
	food,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	food,
	year
ORDER BY
	total_searches DESC;

-- most popular food in summer 22-35
-- 2004 - 2016
SELECT DISTINCT year from main.cleaned_food
GROUP BY year
ORDER BY year;

SELECT
    food,
    SUM(number_searches) AS total_searches
FROM
    main.cleaned_food
WHERE
    year BETWEEN '2004' AND '2016'
    AND week BETWEEN '22' AND '35'
GROUP BY
    food
ORDER BY
    total_searches DESC
LIMIT 1;

-- most popular food in winter 48-09
SELECT
	food,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
WHERE
	year BETWEEN '2004' AND '2016'
	AND (week BETWEEN '01' AND '09'
	OR week BETWEEN '48' AND '52')
GROUP BY
	food
ORDER BY
	total_searches DESC
LIMIT 1;

-- most popular food per year

WITH ranked_foods AS (
    SELECT
        year,
        food,
        SUM(number_searches) AS total_searches,
        ROW_NUMBER() OVER (PARTITION BY year ORDER BY SUM(number_searches) DESC) AS rank
    FROM
        main.cleaned_food
    WHERE
        year BETWEEN '2004' AND '2016'
        AND (week BETWEEN '01' AND '09'
             OR week BETWEEN '48' AND '52')
    GROUP BY
        year, food
)
SELECT
    year,
    food,
    total_searches
FROM
    ranked_foods
WHERE
    rank = 1
ORDER BY
    year;





	
