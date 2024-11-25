SELECT * FROM main.food;

SELECT DISTINCT id AS food FROM main.food;

-- 201
SELECT
	COUNT(DISTINCT id)
FROM
	main.food;

-- 135025
SELECT COUNT(*) AS number_rows FROM main.food;

-- columns: id, googleTopic, week_id, value
DESC main.food;

SELECT * FROM main.food WHERE week_id BETWEEN '2004-04' AND '2004-06';

-- 581
SELECT COUNT(*) FROM main.food WHERE week_id BETWEEN '2004-04' AND '2004-06';

-- EDA = Exploratory Data Analysis