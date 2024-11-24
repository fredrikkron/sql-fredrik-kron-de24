SELECT
	*
FROM
	generate_series(DATE '2024-11-01',
	DATE '2024-11-30',
	INTERVAL '1 day') AS t(november);
	
-- date dimension
SELECT 
	strftime(date_series, '%Y-%m-%d') AS date,
	month(date_series) AS month,
	week(date_series) AS week_number,
	weekday(date_series) AS day_of_week,
FROM
	generate_series(DATE '2024-01-01',
	DATE '2024-12-31',
	INTERVAL '1 day') AS t(date_series);
	