CREATE TABLE IF NOT EXISTS diceroll (
	id INTEGER,
	result INTEGER
);

SELECT * FROM main.diceroll;

-- Resultatet av varje tärningskast 100 ggr
SELECT FLOOR(RANDOM()* 6 + 1) AS dice FROM generate_series(1,100)

-- Resultatet av hur många gånger man får en 6a i procent
SELECT
	AVG(CASE WHEN dice = 6 THEN 1 ELSE 0 END) AS avg_sixes
FROM
	(
	SELECT
		FLOOR(RANDOM()* 6 + 1) AS dice
	FROM
		generate_series(1,
		100000)) roll_number;

	-- Ju fler gånger man kastar tärningen desto mer konsekvent är tärningens chans att bli ett visst tal. (1/6)