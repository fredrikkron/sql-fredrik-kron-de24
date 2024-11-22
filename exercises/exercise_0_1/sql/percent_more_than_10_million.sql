SELECT
	(COUNT(*) FILTER (
WHERE
	final_price > 10000000) * 100.0 / COUNT(*)) AS percentage_over_10_million
FROM
	main.hemnet_data;

SELECT
	COUNT(*) / 500 * 100 AS percent_over_10M
FROM
	main.hemnet_data
WHERE
	final_price > 10000000;
	