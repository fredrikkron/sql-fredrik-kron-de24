-- UNION combine sets, all unique elements
SELECT * FROM synthetic.sales_jan
UNION
SELECT * FROM synthetic.sales_feb;

-- removed duplicate
SELECT * EXCLUDE(sale_date) FROM synthetic.sales_jan
UNION
SELECT * EXCLUDE(sale_date) FROM synthetic.sales_feb;

-- keeps all, including duplicates
SELECT * EXCLUDE(sale_date) FROM synthetic.sales_jan
UNION ALL
SELECT * EXCLUDE(sale_date) FROM synthetic.sales_feb;

-- only the ones that are common(equal)
SELECT * FROM synthetic.sales_jan
INTERSECT
SELECT * FROM synthetic.sales_feb;

-- to get the common ones in this db
SELECT product_name, amount FROM synthetic.sales_jan
INTERSECT
SELECT product_name, amount FROM synthetic.sales_feb;

-- EXCEPT = first set - second set
SELECT product_name, amount FROM synthetic.sales_jan
EXCEPT
SELECT product_name, amount FROM synthetic.sales_feb;
