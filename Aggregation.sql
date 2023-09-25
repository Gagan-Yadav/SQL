-- Query the total population of all cities in CITY where District is California.
SELECT SUM(POPULATION) FROM CITY WHERE DISTRICT = "California";

-- Query the average population of all cities in CITY where District is California.
SELECT AVG(POPULATION) FROM CITY WHERE DISTRICT = "California";

-- Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT FLOOR(AVG(Population)) FROM City;

-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT SUM(Population) FROM City WHERE CountryCode='JPN';

-- Query the difference between the maximum and minimum populations in CITY.
SELECT MAX(Population) - MIN(Population) FROM City;

-- Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, 
-- but did not realize her keyboard’s 0 key was broken until after completing the calculation. She wants your help 
-- finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.
-- Write a query calculating the amount of error (i.e.: average monthly salaries), and round it up to the next integer.
select ceil(avg(salary) - avg(replace(salary, '0', ''))) from employees;

-- Query the following two values from the STATION table:
-- The sum of all values in LAT_N rounded to a scale of  decimal places.
-- The sum of all values in LONG_W rounded to a scale of  decimal places.
SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2) FROM STATION;