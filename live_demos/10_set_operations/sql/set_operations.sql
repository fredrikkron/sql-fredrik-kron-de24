-- UNION - combine sets, all unique elements
SELECT * FROM synthetic.sales_jan
UNION
SELECT * FROM synthetic.sales_feb;

-- removed monitor because now the 2 rows with monitor are duplicate
SELECT product_name, amount FROM synthetic.sales_jan
UNION
SELECT product_name, amount FROM synthetic.sales_feb;

-- another way in this example to remove duplicate
SELECT * EXCLUDE(sale_date) FROM synthetic.sales_jan
UNION
SELECT * EXCLUDE(sale_date) FROM synthetic.sales_feb;

-- UNION ALL - keeps all, including duplicates
SELECT * EXCLUDE(sale_date) FROM synthetic.sales_jan
UNION ALL
SELECT * EXCLUDE(sale_date) FROM synthetic.sales_feb;

-- INTERSECT - only the ones that are common(equal) --> empty set because dates are different in monitor
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
