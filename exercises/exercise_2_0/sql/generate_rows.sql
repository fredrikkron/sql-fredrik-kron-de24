CREATE TABLE IF NOT EXISTS diceroll (
	id INTEGER,
	result INTEGER
);

SELECT * FROM main.diceroll;

SELECT FLOOR(RANDOM()* 6 + 1) AS dice FROM generate_series(1,100)

SELECT
	AVG(CASE WHEN dice = 6 THEN 1 ELSE 0 END) AS avg_sixes
FROM
	(
	SELECT
		FLOOR(RANDOM()* 6 + 1) AS dice
	FROM
		generate_series(1,
		1000)) roll_number;

	-- Ju fler gånger man kastar tärningen desto mer konsekvent är tärningens chans att bli ett visst tal. (1/6)