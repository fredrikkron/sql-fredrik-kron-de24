SELECT DISTINCT employment_type FROM main.cleaned_salaries;

UPDATE
	main.cleaned_salaries
SET
	employment_type = CASE
		WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'FT' THEN 'Full time'
		WHEN employment_type = 'PT' THEN 'Part time'
		WHEN employment_type = 'FL' THEN 'Freelance'
		ELSE employment_type
	END
WHERE
	employment_type IN ('CT', 'FT', 'PT', 'FL');
	
SELECT * FROM main.cleaned_salaries;