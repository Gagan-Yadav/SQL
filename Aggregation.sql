-- Query the total population of all cities in CITY where District is California.
SELECT SUM(POPULATION) FROM CITY WHERE DISTRICT = "California";

-- Query the average population of all cities in CITY where District is California.
SELECT AVG(POPULATION) FROM CITY WHERE DISTRICT = "California";

-- Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT FLOOR(AVG(Population)) FROM City;

-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT SUM(Population) FROM City WHERE CountryCode='JPN';