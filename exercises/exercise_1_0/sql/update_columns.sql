SELECT * FROM main.cleaned_salaries;
-- e)
ALTER TABLE main.cleaned_salaries ADD COLUMN salary_level VARCHAR;

UPDATE
	main.cleaned_salaries
SET
	salary_level = CASE
		WHEN monthly_salary_in_SEK < 40000 THEN 'low'
		WHEN monthly_salary_in_SEK BETWEEN 40000 AND 70000 THEN 'medium'
		WHEN monthly_salary_in_SEK BETWEEN 70000 AND 125000 THEN 'high'
		WHEN monthly_salary_in_SEK > 125000 THEN 'insanely_high'
	END;
	
UPDATE main.cleaned_salaries SET yearly_salary_in_SEK = (11 * salary_in_usd);

UPDATE main.cleaned_salaries SET monthly_salary_in_SEK = (yearly_salary_in_SEK / 12);

