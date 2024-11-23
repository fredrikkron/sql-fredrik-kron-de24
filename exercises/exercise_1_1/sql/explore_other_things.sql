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

-- 10 bäst betalda individerna inom varje specifik yrkesroll 
SELECT
	job_title,
	MAX(monthly_salary_in_SEK) AS highest_paid
FROM
	main.explore_data
WHERE
	company_size = 'Medium'
GROUP BY
	job_title
ORDER BY
	highest_paid DESC
	LIMIT 10;
	
-- Folk som jobbar i Sverige

SELECT
	employment_type, job_title, monthly_salary_in_SEK
FROM
	main.explore_data
WHERE employee_residence = 'SE';

-- Snittlön i varje yrkesroll på företag i USA med låg lön

SELECT
	job_title,
	ROUND(AVG(monthly_salary_in_SEK)) AS mean_salary
FROM
	main.explore_data
WHERE
	company_location = 'US'
	AND salary_level = 'Low'
GROUP BY
	job_title
ORDER BY
	mean_salary DESC;









