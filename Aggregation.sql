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

-- Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard’s 0 key was broken until after 
-- completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.
-- Write a query calculating the amount of error (i.e.: average monthly salaries), and round it up to the next integer.
select ceil(avg(salary) - avg(replace(salary, '0', ''))) from employees;

-- Query the following two values from the STATION table:
-- The sum of all values in LAT_N rounded to a scale of  decimal places.
-- The sum of all values in LONG_W rounded to a scale of  decimal places.
SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2) FROM STATION;

-- Write a query to find the sum of the Northern Latitudes having values greater than 38.7880 and less than 137.2345 up to 4 decimal places.
SELECT ROUND(SUM(LAT_N),4) FROM STATION WHERE LAT_N BETWEEN 38.7880 AND 137.2345;

-- Write a query to find the greatest value of the Northern Latitudes less than 137.2345 up to 4 decimal places.
SELECT ROUND(MAX(LAT_N),4) FROM STATION WHERE LAT_N < 137.2345;

-- Write a query to find the corresponding Western Longitude value for the greatest value of the Northern Latitudes less than 137.2345 up to 4 decimal places.
SELECT ROUND(LONG_W,4) FROM STATION WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);

-- We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table.
-- Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.
select months*salary, count(*) from employee group by months*salary order by months*salary desc limit 1;

-- Query a count of the number of cities in CITY having a Population larger than 100,000.
SELECT COUNT(NAME) FROM CITY WHERE POPULATION > 100000;

-- Write a query to find the smallest value of the Northern Latitudes greater than 38.7780 up to 4 decimal places.
SELECT ROUND(MIN(LAT_N),4) FROM STATION WHERE LAT_N > 38.7780;


Select round(St.LAT_N,4) mediam from station St where (select count(Lat_N) from station where Lat_N < St.LAT_N ) = (select count(Lat_N) from station where Lat_N > St.LAT_N);