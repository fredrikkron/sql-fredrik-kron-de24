SELECT
	experience_level,
	employment_type,
	job_title,
	yearly_salary_in_SEK,
	monthly_salary_in_SEK,
	remote_ratio,
	company_size,
	salary_level
FROM
	main.explore_data;
	
-- a)
SELECT
	COUNT(*)
FROM
	main.explore_data
WHERE
	job_title = 'Data Engineer'; -- 3464
	
-- b)

SELECT
	COUNT(DISTINCT job_title) AS unique_job_titles -- 155
FROM
	main.explore_data;

-- c)

SELECT
	COUNT(*)
FROM
	main.explore_data
WHERE
	salary_level = 'low'; -- 382
	
SELECT
	COUNT(*)
FROM
	main.explore_data
WHERE
	salary_level = 'medium'; -- 1668
	
SELECT
	COUNT(*)
FROM
	main.explore_data
WHERE
	salary_level = 'high'; -- 5606
	
SELECT
	COUNT(*)
FROM
	main.explore_data
WHERE
	salary_level = 'insanely_high'; -- 8878
	
-- d)

SELECT
	MEDIAN(monthly_salary_in_SEK),
	MEAN(monthly_salary_in_SEK)
FROM
	main.explore_data
WHERE
	experience_level = 'SE';

SELECT
	MEDIAN(monthly_salary_in_SEK),
	MEAN(monthly_salary_in_SEK)
FROM
	main.explore_data
WHERE
	experience_level = 'EN';

SELECT
	MEDIAN(monthly_salary_in_SEK),
	MEAN(monthly_salary_in_SEK)
FROM
	main.explore_data
WHERE
	experience_level = 'MI';

SELECT
	MEDIAN(monthly_salary_in_SEK),
	MEAN(monthly_salary_in_SEK)
FROM
	main.explore_data
WHERE
	experience_level = 'EX';

-- e)

SELECT
	job_title,
	MEDIAN(monthly_salary_in_SEK) AS median_salary
FROM
	main.explore_data
GROUP BY
	job_title
ORDER BY
	median_salary DESC
LIMIT 5;

-- f)

SELECT
	remote_ratio,
	COUNT(*) AS job_counter,
	COUNT(*) * 100 / (
	SELECT
		COUNT(*)
	FROM
		main.explore_data) AS percentage
FROM
	main.explore_data
WHERE
	remote_ratio IN (0, 50, 100)
GROUP BY
	remote_ratio
ORDER BY
	remote_ratio;

-- g)

SELECT
	company_size,
	COUNT(*) AS size_counter,
	MEDIAN(monthly_salary_in_SEK) AS median_salary
FROM
	main.explore_data
WHERE
	company_size IN ('Small', 'Medium', 'Large')
GROUP BY
	company_size
ORDER BY
	company_size;


-- Små företag: Lägre löner p.g.a. budgetbegränsningar och mindre specialisering.
-- Medelstora företag: Högre medianlöner eftersom de kombinerar resurser med flexibilitet.
-- Stora företag: Lägre medianlöner p.g.a. hierarkiska strukturer och ett större antal lägre betalda roller.
