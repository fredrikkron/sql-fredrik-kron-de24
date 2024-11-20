CREATE TABLE
    IF NOT EXISTS explore_data AS (
        SELECT
            *
        FROM
            read_csv_auto ('data/salaries.csv')
    );