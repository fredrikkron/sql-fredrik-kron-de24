SELECT
	*
FROM
	main.hemnet_data
ORDER BY
	final_price DESC
LIMIT 5;

SELECT
	address,
	commune,
	final_price
FROM
	main.hemnet_data
ORDER BY
	final_price DESC
LIMIT 5;

-- explore rooms

SELECT
	rooms,
	area,
	final_price
FROM
	main.hemnet_data
WHERE
	rooms <= 3;