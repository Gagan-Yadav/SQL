City

+-------------+----------+
| Field       | Type     |
+-------------+----------+
| ID          | int(11)  |
| Name        | char(35) |
| CountryCode | char(3)  |
| District    | char(20) |
| Population  | int(11)  |
+-------------+----------+
Country

+----------------+-------------+
| Field          | Type        |
+----------------+-------------+
| Code           | char(3)     |
| Name           | char(52)    |
| Continent      | char(50)    |
| Region         | char(26)    |
| SurfaceArea    | float(10,2) |
| IndepYear      | smallint(6) |
| Population     | int(11)     |
| LifeExpectancy | float(3,1)  |
| GNP            | float(10,2) |
| GNPOld         | float(10,2) |
| LocalName      | char(45)    |
| GovernmentForm | char(45)    |
| HeadOfState    | char(60)    |
| Capital        | int(11)     |
| Code2          | char(2)     |
+----------------+-------------+
PS: City.CountryCode and Country.Code is same key.


-- Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT Country.Continent, FLOOR(AVG(City.Population)) FROM Country, City  WHERE Country.Code = City.CountryCode  GROUP BY Country.Continent ;

-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT SUM(City.Population) FROM City, Country WHERE City.CountryCode = Country.Code AND Continent = 'Asia';

-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT City.Name FROM City, Country WHERE City.CountryCode = Country.Code AND Continent = 'Africa' ;