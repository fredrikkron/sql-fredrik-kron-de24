SELECT * FROM main.sql_course;

SELECT * FROM main.sql_course WHERE content = '02_setup_duckdb';

DELETE FROM main.sql_course WHERE content = '02_setup_duckdb';

INSERT
	INTO
	main.sql_course(content,
	week,
	content_type)
VALUES
	('02_setup_duckdb',
	46,
	'lecture');
	
SELECT * FROM main.sql_course ORDER BY week, content;