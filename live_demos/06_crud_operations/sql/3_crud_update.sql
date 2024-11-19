-- update

-- do SELECT before doing UPDATE, to make sure what we update
SELECT
	word, learnt
FROM
	database.duckdb
WHERE
	id IN (1, 9, 11);
	
UPDATE
	database.duckdb
SET
	learnt = TRUE
WHERE
	id IN (1, 9, 11);
	
SELECT * FROM database.duckdb;