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