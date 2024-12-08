SELECT * FROM main.cleaned_salaries cs;

SELECT
	job_title,
	COUNT(job_title) AS amount_of_employees,
	ROUND(AVG(salary)) AS mean_salary
FROM
	main.cleaned_salaries cs
GROUP BY
	job_title
HAVING
	mean_salary > 100000 
ORDER BY
	mean_salary; 

SELECT
	job_title,
	ROUND(AVG(salary)) AS mean_salary,
	COUNT(salary)
FROM
	main.cleaned_salaries cs
WHERE
	remote_ratio = 100
GROUP BY
	job_title
ORDER BY
	mean_salary DESC
LIMIT 5;
	
SELECT COUNT(DISTINCT (job_title)) AS amount_of_job_titles FROM main.cleaned_salaries cs;

SELECT * FROM main.cleaned_salaries cs WHERE employment_type = 'Part time' AND salary > 100000 AND salary_currency = 'USD';

SELECT
	job_title,
	salary,
	employee_residence
FROM
	main.cleaned_salaries cs
WHERE
	salary BETWEEN 100000 AND 150000
	AND employee_residence = 'SE'
	AND job_title LIKE '%Engineer%'
ORDER BY
	salary DESC;