SELECT DISTINCT company_size FROM main.cleaned_salaries;
-- b)
UPDATE
	main.cleaned_salaries
SET
	company_size = CASE
		WHEN company_size = 'S' THEN 'Small'
		WHEN company_size = 'M' THEN 'Medium'
		WHEN company_size = 'L' THEN 'Large'
		ELSE company_size 
		END WHERE company_size IN ('S','M','L');