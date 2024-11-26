CREATE SCHEMA IF NOT EXISTS refined;

CREATE TABLE IF NOT EXISTS refined.sql_glossary AS (
SELECT
	UPPER(TRIM(sql_word)) AS sql_word,
	description,
	example
FROM
	staging.sql_glossary);

SELECT * FROM staging.sql_glossary;

SELECT * FROM refined.sql_glossary;


UPDATE
	refined.sql_glossary
SET  
	sql_word = UPPER(TRIM(sql_word)),
	description = REGEXP_REPLACE(TRIM(description),
	' +',
	' ',
	'g'),
	example = LOWER(REGEXP_REPLACE(TRIM(example),
	' +',
	' ',
	'g'));

UPDATE
	refined.sql_glossary
SET
	example = 
(REGEXP_REPLACE(TRIM(example),
	' +;',
	';',
	'g'));

SELECT
	(REGEXP_REPLACE(TRIM(example),
	' +,',
	',',
	'g'))
FROM
	staging.sql_glossary;

SELECT
	LOWER(REGEXP_REPLACE(TRIM(example),
	' +;',
	';',
	'g')) AS example
FROM
	staging.sql_glossary;
