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

