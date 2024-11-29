SELECT * FROM main.cleaned_salaries;

-- c)
ALTER TABLE main.cleaned_salaries ADD COLUMN yearly_salary_in_SEK INTEGER;
-- d)
ALTER TABLE main.cleaned_salaries ADD COLUMN monthly_salary_in_SEK INTEGER;
-- e)
ALTER TABLE main.cleaned_salaries ADD COLUMN salary_level VARCHAR;

UPDATE
	main.cleaned_salaries
SET
	salary_level = CASE
		WHEN monthly_salary_in_SEK < 93000 THEN 'low'
		WHEN monthly_salary_in_SEK < 129000 THEN 'medium'
		WHEN monthly_salary_in_SEK < 170000 THEN 'high'
		ELSE 'insanely_high'
	END;
	
UPDATE main.cleaned_salaries SET yearly_salary_in_SEK = (11 * salary_in_usd);

UPDATE main.cleaned_salaries SET monthly_salary_in_SEK = (yearly_salary_in_SEK / 12);

