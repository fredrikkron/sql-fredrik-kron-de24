SELECT * FROM staging.sql_glossary;

-- array-like slicing
SELECT
	sql_word,
	sql_word[:2],
	sql_word[2:5] 
FROM
	staging.sql_glossary;

-- getitem []
SELECT
	sql_word,
	sql_word[0] AS blank_space,
	sql_word[1] AS first_character,
	sql_word[-1] AS last_character
FROM 
	staging.sql_glossary;

-- concatenation
SELECT 'fun' || ' joke'

SELECT
	'SQL command: ' || sql_word
FROM
	staging.sql_glossary;

-- remove spaces
SELECT
	TRIM(sql_word) AS trimmed_word,
	trimmed_word[1] AS first_character,
	trimmed_word[-1] AS last_character
FROM
	staging.sql_glossary;

-- Uppercase
SELECT
	UPPER(TRIM(sql_word)) AS trimmed_word,
	trimmed_word[1] AS first_character,
	trimmed_word[-1] AS last_character
FROM
	staging.sql_glossary;

--
SELECT
	replace(TRIM(description), '  ', ' ')
FROM
	staging.sql_glossary;




