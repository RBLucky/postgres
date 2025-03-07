--1
CREATE TABLE
    movies (id INT, movie VARCHAR(50), actor VARCHAR(50));

COPY movies (id, movie, actor)
FROM
    'C:\YourDirectory\imaginary_text_file.txt'
WITH
    (FORMAT CSV, DELIMITER ':', HEADER);

--2
COPY (
    SELECT
        geo_name,
        state_us_abbreviation
    FROM
        us_counties_2010
    WHERE
        geo_name ILIKE '%mill%'
) TO 'C:\YourDirectory\us_counties_mill_export.txt'
WITH
    (FORMAT CSV, HEADER, DELIMITER '|');

--QUESTION 3
--Using a column wouldn’t be ideal. The numeric data type allows for only three digits in total, with eight decimal places.
--This limitation makes it unsuitable for storing larger values.