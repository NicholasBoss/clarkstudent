-- *********************************
-- W07 STUDENT SQL WORKBOOK
-- *********************************

-- *********************************
-- CRUD - DML
-- C = Create the Records (INSERT)
-- R = Read the Data (SELECT)
-- U = Update the Database (UPDATE)
-- D = Delete Data (DELETE)
-- *********************************

-- ***
-- C
-- ***

-- Do we need C this week?


-- ***
-- R
-- ***

-- Read (SELECT) may be all we need for this week
-- 1. SELECT all columns from the country table
-- 2. SELECT the name, population, and continent from the country table
-- 3. Filter the previous query by populations bigger than 800,000
-- 4. Switch the filter to only show countries from the Americas
-- 5. ORDER BY the population from greatest to least
-- 6. Switch the ORDER BY to use continent, then name
-- 7. What is DESC doing? What do we do to show the results in alphabetical order?
-- 8. Do the same queries as above without DESC. What do we find as the smallest
--    country in the Americas?
-- 9. Filter the query by population between 400,000 and 500,000
-- 10. ORDER BY population

-- 11. Select all city names that begin with 'Las'
-- 12. Add the CountryCode to tell which country those cities reside in
-- 13. SELECT all city names that end in 'gre'
-- 14. SELECT all city names with 'end' somewhere in them

-- 15. SELECT all country names, lifeExpectancy, and continent
--     WHERE LifeExpectancy IS NULL
-- 16. Modify the previous query to use: IS NOT NULL
-- 17. ORDER the previous query by LifeExpectancy
-- 18. Modify the previous query to find the country with the highest
--     LifeExpectancy
-- 19. What is the LifeExpectancy of the United States?
-- 20. Modify the previous query to find the LifeExpectancy of Germany and the US.
--     If we remove the ORDER BY statement, does it affect the query?

-- ***
-- U
-- ***




-- ***
-- D
-- ***

-- TODO change to WORLD DB - DONE
-- TODO add in DISTINCT queries
-- TODO REGEXP??
-- TODO show aliases?
-- TODO Use the Bike database to show calculations?




-- Outputs all columns from the table 'artwork'

-- Show me the first three pieces of artwork (title and period)
--  in alphabetical order


-- Show me all the different periods from the artwork 
-- (DISTINCT, only one of each - gets rid of repeats)


-- Show me the artwork from the artist with id #3


-- Show me artwork with the title's that start with A to I
     -- try < 'J' to get I's
-- What about Ia or I to Z

-- Show me the title of the artwork for the years 1800 to 1904
SELECT title, artyear
FROM artwork
WHERE artyear > 1800 AND artyear < 1904;
-- OR --- BETWEEN IS INCLUSIVE - uses the first and last number

-- Show me the artwork titles for the periods 'Modern' and 'Baroque'

-- Show me the titles and periods for the artwork that has the period having part of the word 'impr'

-- OR 
-- Use REGEXP now
SELECT title, period
FROM artwork
WHERE period REGEXP 'impr';

-- Show me the title and period of the artwork that begins with word 'Post'
SELECT title, period
FROM artwork
WHERE period REGEXP '^Post';

-- Show me the title and period of the artwork that ends with 'ism' for period
SELECT title, period
FROM artwork
WHERE period REGEXP 'ism$';

-- Show me the title of the artwork that begins with the word 'Old' (title)
SELECT title 
FROM artwork
WHERE title REGEXP '^Old';

-- Show me the title and period of the artwork that has 'the' 'in' or 'on' in the title
SELECT title
FROM artwork
WHERE title REGEXP 'the|in|on';

-- Show me the full name of an artist for those who have middle names and sort it by an Alias called Middle

-- can't use Middle for WHERE

-- From the bike database


-- Show me all of the records in the product table


-- Show me products, model years, and list price but display list price as the column 'Price' 
-- without editing the database and from the most expensive to least expensive 
 SELECT product_name, model_year, list_price AS Price
 FROM product
 ORDER by Price;

-- Show me products, model years, and list price 
-- but round it and display the column as 'Rounded Price' without editing the database
SELECT product_name, model_year, ROUND(list_price) AS 'Rounded Price'
FROM product;
 
-- Show me the products, model years, and list price and add $100 to each without editing the database 
SELECT product_name, model_year, list_price, list_price + 100
FROM product;

-- Show me products, model years, and list price and list the column as "price_adjustment"
-- and show me only the prices over $1000
SELECT product_name, list_price + 100 AS price_adjustment
FROM product
WHERE list_price + 100 > 1000   -- can't use price_adjustment here because of Order of Executuion
ORDER BY price_adjustment;     -- can use it here however

-- Show me the products and model year of the products that start with Trek or Surly
-- (but not from 2016)
SELECT product_name, model_year
FROM product
WHERE (product_name LIKE 'Trek%' OR product_name LIKE 'Surly%') AND NOT model_year = 2016;
-- change AND to OR and now you get other brands that are not 2016
-- Without the ()s is only takes off 2016s for Surly
-- OR with REGEX and another NOT <>
SELECT product_name, model_year
FROM product
WHERE (product_name REGEXP '^Trek' OR product_name REGEXP '^Surly') AND model_year <> 2016;