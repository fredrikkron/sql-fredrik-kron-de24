-- regexp --> regular expressions

-- trim away extra spaces
SELECT
	REGEXP_REPLACE(TRIM(description),
	' +',
	' ',
	'g'),
	LOWER(REGEXP_REPLACE(TRIM(example),
	' +',
	' ',
	'g'))
FROM
	staging.sql_glossary;

-- where is has select in it
SELECT
	*
FROM
	staging.sql_glossary
WHERE
	LOWER(description) LIKE '%select%';

-- exact where is says select
SELECT
	*
FROM
	staging.sql_glossary
WHERE
	REGEXP_MATCHES(LOWER(description), 'select\b');
	
-- description

SELECT
	UPPER(TRIM(sql_word)) AS sql_word,
	(TRIM(description),
	' +',
	' ',
	'g'),
	example
FROM
	staging.sql_glossary);



SELECT * FROM staging.sql_glossary;


SELECT
	UPPER(TRIM(sql_word)) AS sql_word,
	REGEXP_REPLACE(TRIM(description),
	' +',
	' ',
	'g') AS description,
	LOWER(REGEXP_REPLACE(TRIM(example),
	' +',
	' ',
	'g')) AS example
FROM
	staging.sql_glossary;
