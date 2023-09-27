-- Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT Country.Continent, FLOOR(AVG(City.Population)) FROM Country, City  WHERE Country.Code = City.CountryCode  GROUP BY Country.Continent ;

-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT SUM(City.Population) FROM City, Country WHERE City.CountryCode = Country.Code AND Continent = 'Asia';