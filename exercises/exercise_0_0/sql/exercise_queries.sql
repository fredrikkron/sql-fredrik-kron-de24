SELECT * FROM main.sql_course;

-- a)
SELECT * FROM main.sql_course WHERE content_type = 'exercise';
-- b)
SELECT * FROM main.sql_course WHERE content_type = 'lecture';
-- c)
SELECT * FROM main.sql_course WHERE week = 48;
-- d)
SELECT * FROM main.sql_course WHERE week BETWEEN 47 AND 49;
-- e)
SELECT COUNT(*) FROM main.sql_course WHERE content_type = 'lecture'; 
-- f)
SELECT COUNT(*) FROM main.sql_course WHERE NOT content_type = 'lecture';
-- g)
SELECT COUNT(DISTINCT content_type) FROM main.sql_course; -- amount of different content_type

SELECT DISTINCT content_type FROM main.sql_course;
