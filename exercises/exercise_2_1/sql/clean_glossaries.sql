CREATE SCHEMA IF NOT EXISTS refined;

CREATE TABLE IF NOT EXISTS refined.sql_glossary AS (SELECT sql_word, description, example FROM staging.sql_glossary);

SELECT * FROM refined.sql_glossary;

SELECT REPLACE(example, 'from', UPPER('from')) AS example FROM refined.sql_glossary;

SELECT
	REGEXP_REPLACE(TRIM(example), ' ,', ',', 'g') AS example
FROM
	refined.sql_glossary;

UPDATE refined.sql_glossary SET example = REPLACE(example, 'TABLE', 'table') WHERE REGEXP_MATCHES(LOWER(example), 'table\b');

	
UPDATE refined.sql_glossary SET example = REPLACE(example, /b'', UPPER('table'));


UPDATE refined.sql_glossary
SET example = REPLACE(example, 'table', 'TABLE')
WHERE REGEXP_MATCHES(LOWER(example), '\\btable\\b');


SELECT 
    REPLACE(column_name, 'specificword', UPPER('specificword')) AS transformed_column
FROM table_name;


SELECT sql_word[:2] AS sliced_word FROM refined.sql_glossary sg;
SELECT sql_word[2:5] AS sliced_word FROM refined.sql_glossary sg;
SELECT sql_word[3:] AS sliced_word FROM refined.sql_glossary sg;