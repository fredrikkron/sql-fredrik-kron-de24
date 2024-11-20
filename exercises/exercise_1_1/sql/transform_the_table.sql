SELECT * FROM main.explore_data;

UPDATE
	main.explore_data
SET
	company_size = CASE
		WHEN company_size = 'S' THEN 'Small'
		WHEN company_size = 'M' THEN 'Medium'
		WHEN company_size = 'L' THEN 'Large'
		ELSE company_size 
		END WHERE company_size IN ('S','M','L');

UPDATE
	main.explore_data
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
	
ALTER TABLE main.explore_data ADD COLUMN salary_level VARCHAR;

UPDATE
	main.explore_data
SET
	salary_level = CASE
		WHEN monthly_salary_in_SEK < 40000 THEN 'low'
		WHEN monthly_salary_in_SEK BETWEEN 40000 AND 70000 THEN 'medium'
		WHEN monthly_salary_in_SEK BETWEEN 70000 AND 125000 THEN 'high'
		WHEN monthly_salary_in_SEK > 125000 THEN 'insanely_high'
	END;
	
UPDATE main.explore_data SET yearly_salary_in_SEK = (11 * salary_in_usd);

UPDATE main.explore_data SET monthly_salary_in_SEK = (yearly_salary_in_SEK / 12);
	
ALTER TABLE main.explore_data ADD COLUMN yearly_salary_in_SEK INTEGER;

ALTER TABLE main.explore_data ADD COLUMN monthly_salary_in_SEK INTEGER;

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
