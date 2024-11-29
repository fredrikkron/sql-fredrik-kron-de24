SELECT * FROM main.cleaned_salaries;

summarize main.cleaned_salaries;

-- f)
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
	main.cleaned_salaries;

-- some extra filtering
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
	main.cleaned_salaries WHERE experience_level = 'EN' AND job_title = 'Data Engineer'
	ORDER BY yearly_salary_in_SEK DESC LIMIT 20;

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
	main.cleaned_salaries
WHERE
	company_size = 'Large'
	AND employment_type = 'Full time'
	AND yearly_salary_in_SEK < 1300000
	AND experience_level = 'EN'
	AND job_title = 'Data Analyst'
ORDER BY
	yearly_salary_in_SEK DESC;






	
	