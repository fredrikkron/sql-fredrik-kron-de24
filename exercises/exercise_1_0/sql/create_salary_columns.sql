SELECT * FROM main.cleaned_salaries;

-- c)
ALTER TABLE main.cleaned_salaries ADD COLUMN yearly_salary_in_SEK INTEGER;
-- d)
ALTER TABLE main.cleaned_salaries ADD COLUMN monthly_salary_in_SEK INTEGER;

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
	AND yearly_salary_in_SEK < 1000000
	AND experience_level = 'EN'
	AND job_title = 'Data Analyst'
ORDER BY
	yearly_salary_in_SEK DESC;





	
	