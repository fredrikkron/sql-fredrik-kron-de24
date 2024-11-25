-- trim away extra spaces
SELECT
	regexp_replace(TRIM(description),
	' +',
	' ',
	'g'),
	LOWER(regexp_replace(TRIM(example),
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
	regexp_matches(LOWER(description), 'select\b');