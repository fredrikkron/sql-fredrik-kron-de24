SELECT UNNEST (generate_series(1,100)) AS id;

SELECT RANDOM();

SELECT FLOOR(RANDOM() * 6 + 1) AS dice FROM generate_series(100);

SELECT
	id,
	'student_' || id AS student,
	score,
	CASE
		WHEN score < 50 THEN 'IG'
		WHEN score < 75 THEN 'G'
		ELSE 'VG'
	END AS grade
FROM 
	(
	SELECT
		UNNEST (generate_series(100)) AS id,
		ROUND(RANDOM()* 100) AS score
	);
	
