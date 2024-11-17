SELECT
	(COUNT(*) FILTER (
WHERE
	final_price > 10000000) * 100.0 / COUNT(*)) AS percentage_over_10_million
FROM
	main.hemnet_data;
	